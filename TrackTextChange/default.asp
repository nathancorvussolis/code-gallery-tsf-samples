<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with Track Text Change (Sample 3 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with Track Text Change (Sample 3 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with Track Text Change (Sample 3 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'prB6A4D17EE6E34F7DB344C0D0ABE8C72C';
samp.caption = 'Text Service with Track Text Change (Sample 3 of 9)';
samp.version = '0.0.0.3';
samp.size = 88464;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/dl/cabEBD9B.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 88464;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 88464;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 88464;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesTrackTextChange.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesTrackTextChange.msi">Download sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/globals.h', '400', '600' )">globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/TrackTextChange/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the third in a series of nine samples that show you how to create a text service. This sample is a text service that can track text changes. Each sample in the series adds functionality to the previous sample.</p>

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
<p>To enable the text service to track changes in focus, complete the following three steps.
</p>
<ol>
<li>Implement the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink.asp" TARGET="_blank">ITfTextEditSink</a> interface.
</li>
<li>Get the Document Manager.
</li>
<li>Register the text service.
</li>
</ol>
<h3>Implement the ITfTextEditSink Interface</h3>
The <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink.asp" TARGET="_blank">ITfTextEditSink</a> interface allows the text service to receive and respond to events raised by changes in focus. The following example shows the declaration of <b>ITfTextEditSink</b> interface. In the sample, the interface is declared in the <i>CTextService</i> class definition in TextService.h.</p>
<p><b>Note:</b> The <b>ITfTextEditSink</b> interface does not have to exist in the same class that implements the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor.asp" TARGET="_blank">ITfTextInputProcessor</a> interface.</p>
<pre>class CTextService : public ITfTextInputProcessor,
                     	  public ITfThreadMgrEventSink,
                          public ITfTextEditSink
{</pre>
<p><a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> can now return the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor.asp" TARGET="_blank">ITfTextInputProcessor</a>, <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfthreadmgreventsink.asp" TARGET="_blank">ITfThreadMgrEventSink</a>, and <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink.asp" TARGET="_blank">ITfTextEditSink</a> interfaces, as in the following example.</p>
<pre>
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
    else if (IsEqualIID(riid, IID_ITfTextEditSink))
    {
        *ppvObj = (ITfTextEditSink *)this;
    }
 
    if (*ppvObj)
    {
        AddRef();
        return S_OK;
    }
 
    return E_NOINTERFACE;
}</pre>
<p>The <b>ITfTextEditSink</b> interface has one method, declared in TextService.h, as follows.
</p>
<pre>// ITfTextEditSink
STDMETHODIMP OnEndEdit(ITfContext *pContext, TfEditCookie ecReadOnly, ITfEditRecord *pEditRecord);</pre>
<p>The function body of <i>CTextService::OnEndEdit</i> is in TextEditSink.cpp. It is a callback function that is called when the content of edit context has changed. This content includes the text, selection, and <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/properties.asp" TARGET="_blank">properties</a> like display attributes such as bold text or the language identifier of the text. In the following example from the <i>OnEndEdit</i> function, the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfeditrecord_getselectionstatus.asp" TARGET="_blank">ITfEditRecord::GetSelectionStatus</a> method is used to detect if the selection has changed or if the caret has moved. <i>pEditRecord</i> is the pointer to the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfeditrecord.asp" TARGET="_blank">ITfEditRecord</a> interface passed in as the third parameter on the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink_onendedit.asp" TARGET="_blank">ITfTextEditSink::OnEndEdit</a> method. The range of the current selection can be obtained by calling <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfcontext_getselection.asp" TARGET="_blank">ITfContext::GetSelection</a>.</p>
<pre>BOOL fSelectionChanged;
    IEnumTfRanges *pEnumTextChanges;
    ITfRange *pRange;

    // Did the selection change and/or did the caret move?
    // The caret position is represented as an empty selection range when
    // there is no selection.
    //
    if (pEditRecord->GetSelectionStatus(&fSelectionChanged) == S_OK &&
        fSelectionChanged)
    {
	// The selection has changed or the caret has moved
	 }
</pre>
<p><a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfeditrecord_gettextandpropertyupdates.asp" TARGET="_blank">ITfEditRecord::GetTextAndPropertyUpdates</a> returns a pointer to the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/ienumtfranges.asp" TARGET="_blank">IEnumTfRanges</a> interface, which is an enumerator that contains a collection of range objects that cover the specified properties and/or text changed during the edit session. Passing in the TF_GTP_INCL_TEXT flag specifies that the method will obtain the collection of range objects that cover the text changed during the edit session, rather than a collection of range objects that cover the specified properties changed during the edit session. The updated text can be obtained by calling <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfrange_gettext.asp" TARGET="_blank">IFfRange::GetText</a>, passing <i>ecReadOnly</i> in the <i>TfEditCookie</i> parameter. <i>ecReadOnly</i> is the second parameter on the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink_onendedit.asp" TARGET="_blank">ITfTextEditSink::OnEndEdit</a> method.
</p>
<pre>
    // Text modification?
    if (pEditRecord->GetTextAndPropertyUpdates(TF_GTP_INCL_TEXT, NULL, 0, &pEnumTextChanges) == S_OK)
    {
        if (pEnumTextChanges->Next(1, &pRange, NULL) == S_OK)
        {
            //
            // pRange is the updated range.
            //

            pRange->Release();
        }

        pEnumTextChanges->Release();
    }

    return S_OK;
}</pre>
<h3>Get the Document Manager</h3>
<p>A text service uses the document manager to obtain the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_contexts.asp" TARGET="_blank">edit context</a>. To get the document manager that currently has input focus, the text service calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfthreadmgr_getfocus.asp" TARGET="_blank">ITfThreadMgr::GetFocus</a>. <b>ITfThreadMgr::GetFocus</b> returns a pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfdocumentmgr.asp" TARGET="_blank">ITfDocumentMgr</a> interface. In this sample, the advise sink is uninstalled from the document manager that loses focus, and is installed on the document manager that gains focus.  The text service is notified when the text in the edit context changes, in whatever document manager that is returned by  <b>ITfThreadMgr::GetFocus</b>. It is also possible to leave the advise sink installed on document managers that are not currently in focus as the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink_onendedit.asp" TARGET="_blank">ITfTextEditSink::OnEndEdit</a> method does not rely on the document manager having focus.
</p>
<p>When the text service is activated, a document manager may already exist and have focus. In this example, if <b>ITfThreadMgr::GetFocus</b> returns a document manager, <i>_InitTextEditSink</i> is called.  
</p>
<pre>STDAPI CTextService::Activate(ITfThreadMgr *pThreadMgr, TfClientId tfClientId)
{
          :
    ITfDocumentMgr *pDocMgrFocus;
    if ((_pThreadMgr->GetFocus(&pDocMgrFocus) == S_OK) &&
        (pDocMgrFocus != NULL))
    {
        _InitTextEditSink(pDocMgrFocus);
        pDocMgrFocus->Release();
    }</pre>
<p>The text service can be deactivated while the document manager is still active by calling <i>CTextService::Deactivate</i>, passing in NULL, as in the following example from TextService.cpp. 
</p>   
<pre>STDAPI CTextService::Deactivate()
{_InitTextEditSink(NULL);</pre>
<p><b>Note</b> This sample supports US-English language only. You can add other languages from Control Panel. When you switch the input language from English (US) to French (for example), the text service is deactivated although the document manager is still available and has focus. When you switch the input language from French back to English (US), the text service is activated and uses the document manager that already exists.</p>
<p>In the following example of tracking focus changes, <i>CTextService::OnSetFocus</i> calls <i>_InitTextEditSink</i>, passing in the document manager. The implementation of the <b>IFfThreadMgrEventSink</b> interface is in ThreadMgrEventSink.cpp. 
</p>
<pre>STDAPI CTextService::OnSetFocus(ITfDocumentMgr *pDocMgrFocus, ITfDocumentMgr *pDocMgrPrevFocus)
{
    //
    // Initialize the TextEditSink when focus changes.
    //
    _InitTextEditSink(pDocMgrFocus);
 
    return S_OK;
}</pre>
<p>The first step in the <i>_InitTextEditSink</i> function is to remove any existing advise sink, if one exists. In the example shown below, <i>_dwTextEditSinkCookie</i> is the edit cookie and <i>_pTextEditSinkContext</i> is the edit context. For more information on edit cookie and edit sessions, see <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_contexts.asp" TARGET="_blank">Edit Contexts</a>. The <i>_InitTextEditSink</i> function is in TextEditSink.cpp.
</p>
<pre>ITfSource *pSource;
if (_dwTextEditSinkCookie != TF_INVALID_COOKIE)
{
    if (_pTextEditSinkContext->QueryInterface(IID_ITfSource, (void **)&pSource) == S_OK)
    {
        pSource->UnadviseSink(_dwTextEditSinkCookie);
        pSource->Release();
    }
 
    _pTextEditSinkContext->Release();
    _pTextEditSinkContext = NULL;
    _dwTextEditSinkCookie = TF_INVALID_COOKIE;
}</pre>
<p>If the pointer to the document manager is NULL, the <i>_InitTextEditSink</i> function returns immediately after removing the existing advise sink, which means that the text service will no longer be notified of changes in text, selection, or properties.
</p>
<pre>if (pDocMgr == NULL)
    return TRUE; // Clear the previous sink
</pre>
<p>The next step is to get the edit context from the document manager. In the following example, the edit context (or the pointer to the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itfcontext.asp" TARGET="_blank">ITfContext</a> interface) is stored in the <i>_pTextEditSinkContext</i> variable. If it is NULL, then it is not possible to add an advise sink. 
</p>
<pre>if (pDocMgr->GetTop(&_pTextEditSinkContext) != S_OK)
    return FALSE;
if (_pTextEditSinkContext == NULL)
    return TRUE; // The document is empty; no sink is possible</pre>
<p>If <i>_pTextEditSinkContext</i> is not NULL, install an advise sink, as in the following example.
</p>
<pre>if (_pTextEditSinkContext->QueryInterface(IID_ITfSource, (void **)&pSource) == S_OK)
{
    if (pSource->AdviseSink(IID_ITfTextEditSink, (ITfTextEditSink *)this, &_dwTextEditSinkCookie) == S_OK)
    {
        fRet = TRUE;
    }
    pSource->Release();
}</pre>
<h3>Register the Text Service</h3>
<p>The sample must be compiled before it can be registered. To compile the source files for this sample, complete the following steps.</p>
<p><b>Note:</b>  Omit steps 1, 2, and 3 if you still have the command window open from compiling the previous sample.</p>
<ol>
<li>Open a command window. 
</li>
<li>Run vsvars32.bat. If you have Visual Studio .NET installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat".
</li>
<li>Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL.
</li>
<li>Navigate to the sample directory. 
</li>
<li>Run nmake. The batch files from the previous steps, along with the makefile provided for you in the sample directory, allow you to use the following syntax:
<pre>nmake</pre>
</li>
</ol>
<p><b>Note:</b>  If you have already registered TextService.dll using the code from the first sample, you can omit this step. </p>
<p>After the DLL is built, you can register it with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 
</p>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

