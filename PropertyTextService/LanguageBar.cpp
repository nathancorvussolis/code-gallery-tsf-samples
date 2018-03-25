//////////////////////////////////////////////////////////////////////
//
//  THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
//  ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED
//  TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
//  PARTICULAR PURPOSE.
//
//  Copyright (C) 2003  Microsoft Corporation.  All rights reserved.
//
//  LanguageBar.cpp
//
//          Language Bar UI code.
//
//////////////////////////////////////////////////////////////////////

#include "Globals.h"
#include "TextService.h"
#include "Resource.h"

//
// The cookie for the sink to CLangBarItemButton.
//
#define TEXTSERVICE_LANGBARITEMSINK_COOKIE 0x0fab0fab

//
// The ids of the menu item of the language bar button.
//
#define MENUITEM_INDEX_STATICCOMPACT  0
#define MENUITEM_INDEX_STATICCOMPACT0 1
#define MENUITEM_INDEX_STATICCOMPACT1 2
#define MENUITEM_INDEX_STATIC         3
#define MENUITEM_INDEX_STATIC0        4
#define MENUITEM_INDEX_STATIC1        5
#define MENUITEM_INDEX_CUSTOM         6

//
// The descriptions of the menu item of the language bar button.
//
static WCHAR c_szMenuItemDescriptionStaticCompact[] = L"Attach Static Compact Property to selection";
static WCHAR c_szMenuItemDescriptionStaticCompact0[] = L"Value 0";
static WCHAR c_szMenuItemDescriptionStaticCompact1[] = L"Value 1";
static WCHAR c_szMenuItemDescriptionStatic[] = L"Attach Static Property to selection";
static WCHAR c_szMenuItemDescriptionStatic0[] = L"Value String1";
static WCHAR c_szMenuItemDescriptionStatic1[] = L"Value String2";
static WCHAR c_szMenuItemDescriptionCustom[] = L"Attach Cutsom Property to selection";

//+---------------------------------------------------------------------------
//
// CLangBarItemButton class
//
//----------------------------------------------------------------------------

class CLangBarItemButton : public ITfLangBarItemButton,
                           public ITfSource
{
public:
    CLangBarItemButton(CTextService *pTextService);
    ~CLangBarItemButton();

    // IUnknown
    STDMETHODIMP QueryInterface(REFIID riid, void **ppvObj);
    STDMETHODIMP_(ULONG) AddRef(void);
    STDMETHODIMP_(ULONG) Release(void);

    // ITfLangBarItem
    STDMETHODIMP GetInfo(TF_LANGBARITEMINFO *pInfo);
    STDMETHODIMP GetStatus(DWORD *pdwStatus);
    STDMETHODIMP Show(BOOL fShow);
    STDMETHODIMP GetTooltipString(BSTR *pbstrToolTip);

    // ITfLangBarItemButton
    STDMETHODIMP OnClick(TfLBIClick click, POINT pt, const RECT *prcArea);
    STDMETHODIMP InitMenu(ITfMenu *pMenu);
    STDMETHODIMP OnMenuSelect(UINT wID);
    STDMETHODIMP GetIcon(HICON *phIcon);
    STDMETHODIMP GetText(BSTR *pbstrText);

    // ITfSource
    STDMETHODIMP AdviseSink(REFIID riid, IUnknown *punk, DWORD *pdwCookie);
    STDMETHODIMP UnadviseSink(DWORD dwCookie);

private:
    ITfLangBarItemSink *_pLangBarItemSink;
    TF_LANGBARITEMINFO _tfLangBarItemInfo;

    CTextService *_pTextService;
    LONG _cRef;
};

//+---------------------------------------------------------------------------
//
// ctor
//
//----------------------------------------------------------------------------

CLangBarItemButton::CLangBarItemButton(CTextService *pTextService)
{
    DllAddRef();

    //
    // initialize TF_LANGBARITEMINFO structure.
    //
    _tfLangBarItemInfo.clsidService = c_clsidTextService;    // This LangBarItem belongs to this TextService.
    _tfLangBarItemInfo.guidItem = c_guidLangBarItemButton;   // GUID of this LangBarItem.
    _tfLangBarItemInfo.dwStyle = TF_LBI_STYLE_BTN_MENU;      // This LangBar is a button type with a menu.
    _tfLangBarItemInfo.ulSort = 0;                           // The position of this LangBar Item is not specified.
    SafeStringCopy(_tfLangBarItemInfo.szDescription, ARRAYSIZE(_tfLangBarItemInfo.szDescription), LANGBAR_ITEM_DESC);                        // Set the description of this LangBar Item.

    // Initialize the sink pointer to NULL.
    _pLangBarItemSink = NULL;

    _pTextService = pTextService;
    _pTextService->AddRef();
    _cRef = 1;
}

//+---------------------------------------------------------------------------
//
// dtor
//
//----------------------------------------------------------------------------

