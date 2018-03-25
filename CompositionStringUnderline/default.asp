<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with Composition String Underline (Sample 8 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with Composition String Underline (Sample 8 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with Composition String Underline (Sample 8 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'pr6CD6225285C845419F37E100B42DB2BD';
samp.caption = 'Text Service with Composition String Underline (Sample 8 of 9)';
samp.version = '0.0.0.4';
samp.size = 132297;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/dl/cab7D8FB.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 132297;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 132297;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 132297;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesCompositionStringUnderline.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesCompositionStringUnderline.msi">Download 
sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Compartment.cpp', '400', '600' )">Compartment.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Composition.cpp', '400', '600' )">Composition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/DisplayAttribute.cpp', '400', '600' )">DisplayAttribute.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/DisplayAttributeInfo.cpp', '400', '600' )">DisplayAttributeInfo.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/DisplayAttributeInfo.h', '400', '600' )">DisplayAttributeInfo.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/DisplayAttributeProvider.cpp', '400', '600' )">DisplayAttributeProvider.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/EditSession.h', '400', '600' )">EditSession.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/EndComposition.cpp', '400', '600' )">EndComposition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/EnumDisplayAttributeInfo.cpp', '400', '600' )">EnumDisplayAttributeInfo.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/EnumDisplayAttributeInfo.h', '400', '600' )">EnumDisplayAttributeInfo.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Globals.h', '400', '600' )">Globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/KeyEventSink.cpp', '400', '600' )">KeyEventSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/KeyHandler.cpp', '400', '600' )">KeyHandler.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/LanguageBar.cpp', '400', '600' )">LanguageBar.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/StartComposition.cpp', '400', '600' )">StartComposition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Compartment.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Composition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/DisplayAttribute.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/DisplayAttributeInfo.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/DisplayAttributeInfo.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/DisplayAttributeProvider.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/EditSession.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/EndComposition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/EnumDisplayAttributeInfo.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/EnumDisplayAttributeInfo.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/KeyEventSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/KeyHandler.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/LanguageBar.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/StartComposition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CompositionStringUnderline/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the eighth in a series of nine samples that show you how to create a text service. This sample is a text service that provides feedback to the user by underlining the composition string when the user presses the ENTER key. The next sample in the series, <a href="/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp" TARGET="_blank">Text Service with Candidate List</a>, provides a fully functional keyboard text service.</p>

<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft® Windows® <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multi-language support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.</p>

<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multi-language support is recommended.</p>
<p>Text Services Framework runs on the Microsoft® Windows® XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Windows 98, Windows Millennium Edition, Windows NT® 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft® Visual Studio® .NET 2003, or Visual Studio® 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.</p>

<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>Text Services Framework enables a text service to provide display attributes for text. This enables an application to display additional visual feedback. For example, a spelling checker text service can highlight a misspelled word with a red underline. The display attributes that can be provided are defined by the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/tf_displayattribute.asp" TARGET="_blank">TF_DISPLAYATTRIBUTE</a> structure and include text color, text background color, underline style, underline color, and underline weight. For more information, see <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/providing_display_attributes.asp" TARGET="_blank">Providing Display Attributes</a>. This sample uses display attributes to underline the composition string. To enable the sample to use display attributes, complete the following steps.
</p>
<ol>
<li>Categorize the text service.
</li>
<li>Implement the ITfDisplayAttributeProvider interface.
</li>
<li>Add display attributes.
</li>
<li>Register the text service.
</li>
</ol>
<h3>Categorize the Text Service</h3>

<p>In the <a href="/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp" TARGET="_blank">Text Service with Keyboard Functionality (Sample 6 of 9)</a> sample, you registered the text service as a keyboard text service by registering the CLSID of text service with a category value of GUID_TFCAT_TIP_KEYBOARD. In this sample, the text service is also registered as a display provider by registering the CLSID with a category value of GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER. Call the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcategorymgr_registercategory.asp" TARGET="_blank">ITfCategoryMgr::RegisterCategory</a> method to create the appropriate category for the text service. In the following example from the <i>RegisterCategories</i> method in Register.cpp, <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmf_a2c_1nad.asp" TARGET="_blank">CoCreateInstance</a> is called to create an instance of the category manager object and to receive a pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcategorymgr.asp" TARGET="_blank">ITfCategoryMgr</a> interface.
</p>
<pre>BOOL RegisterCategories()
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
}</pre>
<h3>Implement the ITfDisplayAttributeProvider Interface</h3>
<p>The <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfdisplayattributeprovider.asp" TARGET="_blank">ITfDisplayAttributeProvider</a> interface needs to be created by the class factory with the CLSID used in the previous example. In this sample, the <i>CTextService</i> implements the <b>ITfDisplayAttributeProvider</b> interface. It is declared in TextService.h, as in the following example.
</p>
<pre>class CTextService : public ITfTextInputProcessor,
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
    STDMETHODIMP GetDisplayAttributeInfo(REFGUID guidInfo, ITfDisplayAttributeInfo **ppInfo);</pre>
<p>Call <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> to return a pointer to the <b>ITfDisplayAttributeProvider</b> interface, as in the following example.
</p>
<pre>STDAPI CTextService::QueryInterface(REFIID riid, void **ppvObj)
{
          :
    else if (IsEqualIID(riid, IID_ITfDisplayAttributeProvider))
    {
        *ppvObj = (ITfDisplayAttributeProvider *)this;
    }
          :
}</pre>
<h3>Add Display Attributes</h3>

