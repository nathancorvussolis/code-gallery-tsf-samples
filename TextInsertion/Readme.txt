-----------------------------------------------
Text Service with Text Insertion (Sample 5 of 9)
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
2.EditSession.h
3.Globals.cpp
4.globals.h
5.InsertHello.cpp
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

This sample is the fifth in a series of nine samples that guide you through the creation of a text service. This sample is a text service that uses selection and range to insert text in a document. Each sample in the series adds functionality to the previous sample.

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
There are four steps to insert text into a document.

1. Implement the ITfEditSession interface. 
2. Insert text at the selection point. 
3. Add a new menu item to the language bar. 
4. Register the text service.

-----------------------------------------------
Implement the ITfEditSession Interface
-----------------------------------------------
The ITfEditSession interface is used by the TSF manager to read and/or modify the text and properties of an edit context. In this sample, the CEditSession class inherits from ITfEditSession. CEditSession is a base class defined in EditSession.h with basic implementation for IUnknown methods as well as a virtual implementation of the ITfEditSession::DoEditSession method. The CInsertHelloEditSession class inherits from CEditSession and implements the ITfEditSession::DoEditSession method as CInsertHelloEditSession::DoEditSession in InsertHello.cpp. DoEditSession calls the static function InsertTextAtSelection, which inserts the string "Hello World" into the current document. The instance of the CInsertHelloEditSession class is created in the CTextService::InsertHello function, which also requests the edit session from the edit context.

If the ITfContext::RequestEditSession method succeeds, the edit context calls the CInsertHelloEditSession::DoEditSession method. This call can be synchronous (CInsertHelloEditSession::DoEditSession is called at the same time as RequestEditSession) or asynchronous (CInsertHelloEditSession::DoEditSession is called after RequestEditSession). In this sample, the call is made asynchronous by passing in the TF_ES_ASYNCDONTCARE flag to the DWORD parameter. The TF_ES_READWRITE flag passed on the same parameter requests read and write access to the edit context, as in the following example. 

if (pInsertHelloEditSession = new CInsertHelloEditSession(pContext))
{
    // A document write lock is required to insert text
    // the CInsertHelloEditSession will do all the work when the
    // CInsertHelloEditSession::DoEditSession method is called by the context
    pContext->RequestEditSession(_tfClientId, pInsertHelloEditSession, TF_ES_READWRITE | TF_ES_ASYNCDONTCARE, &hr);
    pInsertHelloEditSession->Release();
}
The _tfClientId parameter is required and is obtained when ITfTextInputProcessor::Activate is called, as in the following example. 

STDAPI CTextService::Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId)
{
          :   
    _tfClientId = tfClientId;
    
-----------------------------------------------
Insert Text at the Selection Point
-----------------------------------------------
The easiest way to insert text into the selection (or at the caret if there is no selection) is to implement the ITfInsertAtSelection interface. Call QueryInterface on the edit context to get a pointer to the ITfInsertAtSelection interface, as in the following example. 

ITfInsertAtSelection *pInsertAtSelection;
ITfRange *pRange;
 
// A special interface is required to insert text at the selection
if (pContext->QueryInterface(IID_ITfInsertAtSelection, (void **)&pInsertAtSelection) == S_OK)
{
    // insert the text
    pInsertAtSelection->InsertTextAtSelection(ec, 0, pchText, cchText, &pRange);
    pInsertAtSelection->Release();
}/pre> 
The ITfInsertAtSelection::InsertTextAtSelection method returns the range object that covers the inserted area. You can move the caret to the end of the inserted area by calling ITfContext::SetSelection as in the following example.

// update the selection, we'll make it an insertion point just past
// the inserted text.
pRange->Collapse(ec, TF_ANCHOR_END);
 
tfSelection.range = pRange;
tfSelection.style.ase = TF_AE_NONE;
tfSelection.style.fInterimChar = FALSE;
 
pContext->SetSelection(ec, 1, &tfSelection);
 
pRange->Release();
A second way to insert text at the selection point is to call the ITfRange::SetText method directly. Calling SetText directly guarantees the position of the insertion point, which is useful when a text service manages the composition. The following example shows how to call SetText directly.
 
TF_SELECTION tfSelection;
if (pContext->GetSelection(ec, TF_DEFAULT_SELECTION, 1, &tfSelection, &cFetched) != S_OK || cFetched != 1)
return S_FALSE;
 
if (tfSelection.range->SetText(ec, 0, pchText, cchText) != S_OK)
    goto Exit;
    
-----------------------------------------------
Add a New Menu Item to the Language Bar
-----------------------------------------------
A new menu item is not required to add text to the document, but it is one way to create an event to call CTextService::InsertHello. In this sample, CLangBarItemButton::InitMenu adds a menu item that adds "Hello World" to the document. The menu item is added by calling ITfMenu::AddMenuItem, as in the following example.
 
pMenu->AddMenuItem(MENUITEM_INDEX_INSERTHELLO,
                   0,
                   NULL,
                   NULL,
                   c_szMenuItemDescriptionInsertHello,
                   (ULONG)wcslen(c_szMenuItemDescriptionInsertHello),
                   NULL);
In this sample, CTextService::InsertHello is called by the ITfLangBarItemButton::OnMenuSelect event when the menu item with the id of MENUITEM_INDEX_INSERTHELLO is selected, as in the following example. 

STDAPI CLangBarItemButton::OnMenuSelect(UINT wID)
{
    switch (wID)
    {
        case MENUITEM_INDEX_INSERTHELLO:
            _pTextService->InsertHello();
            break;
    }
 
    return S_OK;
}
To call CTextService::InsertHello in the CLangBarItemButton, pass a pointer to the CTextService class from the CTextService::_InitLanguageBar method to the constructor of CLangBarItemButton, as in the following example.

CLangBarItemButton::CLangBarItemButton(CTextService *pTextService)
{
          : 
    _pTextService = pTextService;
    _pTextService->AddRef();
 
   _cRef = 1;
}
 
BOOL CTextService::_InitLanguageBar()
{
          : 
    if ((_pLangBarItem = new CLangBarItemButton(this)) == NULL)
        goto Exit;
        
-----------------------------------------------
Register the Text Service
-----------------------------------------------
The sample must be compiled before it can be registered.  To compile the source files for this sample, complete the following steps.
Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

1. Open a command window. 
2. Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat".
3. Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL.
4. Navigate to the sample directory. 
5. Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax:
nmake

Note:  If you have already registered TextService.dll using the code from the first or second sample, you can omit this step. 
After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 
 
After the sample is compiled and registered, you should be able to add the "Hello World" string to any TSF aware application. In general TSF-aware applications are Office XP applications and Internet Explorer. Wordpad in WinXP-SP1 or later is also TSF aware.




