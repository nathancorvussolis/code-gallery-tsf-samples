-----------------------------------------------
Text Service with Track Text Change (Sample 3 of 9)
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
1. DllMain.cpp
2. Globals.cpp
3. globals.h
4. makefile
5. PreComp.cpp
6. Register.cpp
7. Resource.h
8. Server.cpp
9. TextEditSink.cpp
10. TextService.cpp
11. TextService.def
12. TextService.h
13. TextService.ico
14. TextService.rc
15. ThreadMgrEventSink.cpp


-----------------------------------------------
Description
-----------------------------------------------
This sample is the third in a series of nine samples that show you how to create a text service. This sample is a text service that can track text changes. Each sample in the series adds functionality to the previous sample.

-----------------------------------------------
More Details
-----------------------------------------------
Microsoft Windows Text Services Framework (TSF) provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.

-----------------------------------------------
Browser/Platform Compatibility and other Requirements
-----------------------------------------------
Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.

Text Services Framework runs on the Windows XP operating system. It is available as a redistributable for Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.

The sample also requires Visual Studio and the Core SDK of the Microsoft Platform SDK.

-----------------------------------------------
Usage
-----------------------------------------------
To enable the text service to track changes in focus, complete the following three steps. 

1. Implement the ITfTextEditSink interface. 
2. Get the Document Manager. 
3. Register the text service. 

-----------------------------------------------
Implement the ITfTextEditSink Interface
-----------------------------------------------
The ITfTextEditSink interface allows the text service to receive and respond to events raised by changes in focus. The following example shows the declaration of ITfTextEditSink interface. In the sample, the interface is declared in the CTextService class definition in TextService.h.

Note: The ITfTextEditSink interface does not have to exist in the same class that implements the ITfTextInputProcessor interface.

class CTextService : public ITfTextInputProcessor,
                     	  public ITfThreadMgrEventSink,
                          public ITfTextEditSink
{
QueryInterface can now return the ITfTextInputProcessor, ITfThreadMgrEventSink, and ITfTextEditSink interfaces, as in the following example.

STDAPI CTextService::QueryInterface(REFIID riid, void **ppvObj)
{
    if (ppvObj == NULL)
        return E_INVALIDARG;
 
    *ppvObj = NULL;
 
    if (IsEqualIID(riid, IID_IUnknown) ||
        IsEqualIID(riid, IID_ITfTextInputProcessor))
    {
        *ppvObj = (ITfTextInputProcessor *)this;
    }
    else if (IsEqualIID(riid, IID_ITfThreadMgrEventSink))
    {
        *ppvObj = (ITfThreadMgrEventSink *)this;
    }
    else if (IsEqualIID(riid, IID_ITfTextEditSink))
    {
        *ppvObj = (ITfTextEditSink *)this;
    }
 
    if (*ppvObj)
    {
        AddRef();
        return S_OK;
    }
 
    return E_NOINTERFACE;
}
The ITfTextEditSink interface has one method, declared in TextService.h, as follows. 

// ITfTextEditSink
STDMETHODIMP OnEndEdit(ITfContext *pContext, TfEditCookie ecReadOnly, ITfEditRecord *pEditRecord);
The function body of CTextService::OnEndEdit is in TextEditSink.cpp. It is a callback function that is called when the content of edit context has changed. This content includes the text, selection, and properties like display attributes such as bold text or the language identifier of the text. In the following example from the OnEndEdit function, the ITfEditRecord::GetSelectionStatus method is used to detect if the selection has changed or if the caret has moved. pEditRecord is the pointer to the ITfEditRecord interface passed in as the third parameter on the ITfTextEditSink::OnEndEdit method. The range of the current selection can be obtained by calling ITfContext::GetSelection.

BOOL fSelectionChanged;
    IEnumTfRanges *pEnumTextChanges;
    ITfRange *pRange;

    // Did the selection change and/or did the caret move?
    // The caret position is represented as an empty selection range when
    // there is no selection.
    //
    if (pEditRecord->GetSelectionStatus(&fSelectionChanged) == S_OK &&
        fSelectionChanged)
    {
	// The selection has changed or the caret has moved
	 }

ITfEditRecord::GetTextAndPropertyUpdates returns a pointer to the IEnumTfRanges interface, which is an enumerator that contains a collection of range objects that cover the specified properties and/or text changed during the edit session. Passing in the TF_GTP_INCL_TEXT flag specifies that the method will obtain the collection of range objects that cover the text changed during the edit session, rather than a collection of range objects that cover the specified properties changed during the edit session. The updated text can be obtained by calling IFfRange::GetText, passing ecReadOnly in the TfEditCookie parameter. ecReadOnly is the second parameter on the ITfTextEditSink::OnEndEdit method. 

    // Text modification?
    if (pEditRecord->GetTextAndPropertyUpdates(TF_GTP_INCL_TEXT, NULL, 0, &pEnumTextChanges) == S_OK)
    {
        if (pEnumTextChanges->Next(1, &pRange, NULL) == S_OK)
        {
            //
            // pRange is the updated range.
            //

            pRange->Release();
        }

        pEnumTextChanges->Release();
    }

    return S_OK;
}

