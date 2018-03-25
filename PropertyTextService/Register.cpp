//////////////////////////////////////////////////////////////////////
//
//  THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
//  ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED
//  TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
//  PARTICULAR PURPOSE.
//
//  Copyright (C) 2003  Microsoft Corporation.  All rights reserved.
//
//  Register.cpp
//
//          Server registration code.
//
//////////////////////////////////////////////////////////////////////

#include <windows.h>
#include <ole2.h>
#include "msctf.h"
#include "globals.h"

#define CLSID_STRLEN 38  // strlen("{xxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx}")

static const TCHAR c_szInfoKeyPrefix[] = TEXT("CLSID\\");
static const TCHAR c_szInProcSvr32[] = TEXT("InProcServer32");
static const TCHAR c_szModelName[] = TEXT("ThreadingModel");

//+---------------------------------------------------------------------------
//
//  RegisterProfiles
//
//----------------------------------------------------------------------------

BOOL RegisterProfiles()
{
    ITfInputProcessorProfiles *pInputProcessProfiles;
    WCHAR achIconFile[MAX_PATH];
    char achFileNameA[MAX_PATH];
    DWORD cchA;
    int cchIconFile;
    HRESULT hr;

    hr = CoCreateInstance(CLSID_TF_InputProcessorProfiles, NULL, CLSCTX_INPROC_SERVER,
                          IID_ITfInputProcessorProfiles, (void**)&pInputProcessProfiles);

    if (hr != S_OK)
        return E_FAIL;

    hr = pInputProcessProfiles->Register(c_clsidTextService);

    if (hr != S_OK)
        goto Exit;

    cchA = GetModuleFileNameA(g_hInst, achFileNameA, ARRAYSIZE(achFileNameA));

    cchIconFile = MultiByteToWideChar(CP_ACP, 0, achFileNameA, cchA, achIconFile, ARRAYSIZE(achIconFile)-1);
    achIconFile[cchIconFile] = '\0';

    hr = pInputProcessProfiles->AddLanguageProfile(c_clsidTextService,
                                  TEXTSERVICE_LANGID, 
                                  c_guidProfile, 
                                  TEXTSERVICE_DESC, 
                                  (ULONG)wcslen(TEXTSERVICE_DESC),
                                  achIconFile,
                                  cchIconFile,
                                  TEXTSERVICE_ICON_INDEX);

Exit:
    pInputProcessProfiles->Release();
    return (hr == S_OK);
}

//+---------------------------------------------------------------------------
//
//  UnregisterProfiles
//
//----------------------------------------------------------------------------

void UnregisterProfiles()
{
    ITfInputProcessorProfiles *pInputProcessProfiles;
    HRESULT hr;

    hr = CoCreateInstance(CLSID_TF_InputProcessorProfiles, NULL, CLSCTX_INPROC_SERVER,
                          IID_ITfInputProcessorProfiles, (void**)&pInputProcessProfiles);

    if (hr != S_OK)
        return;

    pInputProcessProfiles->Unregister(c_clsidTextService);
    pInputProcessProfiles->Release();
}

//+---------------------------------------------------------------------------
//
//  RegisterCategories
//
//----------------------------------------------------------------------------

BOOL RegisterCategories()
{
    ITfCategoryMgr *pCategoryMgr;
    HRESULT hr;

    hr = CoCreateInstance(CLSID_TF_CategoryMgr, NULL, CLSCTX_INPROC_SERVER, 
                          IID_ITfCategoryMgr, (void**)&pCategoryMgr);

    if (hr != S_OK)
        return FALSE;

    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_PROPSTYLE_CUSTOM,
                                        c_guidPropCustom);

    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_PROPSTYLE_STATIC,
                                        c_guidPropStatic);

    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_PROPSTYLE_STATICCOMPACT,
                                        c_guidPropStaticCompact);


    pCategoryMgr->Release();
    return (hr == S_OK);
}

//+---------------------------------------------------------------------------
//
//  UnregisterCategories
//
//----------------------------------------------------------------------------

void UnregisterCategories()
{
    ITfCategoryMgr *pCategoryMgr;
    HRESULT hr;

    hr = CoCreateInstance(CLSID_TF_CategoryMgr, NULL, CLSCTX_INPROC_SERVER, 
                          IID_ITfCategoryMgr, (void**)&pCategoryMgr);

    if (hr != S_OK)
        return;


    pCategoryMgr->UnregisterCategory(c_clsidTextService,
                                   GUID_TFCAT_PROPSTYLE_CUSTOM,
                                   c_guidPropCustom);

    pCategoryMgr->UnregisterCategory(c_clsidTextService,
                                   GUID_TFCAT_PROPSTYLE_STATIC,
                                   c_guidPropStatic);

    pCategoryMgr->UnregisterCategory(c_clsidTextService,
                                   GUID_TFCAT_PROPSTYLE_STATICCOMPACT,
                                   c_guidPropStaticCompact);


    pCategoryMgr->Release();
    return;
}

//+---------------------------------------------------------------------------
//
// CLSIDToStringA
//
//----------------------------------------------------------------------------

