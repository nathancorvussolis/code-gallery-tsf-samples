<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Basic Text Service (Sample 1 of 9)</TITLE>
</HEAD>
<BODY>
<%
}
// ********* STOP SEARCH INFO **********
%>
<%
    // -----------------------------------------------------------
    // MetaData constructor function
    // Authors/Editors enter document-specific data here
    // * this.title: document title, to appear in title bar and as H1 heading
    // * this.author: document author, for write-us link
    // * this.bannerPath: hard-coded toolbar banner (overrides path-based default)
    // -----------------------------------------------------------
    
function MetaData()
    {
        this.title = "MSDN Online Web & Internet Samples - Basic Text Service (Sample 1 of 9)";
        this.author = "";
        this.bannerPath = "";

        this.posted = "";
        this.updated = "";
        this.description = "";
        this.Welcome = "";
        this.robots = "all";
        this.keywords = "";
        this.locale = "en-us";
        this.contentID = "";

        this.adGraphicPath = "";
        this.adURL = "";

        //technet specific items
        this.thirdPartyImg = "";
        this.thirdPartyUrl = "";
        this.thirdPartyText = "";

        //optional values (default to false if ommitted)
        this.whiteSpace = "false";
        this.ratings = "false";

        // css and js links
        //this.thirdPartyCss = ""; // pipe (|)-delimited list of files
        //this.thirtPartyJs = "";

        
    }
    var oMD = new MetaData();

%>
<!--#include virtual="/library/shared/contenttemplate/inc/top.inc"-->

<!----------------->
<!--BEGIN_CONTENT-->
<!----------------->	
<FONT class="small" color="#ff0000"><P><B>Archived
content</B>. No warranty is made as to technical accuracy.&nbsp;Content may contain URLs that were valid when
originally published, but now link to sites or pages that no longer exist.</P></FONT>	
<!-- TOOLBAR_START --><!-- TOOLBAR_EXEMPT --><!-- TOOLBAR_END -->		
<SCRIPT LANGUAGE="JavaScript"><!--
			// These variables are used to dynamically control external code libraries.
			// They are needed because pages like this are dynamically created.  There is no
			// way for the static code libraries to know the path for this page, therefore,
			// pages like this use these control variables to pass important information
			// the libraries.
			var root = '/archive/en-us/samples/internet';	// the top-most root for this sample set.
//--></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC='/archive/en-us/samples/internet/wizard/code.js'></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC='/archive/en-us/samples/internet/showsample.js'></SCRIPT>
<SCRIPT LANGUAGE="JavaScript"><!--

		  // -----------------------------------------------------------
		  // window_load()
		  // Container function for load.
		  // -----------------------------------------------------------

		  function window_load()
		  { 
		    if (oBD.getsNavBar) if ("function" == typeof(CommonLoad)) CommonLoad();
			downloadSingleSample();				// does the downloading for this sample.
		  }
		  
		  window.onload = window_load;
//-->
</SCRIPT>
<SCRIPT SRC="/archive/en-us/samples/internet/templates/checkdemo.js" LANGUAGE="JavaScript"></SCRIPT>

<OBJECT CLASSID="clsid:156731E1-D652-11d1-BE03-00A0C9111212" WIDTH=1 HEIGHT=1 ID="sbnengine" codebase="/archive/en-us/samples/internet/sbncheck.cab#Version=3,0,0,0" VIEWASTEXT></object>
<OBJECT classid="CLSID:6E449683-C509-11CF-AAfA-00AA00B6015C" codebase="/archive/en-us/samples/internet/actsetupfix.cab#Version=5,00,1011,0400" height=1 id=asengine style="LEFT: 0px; TOP: 0px" width=1 VIEWASTEXT>
	<PARAM NAME="_ExtentX" VALUE="26"> 
	<PARAM NAME="_ExtentY" VALUE="26">
</OBJECT>

<DIV CLASS="clsDocBody">
<!--
		NOTE: 
		The table below is included for every page belonging to a particular sample.
		It contains the dropdown list box w/ all of the source files for the particular sample.
-->
<SCRIPT LANGUAGE="JavaScript" for="asengine" event="OnEngineStatusChange(NewState,Substate)"><!--
	if( isASSavvy() ){
		if( NewState == 3 ){
			prepASEngine(parent.holding);
			asengine.ProcessComponents(0);
		}
	}
//-->
</SCRIPT> 

