-----------------------------------------------
Basic Text Service (Sample 1 of 9)
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
4.makefile
5.PreComp.cpp
6.Register.cpp
7.Resource.h
8.Server.cpp
9.TextService.cpp
10.TextService.def
11.TextService.h
12.TextService.ico
13.TextService.rc
 
-----------------------------------------------
Description
-----------------------------------------------
This sample is the first in a series of nine samples that teach you how to create a text service. This sample is a basic text service with very little functionality. Each sample in the series adds functionality to the previous sample.

-----------------------------------------------
More Details
-----------------------------------------------
Microsoft Windows Text Services Framework (TSF) provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition. This sample provides the starting framework for a keyboard processor. 

-----------------------------------------------
Browser/Platform Compatibility and other Requirements
-----------------------------------------------
Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.

Text Services Framework runs on the Microsoft Windows XP operating system. It is available as a redistributable for Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.

The sample also requires Visual Studio and the Core SDK of the Microsoft Platform SDK. 
-----------------------------------------------
Usage
-----------------------------------------------
Complete the following three steps to create the basic text service.

1. Implement the ITfTextInputProcessor interface. 
2. Make the text service a COM server. 
3. Register the text service.

----------------------------------------------- 
Implement the ITfTextInputProcessor interface
-----------------------------------------------
ITfTextInputProcessor is the first interface to implement to create a text service. ITfTextInputProcessor inherits from IUnknown. In addition to the methods of IUnknown, ITfTextInputProcessor provides two methods, Activate and Deactivate. In the following example, the interface is implemented in the CTextService class. In this sample, CTextService class is declared in TextService.h and the function body is in TextService.cpp. The methods are empty for now.

class CTextService : public ITfTextInputProcessor
{
public:
    CTextService();
    ~CTextService();
 
    // IUnknown
    STDMETHODIMP QueryInterface(REFIID riid, void **ppvObj);
    STDMETHODIMP_(ULONG) AddRef(void);
    STDMETHODIMP_(ULONG) Release(void);
 
    // ITfTextInputProcessor
    STDMETHODIMP Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId);
    STDMETHODIMP Deactivate();

    // CClassFactory factory callback
    static HRESULT CreateInstance(IUnknown *pUnkOuter, REFIID riid, void **ppvObj);
 
private:
    LONG _cRef;     // COM ref count
};
//+---------------------------------------------------------------------------
// Activate
//----------------------------------------------------------------------------
STDAPI CTextService::Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId)
{
    return S_OK;
}
//+---------------------------------------------------------------------------
// Deactivate
//----------------------------------------------------------------------------
STDAPI CTextService::Deactivate()
{
    return S_OK;
}

-----------------------------------------------
Make the Text Service a COM Server
-----------------------------------------------
A TSF text service must be a COM server because the class factory needs to be able to create the object that implements the ITfTextInputProcessor interface. In this case it is an instance of the CTextService class. The DLLGetClassObject method returns the instance of the CClassFactory class. In this sample, the CClassFactory class is in Server.cpp. 

The COM export function DllRegisterServer calls two functions, RegisterServer and RegisterProfile. The RegisterServer function creates registry entries for the CTextService class. The registry entry values for the class are InProcServer32 and ThreadingModel(Apartment). The RegisterProfile function calls two methods, ITfInputProcessorProfiles::Register and ITfInputProcessorProfiles::AddLanguageProfile. ITfInputProcessorProfiles::Register registers the class id and allows TSF to recognize the CTextService object as a text service. ITfInputProcessorProfiles::AddLanguageProfile adds the profile to be activated. In this case, the profile is English US. The profile is identified by c_guidProfile, which is defined in Globals.cpp. The LangId(TEXTSERVICE_LANGID) is defined in Globals.h as MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US). The function bodies are in Register.cpp. 

The COM export function DLLUnregisterServer calls two methods, UnregisterServer and UnregisterProfile. UnregisterServer removes the registry entries for the class. UnregisterProfile calls ITfInputProcessorProfiles::Unregister that removes the class and the profile from use with TSF.The function bodies are in Register.cpp.

 
-----------------------------------------------
Register the Text Service
-----------------------------------------------
You need to compile the sample before registering it. To compile the source files for SimpleTextService, complete the following steps.

1. Open a command window. 
2. Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
3. Run SetEnv.bat. If you have Visual Studio .NET installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
4. Navigate to the sample directory. 
5. Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax: 
nmake
6. After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". After successful registration, the text service is shown in the Date, Time, Language and Regional Options control panel applet. To verify that your service is registered, follow these steps. 

1. Open the Control Panel. 
2. Select Date, Time, Language and Regional Options. 
3. Select Language and Regional Options. 
4. Click the Languages tab. 
5. In the "Text services and input languages" frame, click Details. 
You should see Sample Text Service under the Advanced Text Services heading. 
 

