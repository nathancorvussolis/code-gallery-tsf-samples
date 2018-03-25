<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with Compositions (Sample 7 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with Compositions (Sample 7 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with Compositions (Sample 7 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'pr5D65BBAC410943698A70FE8598F6635C';
samp.caption = 'Text Service with Compositions (Sample 7 of 9)';
samp.version = '0.0.0.6';
samp.size = 104597;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/dl/cabC4AC8.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 104597;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 104597;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 104597;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesComposition.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesComposition.msi">Download sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Compartment.cpp', '400', '600' )">Compartment.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Composition.cpp', '400', '600' )">Composition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/EditSession.h', '400', '600' )">EditSession.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/EndComposition.cpp', '400', '600' )">EndComposition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Globals.h', '400', '600' )">Globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/KeyEventSink.cpp', '400', '600' )">KeyEventSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/KeyHandler.cpp', '400', '600' )">KeyHandler.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/LanguageBar.cpp', '400', '600' )">LanguageBar.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/StartComposition.cpp', '400', '600' )">StartComposition.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Composition/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Compartment.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Composition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/EditSession.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/EndComposition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/KeyEventSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/KeyHandler.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/LanguageBar.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/StartComposition.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Composition/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the seventh in a series of nine samples that show you how to create a text service. This sample is a text service that uses <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/compositions.asp" TARGET="_blank">Compositions</a>. This sample builds upon the last sample, <a href="/archive/en-us/samples/internet/TextServicesFramework/Keyboard/default.asp" TARGET="_blank">Text Service with Keyboard Functionality</a>, to add keyboard functionality to the text service. The next sample, <a href="/archive/en-us/samples/internet/TextServicesFramework/CompositionStringUnderline/default.asp" TARGET="_blank">Text Service with Composition String Underline</a>, continues to add keyboard functionality, and the last sample in the series, <a href="/archive/en-us/samples/internet/TextServicesFramework/CandidateList/default.asp" TARGET="_blank">Text Service with Candidate List</a>, provides a fully functional keyboard text service.</p>

<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft® Windows® <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.</p>

<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.</p>
<p>Text Services Framework runs on the Windows® XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Windows 98, Windows Millennium Edition, Windows NT® 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft® Visual Studio® .NET 2003, or Visual Studio® 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.</p>

<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>To enable the text service to use <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/compositions.asp" TARGET="_blank">Compositions</a>, complete the following steps.
</p>
<ol>
<li>Implement the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextcomposition.asp" TARGET="_blank">ITfContextComposition</a> interface.
</li>
<li>Add a key event handler.
</li>
<li>Terminate the composition object.
</li>
<li>Register the text service.
</li>
</ol>
<h3>Implement the ITfContextComposition Interface</h3>
<p>The <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextcomposition_startcomposition.asp" TARGET="_blank">ITfContextComposition::StartComposition</a> method creates a new composition and begins the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_sessions.asp" TARGET="_blank">edit session</a>. The method requires a read/write <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/document_locks.asp" TARGET="_blank">document lock</a>. A text service can only obtain a lock by requesting an edit session with a specific context and read-only or read/write access. When the edit session is granted, the text service is supplied with an edit cookie that identifies the edit context with the requested access. This cookie is then passed to the method to identify the edit context with the proper access. The following example is from the <i>CStartCompositionEditSession</i> class, which inherits from <i>CEditSessionBase</i> class declared in EditSession.h. In this example, the class stores pointers to the <i>CTextService</i> class (in the <i>_pTextService</i> variable), and to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontext.asp" TARGET="_blank">ITfContext</a> interface (in the <i>_pContext</i> variable).
<pre>class CStartCompositionEditSession : public CEditSessionBase
{
public:
    CStartCompositionEditSession(CTextService *pTextService, ITfContext *pContext) : CEditSessionBase(pTextService, pContext)
    {
    }
 
    // ITfEditSession
    STDMETHODIMP DoEditSession(TfEditCookie ec);
};</pre>
<p>In the following example from <i>CTextService::_StartComposition</i> in StartComposition.cpp, a new edit session is created. This method calls <i>RequestEditSession</i> with a request for a synchronous read/write lock. </p>
<pre>void CTextService::_StartComposition(ITfContext *pContext)
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
}</pre>
<p><i>CStartCompositionEditEditSession::DoEditSession</i> is the call back function of the edit session. It includes three steps: getting the selection range for the new composition, starting the composition by calling <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontextcomposition_startcomposition.asp" TARGET="_blank">ITfContextComposition::StartComposition</a>, and adjusting the selection to match the current composition range. The following example shows the first step, where the current selection range (or the position of the caret if there is no selection) is returned by calling the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfinsertatselection_inserttextatselection.asp" TARGET="_blank">ITfInsertAtSelection::InsertTextAtSelection</a> method.
</p>
<pre>ITfInsertAtSelection *pInsertAtSelection = NULL;
ITfRange *pRangeInsert = NULL;
 