<TABLE CELLPADDING="0" CELLSPACING="0" BORDER="0">
  <TR>
    <TD WIDTH="15" ROWSPAN="6"></TD>
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Basic Text Service (Sample 1 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'prB5F12A72BD9544A1B3CB7B18FBA9E6AA';
samp.caption = 'Basic Text Service (Sample 1 of 9)';
samp.version = '0.0.0.5';
samp.size = 78536;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/dl/cab7CA31.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 78536;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 78536;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 78536;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/BasicTextService.msi"><IMG ALIGN="middle" SRC="/archive/en-us/samples/internet/download.gif" 
WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/BasicTextService.msi">Download sample</A></DIV>
			</TD>
<!--_END_DOWNLOAD_-->

<!--_BEGIN_DEMOPAGE_-->
			<!--<TD VALIGN="bottom" WIDTH="22"><DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="#" ONCLICK="JavaScript:if 
(CheckDemo(0,1)) showSampleStatus('anchor_js.htm','480','640'); return false;"><IMG ALIGN="middle" SRC="/archive/en-us/samples/internet/demo.gif" WIDTH="16" 
HEIGHT="16" BORDER="0"></A></DIV></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="80"><DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="#" ONCLICK="JavaScript:if 
(CheckDemo(0,1)) showSampleStatus('anchor_js.htm','480','640'); return false;">Demo</A></DIV></TD>-->
<!--_END_DEMOPAGE_-->
		</TR>
		<tr>
			<td colspan="2">
				<form name="myform" id="myform">
				<table border=0 cellpadding="0" cellspacing="0">
					<tr>
						<td valign=center>
							<script language="javascript">
							    if (oBD.browser == "MSIE")
							    {
								    var mark = "checked";
								
								    if( location.search.indexOf("use_tech=false") != -1 && location.search != null)
									    mark = "";
									
								    if( isASSavvy() | isSUSavvy() )
									    document.write("");
							    }
							</script>
						</td>
						<td valign=center>
							<DIV CLASS="clsDocBody" style="margin-left:0px;margin-top:0px">
							<script language="javascript">
							    if (oBD.browser == "MSIE")
							    {
							        if( isASSavvy() | isSUSavvy() )
								    document.write("")
								}
							</script>
							</DIV>
						</td>
					</tr>
				</table>
				</form>
			</td>
		</tr>		
		<TR>
			<TD HEIGHT="10" COLSPAN="4"></TD>
		</TR>
		<TR>
			<TD COLSPAN="4">
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<FORM CLASS="samples" id=form2 name=form2>
				<SELECT NAME="region" onchange="window.location=this.options[selectedIndex].value;this.selectedIndex=0;">
					<OPTION VALUE="Javascript:NoFileSelected()">view source</OPTION>
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/globals.h', '400', '600' )">globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/TextService.h', '400', '600' )">TextService.h</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/BasicTextService/TextService.h></A> -->

				</SELECT>
			</FORM>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			</TD>
		</TR>
	</TABLE>
<BR>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
<DIV CLASS="clsDocBody">
<!--_BEGIN_DESCRIPTION1_-->
<H2><B>Description</B></H2>
<p>This sample is the first in a series of nine samples that teach you how to create a text service. This sample is a basic text service with very little functionality. Each sample in the series adds functionality to the previous sample.</p>
<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft® Windows® <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition. This sample provides the starting framework for a keyboard processor. </p>
<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.</p>
<p>Text Services Framework runs on the Microsoft® Windows XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Windows 98, Windows Millennium Edition, Windows NT® 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft® Visual Studio® .NET 2003, or Visual Studio® 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.  
</p>
<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>Complete the following three steps to create the basic text service.</p>
<ol>
<li>Implement the <A HREF="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor.asp?frame=true" TARGET="_blank">ITfTextInputProcessor</A> interface.
</li>
<li>Make the text service a COM server.
</li>
<li>Register the text service.
</li>
</ol>
<H3>Implement the ITfTextInputProcessor Interface</H3>
<p><b>ITfTextInputProcessor</b> is the first interface to implement to create a text service. <A HREF="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor.asp?frame=true" TARGET="_blank">ITfTextInputProcessor</A> inherits from <A HREF="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_9dwu.asp?frame=true" TARGET="_blank">IUnknown</A>. In addition to the methods of <b>IUnknown</b>, <b>ITfTextInputProcessor</b> provides two methods, <A HREF="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor_activate.asp?frame=true" TARGET="_blank">Activate</A> and <A HREF="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor_deactivate.asp?frame=true" TARGET="_blank">Deactivate</A>. In the following example, the interface is implemented in the <i>CTextService</i> class. In this sample, <i>CTextService</i> class is declared in TextService.h and the function body is in TextService.cpp. The methods are empty for now.</p> 
<pre>class CTextService : public ITfTextInputProcessor
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
</pre>