<p>This sample provides two display attributes, defined in the <i>c_guidDisplayAttributeInput</i> and the <i>c_guidDisplayAttributeConverted</i>  variables. <i>c_guidDisplayAttributeInput</i> holds the composition string entered by the user. <i>c_guidDisplayAttributeConverted</i> holds the converted composition string. The conversion of the string occurs when the user presses ENTER.
</p>
<p>In the following example, the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfdisplayattributeprovider_getdisplayattributeinfo.asp" TARGET="_blank">ITfDisplayAttributeProvider::GetDisplayAttributeInfo</a> method returns a pointer to the <b>ITfDisplayAttributeInfo</b> interface on either the <i>CDisplayAttributeInfoInput</i> or the <i>CDisplayAttributeInfoConverted</i> class.
</p>
<pre>STDAPI CTextService::GetDisplayAttributeInfo(REFGUID guidInfo, ITfDisplayAttributeInfo **ppInfo)
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
}</pre>
<p>When the text service is activated, you must create a <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/tfguidatom.asp " TARGET="_blank">TfGuidAtom</a>. In this sample, in the <i>CTextService::_InitDisplayAttributeGuidAtom</i> method in DisplayAttribute.cpp, the <b>TfGuidAtom</b> is created by calling <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcategorymgr_registerguid.asp" TARGET="_blank">ITfCategoryMgr::RegisterGUID</a>. <b>RegisterGUID</b> converts the display attribute guids held in <i>c_guidDisplayAttributeInput</i> and <i>c_guidDisplayAttributeConverted</i>, and stores them in the <i>CTextService::_gaDisplayAttributeInput</i> and <i>CTextService::_gaDisplayAttributeConverted</i> variables.  The display attribute is applied to text through <i>DisplayAttributeProperty</i>, which is identified by GUID_PROP_ATTRIBUTE. 
</p>
<p>In the following example from <i>CTextService::_SetCompositionDisplayAttributes</i> from DisplayAttribute.cpp, the call to <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontext_getproperty.asp" TARGET="_blank">ITfContext::GetProperty</a> with GUID_PROP_ATTRIBUTE as the first parameter returns the pointer to the <i>DisplayAttributeProperty</i>. Next, <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfproperty_setvalue.asp" TARGET="_blank">ITfProperty::SetValue</a> is called to set the value of the display property on the range of text. 
</p>
<pre>ITfProperty *pDisplayAttributeProperty;
if (pContext->GetProperty(GUID_PROP_ATTRIBUTE, &pDisplayAttributeProperty) == S_OK)
{
    VARIANT var;
    var.vt = VT_I4; // set a TfGuidAtom
    var.lVal = gaDisplayAttribute;
    hr = pDisplayAttributeProperty->SetValue(ec, pRange, &var);
    pDisplayAttributeProperty->Release();
}</pre>
<p><i>CTextService::_SetCompositionDisplayAttributes</i> calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcomposition_getrange.asp" TARGET="_blank">ITfComposition::GetRange</a> to get the range object that contains the text covered by the composition. In this sample, the function always applies the display attribute to the entire range of the composition. You can, however, apply a display attribute to part of the composition range as well. 
</p>
<p>In the following example, <i>CTextService::__HandlerCharacterKey</i> calls <i>CTextService::_SetCompositionDisplayAttributes</i> with <i>_gaDisplayAttributeInput</i> as the first parameter. The display attribute is applied to the composition range after the character is typed. In this case, the display attribute is red text with a red underline. 
</p>
<p>
<img src="compositionstring.jpg" alt="Red text with red underline"/>
</p>
<pre>HRESULT CTextService::_HandleCharacterKey(TfEditCookie ec, ITfContext *pContext, WPARAM wParam)
{
          :
    //
    // set the display attribute to the composition range.
    //
    _SetCompositionDisplayAttributes(ec, pContext, _gaDisplayAttributeInput);
          :
}</pre>
<p>The next step is to add a handler for the SPACEBAR. In this sample, when the SPACEBAR is pressed after typing "compositionstring", the foreground color of the text changes to white and the background color of the text changes to blue. In the following example, <i>CTextService::_IsKeyEaten</i> returns TRUE when VK_SPACE is passed to it, and as long as a composition object exists. <i>CTextService::_HandleSpaceKey</i> is called when the VK_SPACE key is processed, which in turn calls <i>CTextService::_SetCompositionDisplayAttributes</i>.
</p>
<p><img src="compositionstring2.jpg" alt="White text with blue background"/>
</p>
<pre>HRESULT CTextService::_HandleSpaceKey(TfEditCookie ec, ITfContext *pContext)
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
}</pre>
<p>The text service should clear the display attributes from the composition string when it is terminated. In this sample, the composition string is terminated when the user presses the ENTER key. In the following example, <i>CTextService::_TerminateComposition</i> calls <i>CTextService::_ClearCompositionDisplayAttribute</i> when the user presses ENTER.
</p>
<p>
<img src="compositionstring3.jpg" alt="Normal text restored"/> 
</p>
<pre>void CTextService::_TerminateComposition(TfEditCookie ec, ITfContext *pContext)
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
}</pre>
<h3>Register the Text Service</h3>
<p>You must compile the sample before registering it. To compile the source files for this sample, complete the following steps.</p>
<p><b>Note:</b>  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.</p>
<ol>
<li>Open a command window. 
</li>
<li>Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat".
</li>
<li>Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL.
</li>
<li>Navigate to the sample directory. 
</li>
<li>Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory, allow you to use the following syntax:
<pre>nmake</pre>
</li>
<li>If you registered the DLL in any of the previous samples, you will have to unregister it. The command, at the command prompt, is "Regsvr32.exe -u <path> \TextService.dll".
</li>
<li>Register the DLL with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll".
</li>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