if (_pContext->QueryInterface(IID_ITfInsertAtSelection, (void **)&pInsertAtSelection) != S_OK)
{
    goto Exit;
}
 
if (pInsertAtSelection->InsertTextAtSelection(ec, TF_IAS_QUERYONLY, NULL, 0, &pRangeInsert) != S_OK)
{
    goto Exit;
}</pre>
<p>The next steps are starting the composition and setting the selection to the adjusted range. Call <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> on <i>_pContext</i> and then call <b>ITfContextComposition::StartComposition</b>, then call the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontext_setselection.asp" TARGET="_blank">ITfContext::SetSelection</a> method, as in the following example.</p>
<pre>ITfContextComposition *pContextComposition = NULL;
ITfComposition *pComposition = NULL;
HRESULT hr = E_FAIL;

// Get an interface on the context to deal with compositions
if (_pContext->QueryInterface(IID_ITfContextComposition, (void **)&pContextComposition) != S_OK)
{
    goto Exit;
}
 
// Start the new composition
if ((pContextComposition->StartComposition(ec, pRangeInsert, _pTextService, &pComposition) == S_OK) && (pComposition != NULL))
{
    // Store the pointer of this new composition object in the instance
    // of the CTextService class. So this instance of the CTextService
    // class can know now it is in the composition stage.
    _pTextService->_SetComposition(pComposition);
 
    //
    //  Set selection to the adjusted range
    //
    TF_SELECTION tfSelection;
    tfSelection.range = pRangeInsert;
    tfSelection.style.ase = TF_AE_NONE;
    tfSelection.style.fInterimChar = FALSE;
    _pContext->SetSelection(ec, 1, &tfSelection);
}</pre>
<h3>Add a Key Event Handler</h3>
<p>This is a flow chart that shows the logic for handling keys in this sample. The keys handled are 'A' through 'Z', ENTER, and the right and left arrow keys.
</p>
<p><img alt="Flow Chart for Handling Keys" src="handlekeyflowchart.jpg"/> 
</p>
<p>This logic is represented in the code in the <i>CTextService::_IsKeyEaten</i> function in KeyEventSink.cpp. In the following example, the switch checks for the ENTER key and left and right arrow keys.
</p>
<pre>switch (wParam)
{
    case VK_LEFT:
    case VK_RIGHT:
    case VK_RETURN:
        if (_IsComposing())
            return TRUE;
        return FALSE;}
</pre>
<p>The implementation of <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink_onkeydown.asp" TARGET="_blank">ITfKeyEventSink::OnKeyDown</a> calls <i>CTextService::_InvokeKeyHandler</i>, as in the following example from KeyEventSink.cpp. <i>CTextService::_InvokeKeyHandler</i>, in KeyHandler.cpp, starts a new edit session to handle the keys.
</p>   
<pre>STDAPI CTextService::OnKeyDown(ITfContext *pContext, WPARAM wParam, LPARAM lParam, BOOL *pfEaten)
{
    *pfEaten = _IsKeyEaten(wParam);
 
    if (*pfEaten)
    {
        _InvokeKeyHandler(pContext, wParam, lParam);
    }
 
    return S_OK;
}</pre>
<p>The three key event handlers provided in this sample are as follows.
<TABLE BORDER=1 WIDTH=80%>
<THEAD>
<TR>
<TH>Event Handler</TH>
<TH>Description</TH>
</TR>
</THEAD>
<TBODY>
<TR>
<TD><i>CTextService::_HandleCharacterKey</i></TD>
<TD>Handles keys from VK_A to VK_Z and inserts the uppercase character into the composition object.</TD>
</TR>
<TR>
<TD><i>CTextService::_HandleReturnKey</i></TD>
<TD>Handles the ENTER key and terminates the composition object by calling <i>CTextService::_TerminateComposition</i>.
</TD>
</TR>
<TR>
<TD><i>CTextService::_HandleArrowKey</i></TD>
<TD>Handles the left and right arrow keys. The movement of the caret is restricted to inside the composition object.
</TD>
</TR>
</TBODY>
</TABLE>
</p>
<p><i>CTextService::_HandleCharacterKey</i> calls <i>CTextService::_StartComposition</i> to create a new composition object if one does not already exist, as in the following example.
</p>
<pre>// Start the new composition if there is no composition.
if (!_IsComposing())
    _StartComposition(pContext);
