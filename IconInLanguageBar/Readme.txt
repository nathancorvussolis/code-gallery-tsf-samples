-----------------------------------------------
Text Service with an Icon in the Language Bar (Sample 4 of 9)
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

1.DllMain.cpp 
2.Globals.cpp
3.globals.h
4.LanguageBar.cpp
5.makefile
6.PreComp.cpp
7.Register.cpp
8.Resource.h
9.Server.cpp
10.TextEditSink.cpp
11.TextService.cpp
12.TextService.def
13.TextService.h
14.TextService.ico
15.TextService.rc
16.ThreadMgrEventSink.cpp
 
-----------------------------------------------
Description
-----------------------------------------------
This sample is the fourth in a series of nine samples that guide you through the creation of a text service. This sample adds an icon in the language bar for the text service. Each sample in the series adds functionality to the previous sample.

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
There are three steps to add an icon to the language bar for the text service. 

1. Implement the ITfLangBarItemButton interface. 
2. Add the language bar item. 
3. Add the menu item. 

-----------------------------------------------
Implement the ITfLangBarItemButton Interface
-----------------------------------------------
In the following example, the CLangBarItemButton class inherits from the ITfLangBarItemButton and ITfSource interfaces. ITfLangBarItemButton in turn inherits from ITfLangBarItem. ITfSource is required so that the language bar can be notified of changes to a language bar item. In this sample, ITfSource::AdviseSink is called with the identifier IID_ITfLangBarItemSink to install an ITfLangBarItemSink advise sink. 

class CLangBarItemButton : public ITfLangBarItemButton,
                           public ITfSource
{
public:
    CLangBarItemButton();
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
    LONG _cRef;
};

-----------------------------------------------
Add the Language Bar Item
-----------------------------------------------
The CTextService::_InitLanguageBar function registers the language bar with the language bar item manager. This function is called when the text service is activated by calling CTextService::Activate. To add the language bar item, you need a pointer to the ITfLangBarItemMgr interface, which you can obtain by calling QueryInterface on the pointer to the ITfThreadMgr interface, shown as _pThreadMgr in the following example. The CTextService::_InitLanguageBar function is in LanguageBar.cpp. 

ITfLangBarItemMgr *pLangBarItemMgr;
if (_pThreadMgr->QueryInterface(IID_ITfLangBarItemMgr, (void **)&pLangBarItemMgr) != S_OK)
    return FALSE;

The next step is to create an instance of the CLangBarItemButton class, storing the pointer in the _pLnagBarItem variable, as in the following example. 

if ((_pLangBarItem = new CLangBarItemButton()) == NULL)
    goto Exit;

Next, add the instance of the CLangBarItemButton class to the language bar manager by calling ITfLangBarItemMgr::AddItem. If the AddItem method fails, you must release _pLangBarItem. 

if (pLangBarItemMgr->AddItem(_pLangBarItem) != S_OK)
{
    _pLangBarItem->Release();
    _pLangBarItem = NULL;
    goto Exit;
}
Lastly, release the pointer to the ITfLangBarItemMgr interface, shown as pLangBarItemMgr in the following example. 

Exit:
    pLangBarItemMgr->Release();
    return fRet;
}
For an example of how to remove the language bar item from the language bar item manager, refer to the CTextService::_UninitLanguageBar function in LanguageBar.cpp. 

-----------------------------------------------
Add the Menu Item
-----------------------------------------------
The ITfLangBarItemButton::InitMenu method is called when a user clicks the language bar button. In the following example, the pointer to the ITFMenu interface passed as the first parameter is used to call the ITFMenu::AddMenuItem method. The menu item identifier is MENUITEM_INDEX_0. 

#define MENUITEM_INDEX_0 0
static WCHAR c_szMenuItemDescription0[] = L"Menu Item Description 0";
 
STDAPI CLangBarItemButton::InitMenu(ITfMenu *pMenu)
{
    //
    // Add the first menu item.
    //
    pMenu->AddMenuItem(MENUITEM_INDEX_0,
                       0,
                       NULL,
                       NULL,
                       c_szMenuItemDescription0,
                       (ULONG)wcslen(c_szMenuItemDescription0),
                       NULL);
    return S_OK;
}
The ITfLangBarItemButton::OnMenuSelect method is called when a user selects a menu item. The following example shows the CLangBarItemButton::OnMenuSelect implementation from LanguageBar.cpp. The wID parameter indicates which menu item is selected. 

STDAPI CLangBarItemButton::OnMenuSelect(UINT wID)
{
    switch (wID)
    {
        case MENUITEM_INDEX_0:
              :
            break;
    }
 
    return S_OK;
}

-----------------------------------------------
Register the Text Service
-----------------------------------------------
The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.

Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

1. Open a command window. 
2. Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
3. Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
4. Navigate to the sample directory. 
5. Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax: 
nmake
Note:  If you have already registered TextService.dll using the code from the first or second sample, you can omit this step. 

After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 

To verify that the text service is registered, you must have at least two input languages. Follow these steps to add an input language. 

1. Open the Control Panel. 
2. Select Date, Time, Language and Regional Options. 
3. Select Language and Regional Options. 
4. Click the Languages tab. 
5. In the Text services and input languages frame, click Details. 
6. In the Installed services frame, click Add. 
7. In the Add Input Language dialog box, choose a new input language. For example, you could choose French(France), and you would see this in the Date, Time, Language and Regional Options control panel applet. 


After the new language is added, you should see the language bar. To see the new menu items created by this sample, choose English(US) in the language bar. Give focus to an application that accepts text input, like Microsoft Word or Notepad.