CLangBarItemButton::~CLangBarItemButton()
{
    _pTextService->Release();
    DllRelease();
}

//+---------------------------------------------------------------------------
//
// QueryInterface
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::QueryInterface(REFIID riid, void **ppvObj)
{
    if (ppvObj == NULL)
        return E_INVALIDARG;

    *ppvObj = NULL;

    if (IsEqualIID(riid, IID_IUnknown) ||
        IsEqualIID(riid, IID_ITfLangBarItem) ||
        IsEqualIID(riid, IID_ITfLangBarItemButton))
    {
        *ppvObj = (ITfLangBarItemButton *)this;
    }
    else if (IsEqualIID(riid, IID_ITfSource))
    {
        *ppvObj = (ITfSource *)this;
    }

    if (*ppvObj)
    {
        AddRef();
        return S_OK;
    }

    return E_NOINTERFACE;
}


//+---------------------------------------------------------------------------
//
// AddRef
//
//----------------------------------------------------------------------------

STDAPI_(ULONG) CLangBarItemButton::AddRef()
{
    return ++_cRef;
}

//+---------------------------------------------------------------------------
//
// Release
//
//----------------------------------------------------------------------------

STDAPI_(ULONG) CLangBarItemButton::Release()
{
    LONG cr = --_cRef;

    assert(_cRef >= 0);

    if (_cRef == 0)
    {
        delete this;
    }

    return cr;
}

//+---------------------------------------------------------------------------
//
// GetInfo
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::GetInfo(TF_LANGBARITEMINFO *pInfo)
{
    *pInfo = _tfLangBarItemInfo;
    return S_OK;
}

//+---------------------------------------------------------------------------
//
// GetStatus
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::GetStatus(DWORD *pdwStatus)
{
    *pdwStatus = 0;
    return S_OK;
}

//+---------------------------------------------------------------------------
//
// Show
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::Show(BOOL fShow)
{
    return E_NOTIMPL;
}

//+---------------------------------------------------------------------------
//
// GetTooltipString
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::GetTooltipString(BSTR *pbstrToolTip)
{
    *pbstrToolTip = SysAllocString(LANGBAR_ITEM_DESC);

    return (*pbstrToolTip == NULL) ? E_OUTOFMEMORY : S_OK;
}

//+---------------------------------------------------------------------------
//
// OnClick
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::OnClick(TfLBIClick click, POINT pt, const RECT *prcArea)
{
    return S_OK;
}

//+---------------------------------------------------------------------------
//
// InitMenu
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::InitMenu(ITfMenu *pMenu)
{
    // 
    // Add the fisrt menu item.
    // 
    ITfMenu *pSubMenu;
    pSubMenu = NULL;
    pMenu->AddMenuItem((UINT)-1,
                       TF_LBMENUF_SUBMENU,
                       NULL, 
                       NULL, 
                       c_szMenuItemDescriptionStaticCompact, 
                       (ULONG)wcslen(c_szMenuItemDescriptionStaticCompact), 
                       &pSubMenu);

    if (pSubMenu)
    {
        pSubMenu->AddMenuItem(MENUITEM_INDEX_STATICCOMPACT0,
                              0,
                              NULL, 
                              NULL, 
                              c_szMenuItemDescriptionStaticCompact0, 
                              (ULONG)wcslen(c_szMenuItemDescriptionStaticCompact0), 
                              NULL);

        pSubMenu->AddMenuItem(MENUITEM_INDEX_STATICCOMPACT1,
                              0,
                              NULL, 
                              NULL, 
                              c_szMenuItemDescriptionStaticCompact1, 
                              (ULONG)wcslen(c_szMenuItemDescriptionStaticCompact1), 
                              NULL);

        pSubMenu->Release();
    }

    // 
    // Add the second menu item.
    // 
    pSubMenu = NULL;
    pMenu->AddMenuItem(MENUITEM_INDEX_STATIC,
                       TF_LBMENUF_SUBMENU,
                       NULL, 
                       NULL, 
                       c_szMenuItemDescriptionStatic, 
                       (ULONG)wcslen(c_szMenuItemDescriptionStatic), 
                       &pSubMenu);
    if (pSubMenu)
    {
        pSubMenu->AddMenuItem(MENUITEM_INDEX_STATIC0,
                              0,
                              NULL, 
                              NULL, 
                              c_szMenuItemDescriptionStatic0, 
                              (ULONG)wcslen(c_szMenuItemDescriptionStatic0), 
                              NULL);

        pSubMenu->AddMenuItem(MENUITEM_INDEX_STATIC1,
                              0,
                              NULL, 
                              NULL, 
                              c_szMenuItemDescriptionStatic1, 
                              (ULONG)wcslen(c_szMenuItemDescriptionStatic1), 
                              NULL);

        pSubMenu->Release();
    }

    // 
    // Add the third menu item.
    // 
    pMenu->AddMenuItem(MENUITEM_INDEX_CUSTOM,
                       0, 
                       NULL, 
                       NULL, 
                       c_szMenuItemDescriptionCustom, 
                       (ULONG)wcslen(c_szMenuItemDescriptionCustom), 
                       NULL);


    return S_OK;
}