</pre>
<p>After the selection is returned, <i>CTextService::_HandleCharacterKey</i> calls <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfcomposition_getrange.asp" TARGET="_blank">ITfComposition::GetRange</a> to get the range of the current composition, then compares the composition range to the selection. If the current selection exists inside of the composition range, the character is inserted. If the current selection exists outside of the composition range, the character is not inserted. 
</p>
<pre>// Is the insertion point covered by a composition?
if (_pComposition->GetRange(&pRangeComposition) == S_OK)
{
    fCovered = IsRangeCovered(ec, tfSelection.range, pRangeComposition);
 
    pRangeComposition->Release();
 
    if (!fCovered)
    {
        goto Exit;
    }
}</pre>
<p><i>CTextService::_HandleCharacterKey</i> then calls the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfrange_settext.asp" TARGET="_blank">ITfRange::SetText</a> method. <b>ITfRange::SetText</b> is used here instead of InsertTextAtSelection because a composition already exists and it is undesirable to have the application adjust the insertion point in our composition. In the following example, the selected text is replaced by <i>ch</i>, and the selection point is moved to the end of the selection. 
</p>
<pre>if (tfSelection.range->SetText(ec, 0, &ch, 1) != S_OK)
    goto Exit;
    tfSelection.range->Collapse(ec, TF_ANCHOR_END);
    pContext->SetSelection(ec, 1, &tfSelection);
</pre>
<h3>Terminate the Composition Object</h3>
<p><i>CTextService::OnEndEdit</i> in TextEditSink.cpp tracks changes in the selection. If the selection moves outside of the current composition range, the pointer to the composition object is released, as in the following example. The <i>CTextService::OnEndEdit</i> method can be called when some other area of the document is clicked while in the middle of an composition session.
</p>
<pre>// If the selection is moved to out side of the current composition,
// terminate the composition. This TextService supports only one
// composition in one context object.
if (_IsComposing())
{
    TF_SELECTION tfSelection;
    ULONG cFetched;
 
    if (pContext->GetSelection(ecReadOnly, TF_DEFAULT_SELECTION, 1, &tfSelection, &cFetched) == S_OK && cFetched == 1)
    {
        ITfRange *pRangeComposition;
        // Is the insertion point covered by a composition?
        if (_pComposition->GetRange(&pRangeComposition) == S_OK)
        {
            if (!IsRangeCovered(ecReadOnly, tfSelection.range, pRangeComposition))
            {
                _EndComposition(pContext);
            }
            pRangeComposition->Release();
        }
    }
}</pre>
<p>The composition session must be closed by calling <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcomposition_endcomposition.asp" TARGET="_blank">ITfComposition::EndComposition</a>. Since this method requires an edit cookie, an edit session is also required. The release of the composition session can be asynchronous. In the following example from EndComposition.cpp, <i>CTextService::_EndComposition</i> calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcontext_requesteditsession.asp" TARGET="_blank">ITfContext::RequestEditSession</a> with the TF_ES_ASYNCDONTCARE and TF_ES_READWRITE flags. 
<pre>
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
</pre>
<p>
<i>CEndCompositionEditSession::DoEditSession</i> calls <i>CTextService::_TerminateComposition</i>, which calls the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcomposition_endcomposition.asp" TARGET="_blank">ITfComposition::EndComposition</a> method to release the composition object.
</p>
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
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

