-----------------------------------------------
Text Service with Composition String Underline (Sample 8 of 9)
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
3.DisplayAttribute.cpp
4.DisplayAttributeInfo.cpp
5.DisplayAttributeInfo.h
6.DisplayAttributeProvider.cpp
7.DllMain.cpp
8.EditSession.h
9.EndComposition.cpp
10.EnumDisplayAttributeInfo.cpp
11.EnumDisplayAttributeInfo.h
12.Globals.cpp
13.globals.h
14.KeyEventSink.cpp
15.KeyHandler.cpp
16.LanguageBar.cpp
17.makefile
18.PreComp.cpp
19.Register.cpp
20.Resource.h
21.Server.cpp
22.StartComposition.cpp
23.TextEditSink.cpp
24.TextService.cpp
25.TextService.def
26.TextService.h
27.TextService.ico
28.TextService.rc
29.ThreadMgrEventSink.cpp


-----------------------------------------------
Description
-----------------------------------------------
This sample is the eighth in a series of nine samples that guide you through the creation of a text service. This sample is a text service that provides feedback to the user by underlining the composition string when the user presses the ENTER key. The next sample in the series, Text Service with Candidate List, provides a fully functional keyboard text service.

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
Text Services Framework enables a text service to provide display attributes for text. This enables an application to display additional visual feedback. For example, a spelling checker text service can highlight a misspelled word with a red underline. The display attributes that can be provided are defined by the TF_DISPLAYATTRIBUTE structure and include text color, text background color, underline style, underline color, and underline weight. For more information, see Providing Display Attributes. This sample uses display attributes to underline the composition string. To enable the sample to use display attributes, complete the following steps. 

1.Categorize the text service. 
2.Implement the ITfDisplayAttributeProvider interface. 
3.Add display attributes. 
4.Register the text service. 

-----------------------------------------------
Categorize the Text Service
-----------------------------------------------

In the Text Service with Keyboard Functionality (Sample 6 of 9) sample, you registered the text service as a keyboard text service by registering the CLSID of text service with a category value of GUID_TFCAT_TIP_KEYBOARD. In this sample, the text service is also registered as a display provider by registering the CLSID with a category value of GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER. Call the ITfCategoryMgr::RegisterCategory method to create the appropriate category for the text service. In the following example from the RegisterCategories method in Register.cpp, CoCreateInstance is called to create an instance of the category manager object and to receive a pointer to the ITfCategoryMgr interface. 

BOOL RegisterCategories()
{
    ITfCategoryMgr *pCategoryMgr;
    HRESULT hr;
 
    hr = CoCreateInstance(CLSID_TF_CategoryMgr, NULL, CLSCTX_INPROC_SERVER, 
                          IID_ITfCategoryMgr, (void**)&pCategoryMgr);
 
    if (hr != S_OK)
        return FALSE;
 
    //
    // register this text service to GUID_TFCAT_TIP_KEYBOARD category.
    //
    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_TIP_KEYBOARD, 
                                        c_clsidTextService);
 
    //
    // register this text service to GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER category.
    //
    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER, 
                                        c_clsidTextService);
 
 
    pCategoryMgr->Release();
    return (hr == S_OK);
}

-----------------------------------------------
Implement the ITfDisplayAttributeProvider Interface
-----------------------------------------------
The ITfDisplayAttributeProvider interface needs to be created by the class factory with the CLSID used in the previous example. In this sample, the CTextService implements the ITfDisplayAttributeProvider interface. It is declared in TextService.h, as in the following example. 