//+---------------------------------------------------------------------------
//
// OnMenuSelect
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::OnMenuSelect(UINT wID)
{
    //
    // This is callback when the menu item is selected.
    //
    switch (wID)
    {
        case MENUITEM_INDEX_STATICCOMPACT0:
            _pTextService->_AttachStaticCompactProperty(0);
            break;

        case MENUITEM_INDEX_STATICCOMPACT1:
            _pTextService->_AttachStaticCompactProperty(1);
            break;

        case MENUITEM_INDEX_STATIC0:
            _pTextService->_AttachStaticProperty(L"String 1");
            break;

        case MENUITEM_INDEX_STATIC1:
            _pTextService->_AttachStaticProperty(L"String 2");
            break;

        case MENUITEM_INDEX_CUSTOM:
            _pTextService->_AttachCustomProperty();
            break;
    }

    return S_OK;
}

//+---------------------------------------------------------------------------
//
// GetIcon
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::GetIcon(HICON *phIcon)
{
    *phIcon = (HICON)LoadImage(g_hInst, TEXT("IDI_TEXTSERVICE"), IMAGE_ICON, 16, 16, 0);
 
    return (*phIcon != NULL) ? S_OK : E_FAIL;
}

//+---------------------------------------------------------------------------
//
// GetText
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::GetText(BSTR *pbstrText)
{
    *pbstrText = SysAllocString(LANGBAR_ITEM_DESC);

    return (*pbstrText == NULL) ? E_OUTOFMEMORY : S_OK;
}

//+---------------------------------------------------------------------------
//
// AdviseSink
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::AdviseSink(REFIID riid, IUnknown *punk, DWORD *pdwCookie)
{
    //
    // Allow only ITfLangBarItemSink interface.
    //
    if (!IsEqualIID(IID_ITfLangBarItemSink, riid))
        return CONNECT_E_CANNOTCONNECT;

    //
    // Support only one sink.
    //
    if (_pLangBarItemSink != NULL)
        return CONNECT_E_ADVISELIMIT;

    //
    // Query the ITfLangBarItemSink interface and store it into _pLangBarItemSink.
    //
    if (punk->QueryInterface(IID_ITfLangBarItemSink, (void **)&_pLangBarItemSink) != S_OK)
    {
        _pLangBarItemSink = NULL;
        return E_NOINTERFACE;
    }

    //
    // return our cookie.
    //
    *pdwCookie = TEXTSERVICE_LANGBARITEMSINK_COOKIE;
    return S_OK;
}

//+---------------------------------------------------------------------------
//
// UnadviseSink
//
//----------------------------------------------------------------------------

STDAPI CLangBarItemButton::UnadviseSink(DWORD dwCookie)
{
    // 
    // Check the given cookie.
    // 
    if (dwCookie != TEXTSERVICE_LANGBARITEMSINK_COOKIE)
        return CONNECT_E_NOCONNECTION;

    //
    // If there is nno connected sink, just fail.
    //
    if (_pLangBarItemSink == NULL)
        return CONNECT_E_NOCONNECTION;

    _pLangBarItemSink->Release();
    _pLangBarItemSink = NULL;

    return S_OK;
}

//+---------------------------------------------------------------------------
//
// _InitLanguageBar
//
//----------------------------------------------------------------------------

BOOL CTextService::_InitLanguageBar()
{
    ITfLangBarItemMgr *pLangBarItemMgr;
    BOOL fRet;

    if (_pThreadMgr->QueryInterface(IID_ITfLangBarItemMgr, (void **)&pLangBarItemMgr) != S_OK)
        return FALSE;

    fRet = FALSE;

    if ((_pLangBarItem = new CLangBarItemButton(this)) == NULL)
        goto Exit;

    if (pLangBarItemMgr->AddItem(_pLangBarItem) != S_OK)
    {
        _pLangBarItem->Release();
        _pLangBarItem = NULL;
        goto Exit;
    }

    fRet = TRUE;

Exit:
    pLangBarItemMgr->Release();
    return fRet;
}

//+---------------------------------------------------------------------------
//
// _UninitLanguageBar
//
//----------------------------------------------------------------------------

void CTextService::_UninitLanguageBar()
{
    ITfLangBarItemMgr *pLangBarItemMgr;

    if (_pLangBarItem == NULL)
        return;

    if (_pThreadMgr->QueryInterface(IID_ITfLangBarItemMgr, (void **)&pLangBarItemMgr) == S_OK)
    {
        pLangBarItemMgr->RemoveItem(_pLangBarItem);
        pLangBarItemMgr->Release();
    }

    _pLangBarItem->Release();
    _pLangBarItem = NULL;
}
