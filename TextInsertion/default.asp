<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with Text Insertion (Sample 5 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with Text Insertion (Sample 5 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with Text Insertion (Sample 5 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'prD9943C4C384F445EA9523FDFC483FB9C';
samp.caption = 'Text Service with Text Insertion (Sample 5 of 9)';
samp.version = '0.0.0.3';
samp.size = 118213;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/dl/cab46973.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 118213;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 118213;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 118213;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesTextInsertion.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesTextInsertion.msi">Download sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/EditSession.h', '400', '600' )">EditSession.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/Globals.h', '400', '600' )">Globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/InsertHello.cpp', '400', '600' )">InsertHello.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/LanguageBar.cpp', '400', '600' )">LanguageBar.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/EditSession.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/Globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/InsertHello.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/LanguageBar.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TextInsertion/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the fifth in a series of nine samples that guide you through the creation of a text service. This sample is a text service that uses selection and range to insert text in a document. Each sample in the series adds functionality to the previous sample.</p>

<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft® Windows® <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for the delivery of advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.</p>

<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.</p>
<p>Text Services Framework runs on the Microsoft Windows XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Microsoft Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft® Visual Studio® .NET 2003, or Visual Studio® 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.</p>

<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>There are four steps to insert text into a document.</p>
<ol>
<li>Implement the ITfEditSession interface.
</li>
<li>Insert text at the selection point.
</li>
<li>Add a new menu item to the language bar.
</li>
<li>Register the text service.
</li>
</ol>
<h3>Implement the ITfEditSession Interface</h3>
<p>The <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfeditsession.asp" TARGET="_blank">ITfEditSession</a> interface is used by the TSF manager to read and/or modify the text and properties of an <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_contexts.asp" TARGE="_blank">edit context</a>. In this sample, the <i>CEditSession</i> class inherits from <b>ITfEditSession</b>. <i>CEditSession</i> is a base class defined in EditSession.h with basic implementation for <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_9dwu.asp">IUnknown</a> methods as well as a virtual implementation of the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfeditsession_doeditsession.asp" TARGET="_blank">ITfEditSession::DoEditSession</a> method. The <i>CInsertHelloEditSession</i> class inherits from <i>CEditSession</i> and implements the <b>ITfEditSession::DoEditSession</b> method as <i>CInsertHelloEditSession::DoEditSession</i> in InsertHello.cpp. <i>DoEditSession</i> calls the static function <i>InsertTextAtSelection</i>, which inserts the string "Hello World" into the current document. The instance of the <i>CInsertHelloEditSession</i> class is created in the <i>CTextService::InsertHello</i> function, which also requests the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_sessions.asp" TARGET="_blank">edit session</a> from the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_contexts.asp" TARGET="_blank">edit context</a>.</p>
<p>If the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontext_requesteditsession.asp" TARGET="_blank">ITfContext::RequestEditSession</a> method succeeds, the edit context calls the <i>CInsertHelloEditSession::DoEditSession</i> method. This call can be synchronous (<i>CInsertHelloEditSession::DoEditSession</i> is called at the same time as <b>RequestEditSession</b>) or asynchronous (<i>CInsertHelloEditSession::DoEditSession</i> is called after <b>RequestEditSession</b>). In this sample, the call is made asynchronous by passing in the TF_ES_ASYNCDONTCARE flag to the DWORD parameter. The TF_ES_READWRITE flag passed on the same parameter requests read and write access to the edit context, as in the following example.
</p>
<pre>if (pInsertHelloEditSession = new CInsertHelloEditSession(pContext))
{
    // a document write lock is required to insert text
    // the CInsertHelloEditSession will do all the work when the
    // CInsertHelloEditSession::DoEditSession method is called by the context
    pContext->RequestEditSession(_tfClientId, pInsertHelloEditSession, TF_ES_READWRITE | TF_ES_ASYNCDONTCARE, &hr);
    pInsertHelloEditSession->Release();
}</pre>
<p>The <i>_tfClientId</i> parameter is required and is obtained when <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor_activate.asp" TARGET="_blank">ITfTextInputProcessor::Activate</a> is called, as in the following example.
</p>
<pre>STDAPI CTextService::Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId)
{
          :   
    _tfClientId = tfClientId;</pre>
<h3>Insert Text at the Selection Point</h3>
<p>The easiest way to insert text into the selection (or at the caret if there is no selection) is to implement the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfinsertatselection.asp" TARGET="_blank">ITfInsertAtSelection</a> interface. Call <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> on the edit context to get a pointer to the <b>ITfInsertAtSelection</b> interface, as in the following example.
</p>
<pre>ITfInsertAtSelection *pInsertAtSelection;
ITfRange *pRange;
 
//A special interface is required to insert text at the selection
if (pContext->QueryInterface(IID_ITfInsertAtSelection, (void **)&pInsertAtSelection) == S_OK)
{
    // insert the text
    pInsertAtSelection->InsertTextAtSelection(ec, 0, pchText, cchText, &pRange);
    pInsertAtSelection->Release();
}</pre> 
<p>The <b>ITfInsertAtSelection::InsertTextAtSelection</b> method returns the range object that covers the inserted area. You can move the caret to the end of the inserted area by calling <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontext_setselection.asp" TARGET="_blank">ITfContext::SetSelection</a> as in the following example.
</p>
<pre>// update the selection, and make it an insertion point just past
// the inserted text.
pRange->Collapse(ec, TF_ANCHOR_END);
 
tfSelection.range = pRange;
tfSelection.style.ase = TF_AE_NONE;
tfSelection.style.fInterimChar = FALSE;
 
pContext->SetSelection(ec, 1, &tfSelection);
 
pRange->Release();</pre>
<p>A second way to insert text at the selection point is to call the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfrange_settext.asp" TARGET="_blank">ITfRange::SetText</a> method directly. Calling <b>SetText</b> directly guarantees the position of the insertion point, which is useful when a text service manages the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/compositions.asp" TARGET="_blank">composition</a>. The following example shows how to call <b>SetText</b> directly.
</p> 
<pre>TF_SELECTION tfSelection;
if (pContext->GetSelection(ec, TF_DEFAULT_SELECTION, 1, &tfSelection, &cFetched) != S_OK || cFetched != 1)
return S_FALSE;
 
if (tfSelection.range->SetText(ec, 0, pchText, cchText) != S_OK)
    goto Exit;</pre>
<h3>Add a New Menu Item to the Language Bar</h3>
<p>A new menu item is not required to add text to the document, but it is one way to create an event to call <i>CTextService::InsertHello</i>. In this sample, <i>CLangBarItemButton::InitMenu</i> adds a menu item that adds "Hello World" to the document. The menu item is added by calling <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfmenu_addmenuitem.asp" TARGET="_blank">ITfMenu::AddMenuItem</a>, as in the following example.
</p> 
<pre>pMenu->AddMenuItem(MENUITEM_INDEX_INSERTHELLO,
                   0,
                   NULL,
                   NULL,
                   c_szMenuItemDescriptionInsertHello,
                   (ULONG)wcslen(c_szMenuItemDescriptionInsertHello),
                   NULL);</pre>
<p>In this sample, <i>CTextService::InsertHello</i> is called by the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritembutton_onmenuselect.asp" TARGET="_blank">ITfLangBarItemButton::OnMenuSelect</a> event when the menu item with the id of MENUITEM_INDEX_INSERTHELLO is selected, as in the following example. 
</p>
<pre>STDAPI CLangBarItemButton::OnMenuSelect(UINT wID)
{
    switch (wID)
    {
        case MENUITEM_INDEX_INSERTHELLO:
            _pTextService->InsertHello();
            break;
    }
 
    return S_OK;
}</pre>
<p>To call <i>CTextService::InsertHello</i> in the <i>CLangBarItemButton</i>, pass a pointer to the <i>CTextService</i> class from the <i>CTextService::_InitLanguageBar</i> method to the constructor of <i>CLangBarItemButton</i>, as in the following example.
</p>
<pre>CLangBarItemButton::CLangBarItemButton(CTextService *pTextService)
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
        goto Exit;</pre>
<h3>Register the Text Service</h3>
<p>The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.</p>
<p><b>Note:</b>&nbsp; Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.</p>
<ol>
<li>Open a command window. 
</li>
<li>Run vsvars32.bat. If you have Visual Studio .NET installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat".
</li>
<li>Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL.
</li>
<li>Navigate to the sample directory. 
</li>
<li>Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax:
<pre>nmake</pre>
</li>
</ol>
<p><b>Note:</b>&nbsp; If you have already registered TextService.dll using the code from the first or second sample, you can omit this step. </p>
<p>After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe &#60;path&#62;&nbsp;&#92;TextService.dll". 
</p> 
<p>After the sample is compiled and registered, you should be able to add the "Hello World" string to any TSF aware application. In general TSF aware appliations are Office XP applications and Internet Explorer. Wordpad in WinXP-SP1 or later is also TSF aware.
Here's what the text service from this sample looks like from Wordpad.
</p>
<p>
<img src="HelloWorld.jpg" alt="Language Bar with Hello World in Wordpad"/>
</p>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