class CTextService : public ITfTextInputProcessor,
                     public ITfThreadMgrEventSink,
                     public ITfTextEditSink,
                     public ITfKeyEventSink,
                     public ITfCompositionSink
                     public ITfCompositionSink,
                     public ITfDisplayAttributeProvider
{
          :
    // ITfDisplayAttributeProvider
    STDMETHODIMP EnumDisplayAttributeInfo(IEnumTfDisplayAttributeInfo **ppEnum);
    STDMETHODIMP GetDisplayAttributeInfo(REFGUID guidInfo, ITfDisplayAttributeInfo **ppInfo);
Call QueryInterface to return a pointer to the ITfDisplayAttributeProvider interface, as in the following example. 

STDAPI CTextService::QueryInterface(REFIID riid, void **ppvObj)
{
          :
    else if (IsEqualIID(riid, IID_ITfDisplayAttributeProvider))
    {
        *ppvObj = (ITfDisplayAttributeProvider *)this;
    }
          :
}

-----------------------------------------------
Add Display Attributes
-----------------------------------------------
This sample provides two display attributes, defined in the c_guidDisplayAttributeInput and the c_guidDisplayAttributeConverted. variables. c_guidDisplayAttributeInput holds the composition string typed in by the user. c_guidDisplayAttributeConverted holds the converted composition string. The conversion of the string occurs when the user presses ENTER. 

In the following example, the ITfDisplayAttributeProvider::GetDisplayAttributeInfo method returns a pointer to the ITfDisplayAttributeInfo interface on either the CDisplayAttributeInfoInput or the CDisplayAttributeInfoConverted class. 

STDAPI CTextService::GetDisplayAttributeInfo(REFGUID guidInfo, ITfDisplayAttributeInfo **ppInfo)
{
    if (ppInfo == NULL)
        return E_INVALIDARG;
 
    *ppInfo = NULL;
 
    // Which display attribute GUID?
    if (IsEqualGUID(guidInfo, c_guidDisplayAttributeInput))
    {
        if ((*ppInfo = new CDisplayAttributeInfoInput()) == NULL)
            return E_OUTOFMEMORY;
    }
    else if (IsEqualGUID(guidInfo, c_guidDisplayAttributeConverted))
    {
        if ((*ppInfo = new CDisplayAttributeInfoConverted()) == NULL)
            return E_OUTOFMEMORY;
    }
    else
    {
        return E_INVALIDARG;
    }
 
    return S_OK;
}
When the text service is activated, you must create a TfGuidAtom. In this sample, in the CTextService::_InitDisplayAttributeGuidAtom method in DisplayAttribute.cpp, the TfGuidAtom is created by calling ITfCategoryMgr::RegisterGUID. RegisterGUID converts the display attribute guids held in c_guidDisplayAttributeInput and c_guidDisplayAttributeConverted, and stores them in the CTextService::_gaDisplayAttributeInput and CTextService::_gaDisplayAttributeConverted variables. The display attribute is applied to text through DisplayAttributeProperty, which is identified by GUID_PROP_ATTRIBUTE. 

In the following example from CTextService::_SetCompositionDisplayAttributes from DisplayAttribute.cpp, the call to ITfContext::GetProperty with GUID_PROP_ATTRIBUTE as the first parameter returns the pointer to the DisplayAttributeProperty. Next, ITfProperty::SetValue is called to set the value of the display property on the range of text. 

ITfProperty *pDisplayAttributeProperty;
if (pContext->GetProperty(GUID_PROP_ATTRIBUTE, &pDisplayAttributeProperty) == S_OK)
{
    VARIANT var;
    var.vt = VT_I4; // set a TfGuidAtom
    var.lVal = gaDisplayAttribute;
    hr = pDisplayAttributeProperty->SetValue(ec, pRange, &var);
    pDisplayAttributeProperty->Release();
}
CTextService::_SetCompositionDisplayAttributes calls ITfComposition::GetRange to get the range object that contains the text covered by the composition. In this sample, the function always applies the display attribute to the entire range of the composition. You can, however, apply a display attribute to part of the composition range as well. 

In the following example, CTextService::__HandlerCharacterKey calls CTextService::_SetCompositionDisplayAttributes with _gaDisplayAttributeInput as the first parameter. The display attribute is applied to the composition range after the character is typed. In this case, the ddisplayattribute is a red text with a red underline. 

 

HRESULT CTextService::_HandleCharacterKey(TfEditCookie ec, ITfContext *pContext, WPARAM wParam)
{
          :
    //
    // set the display attribute to the composition range.
    //
    _SetCompositionDisplayAttributes(ec, pContext, _gaDisplayAttributeInput);
          :
}
The next step is to add a handler for the SPACEBAR. In this sample, when the SPACEBAR is pressed after typing "compositionstring", the foreground color of the text changes to white and the background color of the text changes to blue. In the following example, CTextService::_IsKeyEaten returns TRUE when VK_SPACE is passed to it, and as long as a composition object exists. CTextService::_HandleSpaceKey is called when the VK_SPACE key is processed, which in turn calls CTextService::_SetCompositionDisplayAttributes. 

 

HRESULT CTextService::_HandleSpaceKey(TfEditCookie ec, ITfContext *pContext)
{
    //
    // set the display attribute to the composition range.
    //
    // The real text service may have linguistic logic here and set 
    // the specific range to apply the display attribute rather than 
    // applying the display attribute to the entire composition range.
    //
    _SetCompositionDisplayAttributes(ec, pContext, _gaDisplayAttributeConverted);
 
    return S_OK;
}
The text service should clear the display attributes from the composition string when it is terminated. In this sample, the composition string is terminated when the user presses the ENTER key. In the following example, CTextService::_TerminateComposition calls CTextService::_ClearCompositionDisplayAttribute when the user presses ENTER. 

 

void CTextService::_TerminateComposition(TfEditCookie ec, ITfContext *pContext)
{
    if (_pComposition != NULL)
    {
        //
        // remove the display attribute from the composition range.
        //
        _ClearCompositionDisplayAttributes(ec, pContext);
 
        _pComposition->EndComposition(ec);
        _pComposition->Release();
        _pComposition = NULL;
    }
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
5.Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax: 
nmake
6.If you registered the DLL in any of the previous samples, you will have to unregister it. The command, at the command prompt, is "Regsvr32.exe -u <path> \TextService.dll". 
7.Register the DLL with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 

