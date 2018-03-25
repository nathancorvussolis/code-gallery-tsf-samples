-----------------------------------------------
Text Service with Keyboard Functionality (Sample 6 of 9)
(c) Microsoft Corporation, 2003. All rights reserved.

-----------------------------------------------
How to Use This Document
-----------------------------------------------

To view the Readme file on-screen in Windows Notepad,
maximize the Notepad window. On the Edit menu, click Word
Wrap. To print the Readme file, open it in Notepad
or another word processor, and then use the Print command
on the File menu.

-----------------------------------------------
File List
-----------------------------------------------
The following files are part of this sample download:

1.Compartment.cpp
2.DllMain.cpp 
3.Globals.cpp
4.globals.h
5.KeyEventSink.cpp
6.LanguageBar.cpp
7.makefile
8.PreComp.cpp
9.Register.cpp
10.Resource.h
11.Server.cpp
12.TextEditSink.cpp
13.TextService.cpp
14.TextService.def
15.TextService.h
16.TextService.ico
17.TextService.rc
18.ThreadMgrEventSink.cpp

 
-----------------------------------------------
Description
-----------------------------------------------

This sample is the sixth in a series of nine samples that guide you through the creation of a text service. This sample is a text service with keyboard functionality. Each sample in the series adds functionality to the previous sample.

-----------------------------------------------
More Details
-----------------------------------------------
Microsoft Windows Text Services Framework (TSF) provides a simple and scalable framework for the delivery of advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.

-----------------------------------------------
Browser/Platform Compatibility and other Requirements
-----------------------------------------------
Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.

Text Services Framework runs on the Microsoft Windows XP operating system. It is available as a redistributable for Microsoft Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.

The sample also requires Visual Studio and the Core SDK of the Microsoft Platform SDK.

-----------------------------------------------
Usage
-----------------------------------------------
To begin to enable keyboard functionality in the text service, complete the following steps. 
1.Add the Japanese language profile. 
2.Categorize the text service. 
3.Add keyboard-related compartments. 
4.Implement the ITfKeyEventSink interface. 
5.Implement the ITfKeystrokeMgr interface. 
6.Change the language bar item. 
7.Register the text service. 

-----------------------------------------------
Add the Japanese Language Profile
-----------------------------------------------
This sample uses the Japanese language profile, by defining the TEXTSERVICE_LANGID in Globals.h, as in the following example. This language identifier is used by the RegisterProfiles method in Register.cpp. 

#define TEXTSERVICE_LANGID    MAKELANGID(LANG_JAPANESE, SUBLANG_DEFAULT)

TSF is language neutral, so you could use any language profile you want. For instance, you could change the language profile to Simplified Chinese, using the following example. 

#define TEXTSERVICE_LANGID    MAKELANGID(LANG_CHINESE, SUBLANG_CHINESE_SIMPLIFIED)

You could also use the US English language profile, using the following example. 

#define TEXTSERVICE_LANGID    MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US)

-----------------------------------------------
Categorize the Text Service
-----------------------------------------------
To be recognized as a keyboard text service by TSF, the CLSID of text service must be have a category value of GUID_TFCAT_TIP_KEYBOARD. Call the ITfCategoryMgr::RegisterCategory method to create the appropriate category for the text service. In the following example from the RegisterCategories method in Register.cpp, CoCreateInstance is called to create an instance of the category manager object and to receive a pointer to the ITfCategoryMgr interface. 

BOOL RegisterCategories()
{
    ITfCategoryMgr *pCategoryMgr;
    HRESULT hr;
 
    hr = CoCreateInstance(CLSID_TF_CategoryMgr, NULL, CLSCTX_INPROC_SERVER,
                          IID_ITfCategoryMgr, (void**)&pCategoryMgr);
 
    if (hr != S_OK)
        return FALSE;
 
    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_TIP_KEYBOARD,
                                        c_clsidTextService);
 
    pCategoryMgr->Release();
    return (hr == S_OK);
}
-----------------------------------------------
Add Keyboard-related Compartments
-----------------------------------------------
A text service that has a keyboard requires the following compartments. For more information these values, see Predefined Compartments. 

Compartment                         Description 
GUID_COMPARTMENT_KEYBOARD_DISABLED  The compartment that is specific to a edit context.
                                    If the value is not zero, the keyboard is disabled.
 
GUID_COMPARTMENT_KEYBOARD_OPENCLOSE The compartment that is specific to a thread                                                                   manager.If this value is not zero, the keyboard is in open status.
 

The CTextService::_IsKeyboardDisabled method in Compartment.cpp determines the status of the keyboard. There must be a document manager in order for the keyboard text service to work, so the method first checks for a NULL document manager, as in the following example. 

if ((_pThreadMgr->GetFocus(&pDocMgrFocus) != S_OK) ||
    (pDocMgrFocus == NULL))
{
    // if there is no focus document manager object, the keyboard 
    // is disabled.
    fDisabled = TRUE;
    goto Exit;
}
In addition to a document manager, the keyboard text service requires a valid edit context. The following example checks for a NULL edit context. 