<h3>Make the Text Service a COM Server</h3>
<p>A TSF text service must be a COM server because the class factory needs to be able to create the object that implements the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftextinputprocessor.asp" TARGET="_blank">ITfTextInputProcessor</a> interface. In this case it is an instance of the <i>CTextService</i> class. The <i>DLLGetClassObject</i> method returns the instance of the <i>CClassFactory</i> class.  In this sample, the <i>CClassFactory</i> class is in Server.cpp. </p>
<p>The COM export function <i>DllRegisterServer</i> calls two functions, <i>RegisterServer</i> and <i>RegisterProfile</i>. The <i>RegisterServer</i> function creates registry entries for the <i>CTextService</i> class. The registry entry values for the class are InProcServer32 and ThreadingModel(Apartment). <i>The RegisterProfile</i> function calls two methods, <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfinputprocessorprofiles_register.asp" TARGET="_blank">ITfInputProcessorProfiles::Register</a> and <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfinputprocessorprofiles_addlanguageprofile.asp" TARGET="_blank">ITfInputProcessorProfiles::AddLanguageProfile</a>. <b>ITfInputProcessorProfiles::Register</b> registers the class id and allows TSF to recognize the <i>CTextService</i> object as a text service. <b>ITfInputProcessorProfiles::AddLanguageProfile</b> adds the profile to be activated. In this case, the profile is English US. The profile is identified by c_guidProfile, which is defined in Globals.cpp. The LangId(TEXTSERVICE_LANGID) is defined in Globals.h as MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US).  The function bodies are in Register.cpp.
</p>
<p>The COM export function <i>DLLUnregisterServer</i> calls two methods, <i>UnregisterServer</i> and <i>UnregisterProfile</i>. <i>UnregisterServer</i> removes the registry entries for the class. <i>UnregisterProfile</i> calls <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfinputprocessorprofiles_unregister.asp" TARGET="_blank">ITfInputProcessorProfiles::Unregister</a> that removes the class and the profile from use with TSF. The function bodies are in Register.cpp.
</p>
<h3>Register the Text Service</h3>
<p>You need to compile the sample before registering it.<!-- @WRITER dawnwood 5/5/2003 Leave this in a comment for now. I'm not sure if I will be able to includcompileded samples: You can use the compiled sample provided in this download, or you can compile the source files yourself. --> To compile the source files for this sample, complete the following steps.</p>
<ol>
<li>Open a command window. 
</li>
<li>Run vsvars32.bat. If you have Visual Studio .NET installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat".
</li>
<li>Run SetEnv.bat. If you have Visual Studio .NET installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL.
</li>
<li>Navigate to the sample directory. 
</li>
<li>Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax:
<pre>nmake</pre>
</li>
</ol>
<p>After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". After successful registration, the text service is shown in the <b>Date, Time, Language and Regional Options</b> control panel applet.<!--What is the correct way to describe this? Probably not "applet"--> To verify that your service is registered, follow these steps. 
</p>
<ol>
<li>Open the Control Panel.
</li>
<li>Select <b>Date, Time, Language and Regional Options</b>. 
</li>
<li>Select <b>Language and Regional Options</b>.
</li>
<li>Click the <b>Languages</b> tab.
</li>
<li>In the <b>Text services and input languages</b> frame, click <b>Details</b>.
</li>
<li>You should see <b>Sample Text Service</b> under the <b>Advanced Text Services</b> heading.
</li>
</ol>
<img alt="Advanced Text Service in Control Panel" src="TextServiceCP.JPG"/>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFramework/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

<!--_END_RELATEDSITES_-->
</DIV>
<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->

</DIV>

<!----------------->
<!--END_CONTENT-->
<!----------------->
<!--#include virtual="/library/shared/contenttemplate/inc/bottom.inc"-->
<%if(false)
{
%>
</BODY>
</HTML>
<%
}
%>

