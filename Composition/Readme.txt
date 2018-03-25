------------------------------------------------
Text Service with Compositions (Sample 7 of 9)
(c) Microsoft Corporation, 2003. All rights reserved.
-----------------------------------------------


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
2.Composition.cpp
3.DllMain.cpp
4.EditSession.h
5.EndComposition.cpp 
6.Globals.cpp
7.globals.h
8.KeyEventSink.cpp
9.KeyHandler.cpp
10.LanguageBar.cpp
11.makefile
12.PreComp.cpp
13.Register.cpp
14.Resource.h
15.Server.cpp
16.StartComposition.cpp
17.TextEditSink.cpp
18.TextService.cpp
19.TextService.def
20.TextService.h
21.TextService.ico
22.TextService.rc
23.ThreadMgrEventSink.cpp

------------------------------------------------
Description
------------------------------------------------
This sample is the seventh in a series of nine samples that show you how to create a text service. This sample is a text service that uses Compositions. This sample builds upon the last sample, Text Service with Keyboard Functionality, to add keyboard functionality to the text service. The next sample, Text Service with Composition String Underline, continues to add keyboard functionality, and the last sample in the series, Text Service with Candidate List, provides a fully functional keyboard text service.

------------------------------------------------
More Details
------------------------------------------------
Microsoft Windows Text Services Framework (TSF) provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.

------------------------------------------------
Browser/Platform Compatibility and other Requirements
------------------------------------------------
Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.

Text Services Framework runs on the Windows XP operating system. It is available as a redistributable for Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.

The sample also requires Visual Studio and the Core SDK of the Microsoft Platform SDK.

------------------------------------------------
Usage
------------------------------------------------
To enable the text service to use Compositions, complete the following steps. 

1.Implement the ITfContextComposition interface. 
2.Add a key event handler. 
3.Terminate the composition object. 
4.Register the text service. 

------------------------------------------------
Implement the ITfContextComposition Interface
------------------------------------------------
The ITfContextComposition::StartComposition method creates a new composition and begins the edit session. The method requires a read/write document lock. A text service can only obtain a lock by requesting an edit session with a specific context and read-only or read/write access. When the edit session is granted, the text service is supplied with an edit cookie that identifies the edit context with the requested access. This cookie is then passed to the method to identify the edit context with the proper access. The following example is from the CStartCompositionEditSession class, which inherits from CEditSessionBase class declared in EditSession.h. In this example, the class stores pointers to the CTextService class (in the _pTextService variable), and to the ITfContext interface (in the _pContext variable). 

class CStartCompositionEditSession : public CEditSessionBase
{
public:
    CStartCompositionEditSession(CTextService *pTextService, ITfContext *pContext) : CEditSessionBase(pTextService, pContext)
    {
    }
 
    // ITfEditSession
    STDMETHODIMP DoEditSession(TfEditCookie ec);
};
In the following example from CTextService::_StartComposition in StartComposition.cpp, a new edit session is created. This method calls RequestEditSession with a request for a synchronous read/write lock. 

void CTextService::_StartComposition(ITfContext *pContext)
{
    CStartCompositionEditSession *pStartCompositionEditSession;
 
    if (pStartCompositionEditSession = new CStartCompositionEditSession(this, pContext))
    {
        HRESULT hr;
        // A synchronous document write lock is required.
        // the CStartCompositionEditSession will do all the work when the
        // CStartCompositionEditSession::DoEditSession method is called by the context
        pContext->RequestEditSession(_tfClientId, pStartCompositionEditSession, TF_ES_SYNC | TF_ES_READWRITE, &hr);
 
        pStartCompositionEditSession->Release();
    }
}
CStartCompositionEditEditSession::DoEditSession is the call back function of the edit session. It includes three steps: getting the selection range for the new composition, starting the composition by calling ITfContextComposition::StartComposition, and adjusting the selection to match the current composition range. The following example shows the first step, where the current selection range (or the position of the caret if there is no selection) is returned by calling the ITfInsertAtSelection::InsertTextAtSelection method. 

ITfInsertAtSelection *pInsertAtSelection = NULL;
ITfRange *pRangeInsert = NULL;
 
if (_pContext->QueryInterface(IID_ITfInsertAtSelection, (void **)&pInsertAtSelection) != S_OK)
{
    goto Exit;
}
 
if (pInsertAtSelection->InsertTextAtSelection(ec, TF_IAS_QUERYONLY, NULL, 0, &pRangeInsert) != S_OK)
{
    goto Exit;
}
The next steps are starting the composition and setting the selection to the adjusted range. Call QueryInterface on _pContext and then call ITfContextComposition::StartComposition, then call the ITfContext::SetSelection method, as in the following example.

ITfContextComposition *pContextComposition = NULL;
ITfComposition *pComposition = NULL;
HRESULT hr = E_FAIL;

// get an interface on the context to deal with compositions
if (_pContext->QueryInterface(IID_ITfContextComposition, (void **)&pContextComposition) != S_OK)
{
    goto Exit;
}
 
// start the new composition
if ((pContextComposition->StartComposition(ec, pRangeInsert, _pTextService, &pComposition) == S_OK) && (pComposition != NULL))
{
    // Store the pointer of this new composition object in the instance
    // of the CTextService class. So this instance of the CTextService
    // class can know now it is in the composition stage.
    _pTextService->_SetComposition(pComposition);
 
    //
    //  set selection to the adjusted range
    //
    TF_SELECTION tfSelection;
    tfSelection.range = pRangeInsert;
    tfSelection.style.ase = TF_AE_NONE;
    tfSelection.style.fInterimChar = FALSE;
    _pContext->SetSelection(ec, 1, &tfSelection);
}