if ((pDocMgrFocus->GetTop(&pContext) != S_OK) ||
    (pContext == NULL))
{
    // if there is no context object, the keyboard is disabled.
    fDisabled = TRUE;
    goto Exit;
}
If valid document manager and edit context are found, call QueryInterface on the edit context to get a pointer to ITfCompartmentMgr interface, as in the following example. 

ITfCompartmentMgr *pCompMgr = NULL;
if (pContext->QueryInterface(IID_ITfCompartmentMgr, (void **)&pCompMgr) == S_OK)
{
Using the pointer to the ITfCompartmentMgr interface, call the ITfCompartmentMgr::GetCompartment method to check for the value of GUID_COMPARTMENT_KEYBOARD_DISABLED, as in the following example. For more information on GUID_COMPARTMENT_KEYBOARD_DISABLED and other compartment values, see Predefined Compartments. 

ITfCompartment *pCompartmentDisabled;
 
if (pCompMgr->GetCompartment(GUID_COMPARTMENT_KEYBOARD_DISABLED, &pCompartmentDisabled) == S_OK)
{
    VARIANT var;
    if (S_OK == pCompartmentDisabled->GetValue(&var))
    {
        if (var.vt == VT_I4) // Even VT_EMPTY, GetValue() can succeed
        {
            fDisabled = (BOOL)var.lVal;
        }
    }
    pCompartmentDisabled->Release();
}
Obtain the pointer to the ITfCompartmentMgr interface by calling QueryInterface on the thread manager object, as in the following example. 

ITfCompartmentMgr *pCompMgr = NULL;
 
 if (_pThreadMgr->QueryInterface(IID_ITfCompartmentMgr, (void **)&pCompMgr) == S_OK)
{
Using the pointer to the ITfCompartmentMgr interface, call the ITfCompartmentMgr::GetCompartment method to check for the value of GUID_COMPARTMENT_KEYBOARD_OPENCLOSE, as in the following example. 

ITfCompartment *pCompartment;
        if (pCompMgr->GetCompartment(GUID_COMPARTMENT_KEYBOARD_OPENCLOSE, &pCompartment) == S_OK)
        {
            VARIANT var;
            if (S_OK == pCompartment->GetValue(&var))
            {
                if (var.vt == VT_I4) // Even VT_EMPTY, GetValue() can succeed
                {
                    fOpen = (BOOL)var.lVal;
                }
            }
        }
        pCompMgr->Release();
    }
You can also call ITfCompartmentMgr::GetCompartment to check for the value of GUID_COMPARTMENT_EMPTYCONTEXT, as in the following example. 

ITfCompartment *pCompartmentEmptyContext;
// Check GUID_COMPARTMENT_EMPTYCONTEXT.
if (pCompMgr->GetCompartment(GUID_COMPARTMENT_EMPTYCONTEXT, &pCompartmentEmptyContext) == S_OK)
{
    VARIANT var;
    if (S_OK == pCompartmentEmptyContext->GetValue(&var))
    {
        if (var.vt == VT_I4) // Even VT_EMPTY, GetValue() can succeed
        {
            fDisabled = (BOOL)var.lVal;
        }
    }
    pCompartmentEmptyContext->Release();
}
-----------------------------------------------
Implement the ITfKeyEventSink Interface
-----------------------------------------------
To receive keyboard stroke events, implement the ITfKeyEventSink interface. Using this interface, a text service can track all of the key stroke events that happen on a particular thread. In this sample, the CTextService class implements ITfKeyEventSink in KeyEventSink.cpp. The methods, including OnKeyDown, OnKeyUp, OnTestKeyUp and OnTestKeyDown are almost empty in this sample. Each of the functions calls _IsKeyEaten, as in the following example of the OnKeyDown event. 

STDAPI CTextService::OnKeyDown(ITfContext *pContext, WPARAM wParam, LPARAM lParam, BOOL *pfEaten)
{
    *pfEaten = _IsKeyEaten(wParam);
    return S_OK;
}
_IsKeyEaten returns TRUE in the pfEaten parameter if the keyboard text service is open. In this example, the method will always return FALSE. 

BOOL CTextService::_IsKeyEaten(WPARAM wParam)
{
    // if the keyboard is disabled, don't eat keys.
    if (_IsKeyboardDisabled())
        return FALSE;
 
    // if the keyboard is closed, don't eat keys.
    if (!_IsKeyboardOpen())
        return FALSE;
 
    // VK_A - VK_Z is interesting only when this is open.
    // is on
    return (wParam >= 'A') && (wParam <= 'Z');
}
-----------------------------------------------
Implement the ITfKeystrokeMgr Interface
-----------------------------------------------
The ITfKeystrokeMgr interface allows text services to interact with the keyboard manager. To install a key event sink to allow the text service to receive keyboard events from the keyboard manager, first call QueryInterface on the thread manager to get a pointer to the ITfKeystrokeMgr interface, as in the following example. 

if (_pThreadMgr->QueryInterface(IID_ITfKeystrokeMgr, (void **)&pKeystrokeMgr) != S_OK)
    return FALSE;
Next, call ITfKeystrokeMgr::AdviseKeyEventSink with the _tfClientId parameter passed from the CTextService class when it calls the ITfTextInputProcessor::Activate method, as in the following example. 

hr = pKeystrokeMgr->AdviseKeyEventSink(_tfClientId, (ITfKeyEventSink *)this,TRUE);

-----------------------------------------------
Register Preserved Keys
-----------------------------------------------
Preserved keys are keyboard shortcuts that an application or TSF text service can register with the TSF manager. When registered, the TSF manager gives the text service control over the shortcuts, so that other applications do not interfere with their use. In this sample, the CTextService::Activate method calls CTextService::_InitPreservedKey, which in turn calls ITfKeystrokeMgr::PreserveKey which registers three preserved keys, as in the following example. 

BOOL CTextService::_InitPreservedKey()
{
    ITfKeystrokeMgr *pKeystrokeMgr;
    HRESULT hr;
 
    if (_pThreadMgr->QueryInterface(IID_ITfKeystrokeMgr, (void **)&pKeystrokeMgr) != S_OK)
        return FALSE;
 
    // register Alt+~ key
    hr = pKeystrokeMgr->PreserveKey(_tfClientId,
                                    GUID_PRESERVEDKEY_ONOFF,
                                    &c_pkeyOnOff0,
                                    c_szPKeyOnOff,
                                    wcslen(c_szPKeyOnOff));
 
    // register KANJI key
    hr = pKeystrokeMgr->PreserveKey(_tfClientId,
                                    GUID_PRESERVEDKEY_ONOFF,
                                    &c_pkeyOnOff1,
                                    c_szPKeyOnOff,
                                    wcslen(c_szPKeyOnOff));
 
    // register F6 key
    hr = pKeystrokeMgr->PreserveKey(_tfClientId,
                                    GUID_PRESERVEDKEY_F6,
                                    &c_pkeyF6,
                                    c_szPKeyF6,
                                    wcslen(c_szPKeyF6));
 
    pKeystrokeMgr->Release();
 
    return (hr == S_OK);
}
When a user presses a key that matches a registered preserved key, the TSF manager calls ITfKeyEventSink::OnPreservedKey. In this example from the CTextService::OnPreservedKey method in KeyEventSink.cpp, the keyboard status is toggled between open and closed when a user pressed the ALT+~ keys or the KANJI key. 

STDAPI CTextService::OnPreservedKey(ITfContext *pContext, REFGUID rguid, BOOL *pfEaten)
{
    if (IsEqualGUID(rguid, GUID_PRESERVEDKEY_ONOFF))
    {
        BOOL fOpen = _IsKeyboardOpen();
        _SetKeyboardOpen(fOpen ? FALSE : TRUE);
        *pfEaten = TRUE;
    }
          :
    return S_OK;
}

-----------------------------------------------
Change the Language Bar Item
-----------------------------------------------
To show the status of the text service, you can add an item to the language bar. In this example from LanguageBar.cpp, the CLangBarItemButton::InitMenu method adds a new language bar item sets the TF_LBMENUF_GRAYED and TF_LBMENUF_CHECKED flags according to the status of the keyboard text service. 

DWORD dwFlags = 0;
    if (_pTextService->_IsKeyboardDisabled())
        dwFlags |= TF_LBMENUF_GRAYED;
    else if (_pTextService->_IsKeyboardOpen())
        dwFlags |= TF_LBMENUF_CHECKED;

    pMenu->AddMenuItem(MENUITEM_INDEX_OPENCLOSE,
                       dwFlags, 
                       NULL, 
                       NULL, 
                       c_szMenuItemDescriptionOpenClose, 
                       (ULONG)wcslen(c_szMenuItemDescriptionOpenClose), 
                       NULL);

----------------------------------------------- 
Register the Text Service
-----------------------------------------------
The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.

Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

1.Open a command window. 
2.Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
3.Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
4.Navigate to the sample directory. 
5.Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax: 
nmake
6.If you registered the DLL in any of the previous samples, you will have to unregister it. The command, at the command prompt, is "Regsvr32.exe -u <path> \TextService.dll". 
Register the DLL with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". After successful registration, the text service is shown in the Date, Time, Language and Regional Options control panel applet. To verify that your service is registered, follow these steps. 

1.Open the Control Panel. 
2.Select Date, Time, Language and Regional Options. 
3.Select Language and Regional Options. 
4.Click the Languages tab. 
5.In the "Text services and input languages" frame, click Details. 
You should see Sample Text Service under the Japanese/Keyboard heading. 