BOOL CLSIDToStringA(REFGUID refGUID, char *pchA)
{
    static const BYTE GuidMap[] = {3, 2, 1, 0, '-', 5, 4, '-', 7, 6, '-',
                                   8, 9, '-', 10, 11, 12, 13, 14, 15};

    static const char szDigits[] = "0123456789ABCDEF";

    int i;
    char *p = pchA;

    const BYTE * pBytes = (const BYTE *) &refGUID;

    *p++ = '{';
    for (i = 0; i < sizeof(GuidMap); i++)
    {
        if (GuidMap[i] == '-')
        {
            *p++ = '-';
        }
        else
        {
            *p++ = szDigits[ (pBytes[GuidMap[i]] & 0xF0) >> 4 ];
            *p++ = szDigits[ (pBytes[GuidMap[i]] & 0x0F) ];
        }
    }

    *p++ = '}';
    *p   = '\0';

    return TRUE;
}

//+---------------------------------------------------------------------------
//
// RecurseDeleteKey
//
// RecurseDeleteKey is necessary because on NT RegDeleteKey doesn't work if the
// specified key has subkeys
//----------------------------------------------------------------------------
LONG RecurseDeleteKey(HKEY hParentKey, LPCTSTR lpszKey)
{
    HKEY hKey;
    LONG lRes;
    FILETIME time;
    TCHAR szBuffer[256];
    DWORD dwSize = ARRAYSIZE(szBuffer);

    if (RegOpenKey(hParentKey, lpszKey, &hKey) != ERROR_SUCCESS)
        return ERROR_SUCCESS; // let's assume it couldn't be opened because it's not there

    lRes = ERROR_SUCCESS;
    while (RegEnumKeyEx(hKey, 0, szBuffer, &dwSize, NULL, NULL, NULL, &time)==ERROR_SUCCESS)
    {
        szBuffer[ARRAYSIZE(szBuffer)-1] = '\0';
        lRes = RecurseDeleteKey(hKey, szBuffer);
        if (lRes != ERROR_SUCCESS)
            break;
        dwSize = ARRAYSIZE(szBuffer);
    }
    RegCloseKey(hKey);

    return lRes == ERROR_SUCCESS ? RegDeleteKey(hParentKey, lpszKey) : lRes;
}

//+---------------------------------------------------------------------------
//
//  RegisterServer
//
//----------------------------------------------------------------------------

BOOL RegisterServer()
{
    DWORD dw;
    HKEY hKey;
    HKEY hSubKey;
    BOOL fRet;
    TCHAR achIMEKey[ARRAYSIZE(c_szInfoKeyPrefix) + CLSID_STRLEN];
    TCHAR achFileName[MAX_PATH];

    if (!CLSIDToStringA(c_clsidTextService, achIMEKey + ARRAYSIZE(c_szInfoKeyPrefix) - 1))
        return FALSE;
    memcpy(achIMEKey, c_szInfoKeyPrefix, sizeof(c_szInfoKeyPrefix)-sizeof(TCHAR));

    if (fRet = RegCreateKeyEx(HKEY_CLASSES_ROOT, achIMEKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &hKey, &dw)
            == ERROR_SUCCESS)
    {
        fRet &= RegSetValueEx(hKey, NULL, 0, REG_SZ, (BYTE *)TEXTSERVICE_DESC_A, (lstrlen(TEXTSERVICE_DESC_A)+1)*sizeof(TCHAR))
            == ERROR_SUCCESS;

        if (fRet &= RegCreateKeyEx(hKey, c_szInProcSvr32, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &hSubKey, &dw)
            == ERROR_SUCCESS)
        {
            dw = GetModuleFileNameA(g_hInst, achFileName, ARRAYSIZE(achFileName));

            fRet &= RegSetValueEx(hSubKey, NULL, 0, REG_SZ, (BYTE *)achFileName, (lstrlen(achFileName)+1)*sizeof(TCHAR)) == ERROR_SUCCESS;
            fRet &= RegSetValueEx(hSubKey, c_szModelName, 0, REG_SZ, (BYTE *)TEXTSERVICE_MODEL, (lstrlen(TEXTSERVICE_MODEL)+1)*sizeof(TCHAR)) == ERROR_SUCCESS;
            RegCloseKey(hSubKey);
        }
        RegCloseKey(hKey);
    }

    return fRet;
}

//+---------------------------------------------------------------------------
//
//  UnregisterServer
//
//----------------------------------------------------------------------------

void UnregisterServer()
{
    TCHAR achIMEKey[ARRAYSIZE(c_szInfoKeyPrefix) + CLSID_STRLEN];

    if (!CLSIDToStringA(c_clsidTextService, achIMEKey + ARRAYSIZE(c_szInfoKeyPrefix) - 1))
        return;
    memcpy(achIMEKey, c_szInfoKeyPrefix, sizeof(c_szInfoKeyPrefix)-sizeof(TCHAR));

    RecurseDeleteKey(HKEY_CLASSES_ROOT, achIMEKey);
}