------------------------------------------------
Add a Key Event Handler
------------------------------------------------
This is a flow chart that shows the logic for handling keys in this sample. The keys handled are 'A' through 'Z', ENTER, and the right and left arrow keys. 

 

This logic is represented in the code in the CTextService::_IsKeyEaten function in KeyEventSink.cpp. In the following example, the switch checks for the ENTER key and left and right arrow keys. 

switch (wParam)
{
    case VK_LEFT:
    case VK_RIGHT:
    case VK_RETURN:
        if (_IsComposing())
            return TRUE;
        return FALSE;}

The implementation of ITfKeyEventSink::OnKeyDown calls CTextService::_InvokeKeyHandler, as in the following example from KeyEventSink.cpp. CTextService::_InvokeKeyHandler, in KeyHandler.cpp, starts a new edit session to handle the keys. 

STDAPI CTextService::OnKeyDown(ITfContext *pContext, WPARAM wParam, LPARAM lParam, BOOL *pfEaten)
{
    *pfEaten = _IsKeyEaten(wParam);
 
    if (*pfEaten)
    {
        _InvokeKeyHandler(pContext, wParam, lParam);
    }
 
    return S_OK;
}
The three key event handlers provided in this sample are as follows.  
CTextService::_HandleCharacterKey handles keys from VK_A to VK_Z and inserts the uppercase character into the composition object. 
CTextService::_HandleReturnKey handles the ENTER key and terminates the composition object by calling CTextService::_TerminateComposition.  
CTextService::_HandleArrowKey handles the left and right arrow keys. The movement of the caret is restricted to inside the composition object.  


CTextService::_HandleCharacterKey calls CTextService::_StartComposition to create a new composition object if one does not already exist, as in the following example. 

// Start the newcompositionn if there is no composition.
if (!_IsComposing())
    _StartComposition(pContext);

After the selection is returned, CTextService::_HandleCharacterKey calls ITfComposition::GetRange to get the range of the current composition, then compares the composition range to the selection. If the current selection exists inside of the composition range, the character is inserted. If the current selection exists outside of the composition range, the character is not inserted. 

// is the insertion point covered by a composition?
if (_pComposition->GetRange(&pRangeComposition) == S_OK)
{
    fCovered = IsRangeCovered(ec, tfSelection.range, pRangeComposition);
 
    pRangeComposition->Release();
 
    if (!fCovered)
    {
        goto Exit;
    }
}
CTextService::_HandleCharacterKey then calls the ITfRange::SetText method. ITfRange::SetText is used here instead of InsertTextAtSelection because a composition already exists and because it is undesirable to have the application adjust the insertion point in our composition. In the following example, the selected text is replaced by ch, and the selection point is moved to the end of the selection. 

if (tfSelection.range->SetText(ec, 0, &ch, 1) != S_OK)
    goto Exit;
    tfSelection.range->Collapse(ec, TF_ANCHOR_END);
    pContext->SetSelection(ec, 1, &tfSelection);

------------------------------------------------
Terminate the Composition Object
------------------------------------------------
CTextService::OnEndEdit in TextEditSink.cpp tracks changes in the selection. If the selection moves outside of the current composition range, the pointer to the composition object is released, as in the following example. The CTextService::OnEndEdit method can be called when some other area of the document is clicked while in the middle of an composition session. 

// If the selection is moved to out side of the current composition,
// terminate the composition. This TextService supports only one
// composition in one context object.
if (_IsComposing())
{
    TF_SELECTION tfSelection;
    ULONG cFetched;
 
    if (pContext->GetSelection(ecReadOnly, TF_DEFAULT_SELECTION, 1, &tfSelection, &cFetched) == S_OK && cFetched == 1)
    {
        ITfRange *pRangeComposition;
        // is the insertion point covered by a composition?
        if (_pComposition->GetRange(&pRangeComposition) == S_OK)
        {
            if (!IsRangeCovered(ecReadOnly, tfSelection.range, pRangeComposition))
            {
                _EndComposition(pContext);
            }
            pRangeComposition->Release();
        }
    }
}
The composition session must be closed by calling ITfComposition::EndComposition. Since this method requires an edit cookie, an edit session is also required. The release of the composition session can be asynchronous. In the following example from EndComposition.cpp, CTextService::_EndComposition calls ITfContext::RequestEditSession with the TF_ES_ASYNCDONTCARE and TF_ES_READWRITE flags. 

void CTextService::_EndComposition(ITfContext *pContext)
{
    CEndCompositionEditSession *pEditSession;
    HRESULT hr;

    if (pEditSession = new CEndCompositionEditSession(this, pContext))
    {
        pContext->RequestEditSession(_tfClientId, pEditSession, TF_ES_ASYNCDONTCARE | TF_ES_READWRITE, &hr);
        pEditSession->Release();
    }
}

CEndCompositionEditSession::DoEditSession calls CTextService::_TerminateComposition, which calls the ITfComposition::EndComposition method to release the composition object. 

------------------------------------------------
Register the Text Service
------------------------------------------------
The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.

Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

1.Open a command window. 
2.Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
3.Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
4.Navigate to the sample directory. 
5.Run nmake. The batch files from the previous steps, along with the makefile provided for you in the sample directory, allow you to use the following syntax: 
nmake
Note:  If you have already registered TextService.dll using the code from an earlier sample, you can omit this step. 

After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 


