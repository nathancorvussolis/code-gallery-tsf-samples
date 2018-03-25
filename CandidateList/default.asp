<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with Candidate List (Sample 9 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with Candidate List (Sample 9 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with Candidate List (Sample 9 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'prAB8BE8F254384AD19C7E36CBDBA8FA62';
samp.caption = 'Text Service with Candidate List (Sample 9 of 9)';
samp.version = '0.0.0.3';
samp.size = 172731;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/dl/cab60796.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 172731;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 172731;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 172731;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesCandidateList.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesCandidateList.msi">Download sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/CandidateList.cpp', '400', '600' )">CandidateList.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/CandidateList.h', '400', '600' )">CandidateList.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/CandidateWindow.cpp', '400', '600' )">CandidateWindow.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/CandidateWindow.h', '400', '600' )">CandidateWindow.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Compartment.cpp', '400', '600' )">Compartment.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Composition.cpp', '400', '600' )">Composition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/DisplayAttribute.cpp', '400', '600' )">DisplayAttribute.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/DisplayAttributeInfo.cpp', '400', '600' )">DisplayAttributeInfo.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/DisplayAttributeInfo.h', '400', '600' )">DisplayAttributeInfo.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/DisplayAttributeProvider.cpp', '400', '600' )">DisplayAttributeProvider.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/EditSession.h', '400', '600' )">EditSession.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/EndComposition.cpp', '400', '600' )">EndComposition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/EnumDisplayAttributeInfo.cpp', '400', '600' )">EnumDisplayAttributeInfo.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/EnumDisplayAttributeInfo.h', '400', '600' )">EnumDisplayAttributeInfo.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Globals.h', '400', '600' )">Globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/KeyEventSink.cpp', '400', '600' )">KeyEventSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/KeyHandler.cpp', '400', '600' )">KeyHandler.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/LanguageBar.cpp', '400', '600' )">LanguageBar.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/StartComposition.cpp', '400', '600' )">StartComposition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/CandidateList.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/CandidateList.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/CandidateWindow.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/CandidateWindow.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Compartment.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Composition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/DisplayAttribute.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/DisplayAttributeInfo.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/DisplayAttributeInfo.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/DisplayAttributeProvider.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/EditSession.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/EndComposition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/EnumDisplayAttributeInfo.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/EnumDisplayAttributeInfo.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/KeyEventSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/KeyHandler.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/LanguageBar.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/StartComposition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/CandidateList/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the ninth in a series of nine samples that show you how to create a text service. This sample is a text service that uses a candidate list. It is the last sample in the series and is a fully functional keyboard text service. </p>

<p>For the sake of simplicity, the candidate list in this sample is implemented as a pop-up window. For more information on creating a candidate list, see <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcandidatelist.asp" TARGET="_blank">ITfCandidateList</a>.
</p>
<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft® Windows® <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for the delivery of advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.</p>

<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.</p>
<p>Text Services Framework runs on the Microsoft® Windows® XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Windows 98, Windows Millennium Edition, Windows NT® 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft® Visual Studio® .NET 2003, or Visual Studio® 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.</p>

<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>To create a candidate list user interface (UI), complete the following steps.
<ol>
<li>Create a new context for the candidate list.
</li>
<li>Implement the ITfContextView interface.
</li>
<li>Track layout changes.
</li>
<li>Register the text service.
</li>
</ol>    
<h3>Create a New Context for the Candidate List</h3>
<p>The text service creates a new context for the candidate list user interface (UI) so that the text service can handle all key events through <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextkeyeventsink.asp" TARGET="_blank">ITfContextKeyEventSink</a>. This is desirable if the UI is modal, as is the case with the pop-up window in this sample. If the UI is not modal, it should not create a new context.
</p>
<p>In the following example from <i>CCandidateList::_StartCandidateList</i> in CandidateList.cpp, the text service calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfdocumentmgr_createcontext.asp" TARGET="_blank">ITfDocumentMgr::CreateContext</a> to create a context for the candidate list UI, and <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfdocumentmgr_push.asp" TARGET="_blank">ITfDocumentMgr::Push</a> to make the push the context to the top of the context stack. The <i>CCandidateList</i> class inherits from the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextkeyeventsink.asp" TARGET="_blank">ITfContextKeyEventSink</a> interface, so that <i>CCandidateList::_AdviseContextKeyEventSink</i> can install an advise sink for the candidate list ui.
</p>
<pre>//
// create a new context on the document manager object for
// the candidate list ui.
//
if (FAILED(pDocumentMgr->CreateContext(tfClientId, 0, NULL, &_pContextCandidateWindow, &ecTmp)))
    return E_FAIL;
 
//
// push the new context.
//
if (FAILED(pDocumentMgr->Push(_pContextCandidateWindow)))
    goto Exit;</pre>
<h3>Implement the ITfContextView Interface</h3>
<p>The text service uses the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextview_gettextext.asp" TARGET="_blank">ITfContextView::GetTextExt</a> method to determine the screen coordinates of the bounding box surrounding the text range. The <i>CCandidateList::_StartCandidateList</i> method returns the active view of the document context as well as the screen coordinates of the composition range.
</p>
<pre>//
// get an active view of the document context.
//
if (FAILED(pContextDocument->GetActiveView(&pContextView)))
    goto Exit;
 
//
// get text extent for the range of the composition.
//
if (FAILED(pContextView->GetTextExt(ec, pRangeComposition, &rc, &fClipped)))
    goto Exit;
 
pContextView->Release();</pre>
<h3>Track Layout Changes</h3>
<p> The <i>CCandidateList</i> class inherits from the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextkeyeventsink.asp" TARGET="_blank">ITfTextLayoutSink</a> interface, so that <i>CCandidateList::_AdviseTextLayoutSink</i> can install an advise sink for the document context to track any changes to the layout of the document. If the layout changes when the candidate list ui is visible, the text service calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextlayoutsink_onlayoutchange.asp" TARGET="_blank">ITfTextLayoutSink::OnLayoutChange</a>. The text service  moves the candidate list ui when the layout is changed, as in the following example from <i>CCandidateList::OnLayoutChange</i> in CandidateList.cpp.
</p>
<pre>
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
</pre>
<h3>Register the Text Service</h3>
<p>The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.</p>
<p><b>Note:</b>&nbsp; Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.</p>
<ol>
<li>Open a command window. 
</li>
<li>Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat".
</li>
<li>Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL.
</li>
<li>Navigate to the sample directory. 
</li>
<li>Run nmake. The batch files from the previous steps, along with the makefile provided for you in the sample directory, allow you to use the following syntax:
<pre>nmake</pre>
</li>
</ol>
<p><b>Note:</b>&nbsp; If you have already registered TextService.dll using the code from an earlier sample, you can omit this step. </p>
<p>After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe &#60;path&#62;&nbsp;&#92;TextService.dll". 
</p> 
<p>After the text service is properly registered, you will see a candidate list and candidate list ui.
</p>
<img src="CandidateListUI.jpg" alt="Candidate List UI in WordPad"/>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

