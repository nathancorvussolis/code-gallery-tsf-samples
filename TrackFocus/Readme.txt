-----------------------------------------------
Text Service with Track Focus (Sample 2 of 9)
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
9. TextService.cpp
10. TextService.def
11. TextService.h
12. TextService.ico
13. TextService.rc


-----------------------------------------------
Description
-----------------------------------------------
This sample is the second in a series of nine samples that show you how to create a text service. This sample is a text service that can track changes in focus. Each sample in the series adds functionality to the previous sample.

-----------------------------------------------
More Details
-----------------------------------------------
Microsoft Windows Text Services Framework (TSF) provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.

-----------------------------------------------
Browser/Platform Compatibility and other Requirements
-----------------------------------------------
Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.

Text Services Framework runs on the Windows® XP operating system. It is available as a redistributable for Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.

The sample also requires Microsoft® Visual Studio and the Core SDK of the Microsoft Platform SDK.

-----------------------------------------------
Usage
-----------------------------------------------
To enable the text service to track changes in focus, complete the following four steps. 

1. Implement the ITfThreadMgrEventSink interface. 
2. Handle the reference count for the thread manager. 
3. Install an advise sink. 
4. Register the Text Service

----------------------------------------------- 
Implement the ITfThreadMgrEventSink Interface
-----------------------------------------------
The ITfThreadMgrEventSink interface allows the text service to receive and respond to events raised by changes in focus. The following example shows how to declare the ITfThreadMgrEventSink interface. In the sample, the interface is declared in the CTextService class definition in TextService.h.

Note: The ITfThreadMgrEventSink interface does not have to exist in the same class that implements the ITfTextInputProcessor interface.

class CTextService : public ITfTextInputProcessor,
                     	  public ITfThreadMgrEventSink
{
CTextService::QueryInterface can now return both the ITfTextInputProcessor and ITfThreadMgrEventSink interfaces, as in the following example.

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
 
    if (*ppvObj)
    {
        AddRef();
        return S_OK;
    }
 
    return E_NOINTERFACE;
}
TextService.h is also where the interface method declarations are. The method bodies are in ThreadMgrEventSink.cpp, and are empty for now.

-----------------------------------------------
Handle the Reference Count for the Thread Manager
-----------------------------------------------
A pointer to the ITfThreadMgr interface is passed as the first parameter of ITfTextInputProcessor::Activate method. This method adds a reference to the thread manager for the session and advise sinks for events such as change of focus. The following example shows how the CTextService class keeps the pointer and increments the reference count. 

STDAPI CTextService::Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId)
{
    _pThreadMgr = pThreadMgr;
    _pThreadMgr->AddRef();
          :
}
ITfTextInputProcessor::Deactivate is called when the text service is no longer necessary in the thread. The reference count of the thread manager must be decremented, as in the following example.

STDAPI CTextService::Deactivate()
{
          :
    // Release ALL refs to _pThreadMgr in Deactivate
    SafeReleaseClear(_pThreadMgr);
          :
}

-----------------------------------------------
Install an Advise Sink
-----------------------------------------------
The text service is activated by calling ITfTextInputProcessor::Activate. As part of the activation, you need to install an advise sink to allow the text service to receive notifications of thread manager events. In this sample, CTextService::Activate calls CTextService::_InitThreadMgrEventSink to install the advise sink. The first step is to call QueryInterface on the thread manager to get a pointer to the ITfSource interface, as in the following example. 

ITfSource *pSource;
if (_pThreadMgr->QueryInterface(IID_ITfSource, (void **)&pSource) != S_OK)
    return FALSE;
In the following example, the pointer is used to call the ITfSource::AdviseSink method. The "this" pointer can be used because the CTextService class inherits from the ITfThreadMgrEventSink interface. ITfSource::AdviseSink returns an edit cookie that must be kept until ITfSource::UndadviseSink is called. For more information about edit cookies, see the Edit Cookies section of the Edit Sessions topic. 

if (pSource->AdviseSink(IID_ITfThreadMgrEventSink, (ITfThreadMgrEventSink *)this, &_dwThreadMgrEventSinkCookie) != S_OK)
    {
        //Don't try to Unadvise _dwThreadMgrEventSinkCookie later
        _dwThreadMgrEventSinkCookie = TF_INVALID_COOKIE;
        goto Exit;
    }
Release the pointer to ITfSource after it is used. 

pSource->Release();

The text service is deactivated by calling ITfTextInputProcessor::Deactivate. As part of the deactivation, you need to uninstall the advise sink. In this sample, CTextService::Deactivate calls CTextService::_UninitThreadMgrEventSink to uninstall the advise sink. Call QueryInterface on the thread manager to get a pointer to the ITfSource interface and then call ITfSource::UnadviceSink with the edit cookie that was returned by the ITfSource::AdviseSink method. This is shown in the following example. 

if (_pThreadMgr->QueryInterface(IID_ITfSource, (void **)&pSource) == S_OK)
{
    pSource->UnadviseSink(_dwThreadMgrEventSinkCookie);
    pSource->Release();
}
The function body for these examples is in ThreadMgrEventSink.cpp.

-----------------------------------------------
Register the Text Service
-----------------------------------------------
The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.

Note:  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.

Open a command window. 
Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
Navigate to the sample directory. 
Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax: 
nmake
Note:  If you have already registered TextService.dll using the code from the first sample, you can omit this step. 

After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe &60;path> &92;TextService.dll". 


