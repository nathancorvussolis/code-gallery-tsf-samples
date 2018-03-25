//////////////////////////////////////////////////////////////////////
//
//  THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
//  ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED
//  TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
//  PARTICULAR PURPOSE.
//
//  Copyright (C) 2003  Microsoft Corporation.  All rights reserved.
//
//  Globals.h
//
//          Global variable declarations.
//
//////////////////////////////////////////////////////////////////////

#ifndef GLOBALS_H
#define GLOBALS_H

#include <windows.h>
#include <ole2.h>
#include <olectl.h>
#include <assert.h>
#include "msctf.h"

void DllAddRef();
void DllRelease();

#define ARRAYSIZE(a) (sizeof(a)/sizeof(a[0]))

#define TEXTSERVICE_LANGID    MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US)

#define TEXTSERVICE_DESC    L"Sample Text Service"
#define TEXTSERVICE_DESC_A   "Sample Text Service"
#define TEXTSERVICE_MODEL   TEXT("Apartment")

#define TEXTSERVICE_ICON_INDEX  0

extern HINSTANCE g_hInst;

extern LONG g_cRefDll;

extern CRITICAL_SECTION g_cs;

extern const CLSID c_clsidTextService;

extern const GUID c_guidProfile;


#endif // GLOBALS_H
