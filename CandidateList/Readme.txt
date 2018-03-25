------------------------------------------------
Text Service with Candidate List (Sample 9 of 9)
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

-----------------------------------------------
Description
-----------------------------------------------
This sample is the ninth in a series of nine samples that guide you through the creation of a text service. This sample is a text service that uses a candidate list. It is the last sample in the series and is a fully functional keyboard text service. 

For the sake of simplicity, the candidate list in this sample is implemented as a pop-up window. For more information on creating a candidate list, see ITfCandidateList. 

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
To create a candidate list user interface, complete the following steps. 
1.Create a new context for the candidate list. 
2.Implement the ITfContextView interface. 
3.Track layout changes. 
4.Register the text service. 
-----------------------------------------------
Create a New Context for the Candidate List
-----------------------------------------------
The text service creates a new context for the candidate list user interface (ui) so that the text service can handle all key events through ITfContextKeyEventSink. This is desirable if the ui is modal, as is the case with the pop-up window in this sample. If the ui is not modal, it should nocreatere a new context. 

In the following example from CCandidateList::_StartCandidateList in CandidateList.cpp, the text service calls ITfDocumentMgr::CreateContext to create a context for the candidate list ui, and ITfDocumentMgr::Push to make the push the context to the top of the context stack. The CCandidateList class inherits from the ITfContextKeyEventSink interface, so that CCandidateList::_AdviseContextKeyEventSink can install an advise sink for the candidate list ui. 

//
// create a new context on the document manager object for
// the candidate list ui.
//
if (FAILED(pDocumentMgr->CreateContext(tfClientId, 0, NULL, &_pContextCandidateWindow, &ecTmp)))
    return E_FAIL;
 
//
// push the new context.
//
if (FAILED(pDocumentMgr->Push(_pContextCandidateWindow)))
    goto Exit;

-----------------------------------------------
Implement the ITfContextView Interface
-----------------------------------------------
The text service uses the ITfContextView::GetTextExt method to determine the screen coordinates of the bounding box surrounding the text range. The CCandidateList::_StartCandidateList method returns the active view of the document context as well as the screen coordinates of the composition range. 

//
// get an active view of the document context.
//
if (FAILED(pContextDocument->GetActiveView(&pContextView)))
    goto Exit;
 
//
// get text extent for the range of the composition.
//
if (FAILED(pContextView->GetTextExt(ec, pRangeComposition, &rc, &fClipped)))
    goto Exit;
 
pContextView->Release();

-----------------------------------------------
Track Layout Changes
-----------------------------------------------
The CCandidateList class inherits from the ITfTextLayoutSink interface, so that CCandidateList::_AdviseTextLayoutSink can install an advise sink for the document context to track any changes to the layout of the document. If the layout changes when the candidate list ui is visible, the text service calls ITfTextLayoutSink::OnLayoutChange. The text service moves the candidate list ui when the layout is changed, as in the following example from CCandidateList::OnLayoutChange in CandidateList.cpp. 

STDAPI CCandidateList::OnLayoutChange(ITfContext *pContext, TfLayoutCode lcode, ITfContextView *pContextView)
{    
    if (pContext != _pContextDocument)
        return S_OK;
    switch (lcode)
    {
        case TF_LC_CHANGE:
            if (_pCandidateWindow != NULL)
            {
                CGetTextExtentEditSession *pEditSession;

                if ((pEditSession = new CGetTextExtentEditSession(_pTextService, pContext, pContextView, _pRangeComposition, _pCandidateWindow)) != NULL)
                {
                    HRESULT hr;
                    // a lock is required
                    // nb: this method is one of the few places where it is legal to use
                    // the TF_ES_SYNC flag
                    pContext->RequestEditSession(_pTextService->_GetClientId(), pEditSession, TF_ES_SYNC | TF_ES_READ, &hr);

                    pEditSession->Release();
                 }
            }
            break;

        case TF_LC_DESTROY:
            _EndCandidateList();
            break;

    }
    return S_OK;
}

-----------------------------------------------
Register the Text Service
-----------------------------------------------
The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.

Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

1.Open a command window. 
2.Run vsvars32.bat. If you have Visual Studio .NET installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
3.Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
4.Navigate to the sample directory. 
5.Run nmake. The batch files from the previous steps, along with the makefile provided for you in the sample directory, allow you to use the following syntax: 
nmake
Note:  If you have already registered TextService.dll using the code from an earlier sample, you can omit this step. 

After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 

After the text service is properly registered, you will see a candidate list and candidate list ui. 