-----------------------------------------------
Get the Document Manager
-----------------------------------------------
A text service uses the document manager to obtain the edit context. To get the document manager that currently has input focus, the text service calls ITfThreadMgr::GetFocus. ITfThreadMgr::GetFocus returns a pointer to the ITfDocumentMgr interface. In this sample, the advise sink is uninstalled from the document manager that loses focus, and is installed on the document manager that gains focus. The text service is notified when the text in the edit context changes, in whatever document manager that is returned by ITfThreadMgr::GetFocus. It is also possible to leave the advise sink installed on document managers that are not currently in focus as the ITfTextEditSink::OnEndEdit method does not rely on the document manager having focus. 

When the text service is activated, a document manager may already exist and have focus. In this example, if ITfThreadMgr::GetFocus returns a document manager, _InitTextEditSink is called. 

STDAPI CTextService::Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId)
{
          :
    ITfDocumentMgr *pDocMgrFocus;
    if ((_pThreadMgr->GetFocus(&pDocMgrFocus) == S_OK) &&
        (pDocMgrFocus != NULL))
    {
        _InitTextEditSink(pDocMgrFocus);
        pDocMgrFocus->Release();
    }
The text service call be deactivated while the document manager is still active by calling CTextService::Deactivate, passing in NULL, as in the following example from TextService.cpp. 

STDAPI CTextService::Deactivate()
{_InitTextEditSink(NULL);
Note This sample supports US-English language only. You can add other languages from Control Panel. When you switch the input language from English (US) to French (for example), the text service is deactivated although the document manager is still available and has focus. When you switch the input language from French back to English (US), the text service is activated and uses the document manager that already exists.

In the following example of tracking focus changes, CTextService::OnSetFocus calls _InitTextEditSink, passing in the document manager. The implementation of the IFfThreadMgrEventSink interface is in ThreadMgrEventSink.cpp. 

STDAPI CTextService::OnSetFocus(ITfDocumentMgr *pDocMgrFocus, ITfDocumentMgr *pDocMgrPrevFocus)
{
    //
    // Initialize the TextEditSink when focus changes.
    //
    _InitTextEditSink(pDocMgrFocus);
 
    return S_OK;
}
The first step in the _InitTextEditSink function is to remove any existing advise sink, if one exists. In the example shown below, _dwTextEditSinkCookie is the edit cookie and _pTextEditSinkContext is the edit context. For more information on edit cookie and edit sessions, see Edit Contexts. The _InitTextEditSink function is in TextEditSink.cpp. 

ITfSource *pSource;
if (_dwTextEditSinkCookie != TF_INVALID_COOKIE)
{
    if (_pTextEditSinkContext->QueryInterface(IID_ITfSource, (void **)&pSource) == S_OK)
    {
        pSource->UnadviseSink(_dwTextEditSinkCookie);
        pSource->Release();
    }
 
    _pTextEditSinkContext->Release();
    _pTextEditSinkContext = NULL;
    _dwTextEditSinkCookie = TF_INVALID_COOKIE;
}
If the pointer to the document manager is NULL, the _InitTextEditSink function returns immediately after removing the existing advise sink, which means that the text service will no longer be notified of changes in text, selection, or properties. 

if (pDocMgr == NULL)
    return TRUE; // Clear the previous sink

The next step is to get the edit context from the document manager. In the following example, the edit context (or the pointer to the ITfContext interface) is stored in the _pTextEditSinkContext variable. If it is NULL, then it is not possible to add an advise sink. 

if (pDocMgr->GetTop(&_pTextEditSinkContext) != S_OK)
    return FALSE;
if (_pTextEditSinkContext == NULL)
    return TRUE; // The document is empty; no sink is possible
If _pTextEditSinkContext is not NULL, install an advise sink, as in the following example. 

if (_pTextEditSinkContext->QueryInterface(IID_ITfSource, (void **)&pSource) == S_OK)
{
    if (pSource->AdviseSink(IID_ITfTextEditSink, (ITfTextEditSink *)this, &_dwTextEditSinkCookie) == S_OK)
    {
        fRet = TRUE;
    }
    pSource->Release();
}

-----------------------------------------------
Register the Text Service
-----------------------------------------------
The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.

Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

Open a command window. 
Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
Navigate to the sample directory. 
Run nmake. The batch files from the previous steps, along with the makefile provided for you in the sample directory, allow you to use the following syntax: 
nmake
Note:  If you have already registered TextService.dll using the code from the first sample, you can omit this step. 

After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 

