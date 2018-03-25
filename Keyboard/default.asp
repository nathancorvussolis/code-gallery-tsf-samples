<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with Keyboard Functionality (Sample 6 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with Keyboard Functionality (Sample 6 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with Keyboard Functionality (Sample 6 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'prCB3F3523537D4F75AC73D26BD5338C36';
samp.caption = 'Text Service with Keyboard Functionality (Sample 6 of 9)';
samp.version = '0.0.0.5';
samp.size = 148956;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/dl/cabAA8DA.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 148956;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 148956;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 148956;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesKeyboard.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesKeyboard.msi">Download sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Compartment.cpp', '400', '600' )">Compartment.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Globals.h', '400', '600' )">Globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/KeyEventSink.cpp', '400', '600' )">KeyEventSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/LanguageBar.cpp', '400', '600' )">LanguageBar.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Compartment.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/KeyEventSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/LanguageBar.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/Keyboard/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the sixth in a series of nine samples that show you how to create a text service. This sample is a text service with keyboard functionality. Each sample in the series adds functionality to the previous sample.</p>

<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft® Windows® <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.</p>

<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.</p>
<p>Text Services Framework runs on the Microsoft® Windows® XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Windows 98, Windows Millennium Edition, Windows NT® 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft® Visual Studio® .NET 2003, or Visual Studio® 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.</p>

<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>To begin to enable keyboard functionality in the text service, complete the following steps.</p>
<ol>
<li>Add the Japanese language profile.
</li>
<li>Categorize the text service.
</li>
<li>Add keyboard-related compartments.
</li>
<li>Implement the ITfKeyEventSink interface.
</li>
<li>Implement the ITfKeystrokeMgr interface.
</li>
<li>Change the language bar item.
</li>
<li>Register the text service.
</li>
</ol>                         

<h3>Add the Japanese Language Profile</h3>
<p>This sample uses the Japanese language profile, by defining the TEXTSERVICE_LANGID in Globals.h, as in the following example. This language identifier is used by the <i>RegisterProfiles</i> method in Register.cpp.          
</p>
<pre>#define TEXTSERVICE_LANGID    MAKELANGID(LANG_JAPANESE, SUBLANG_DEFAULT)
</pre>
<p>TSF is language neutral, so you could use any language profile you want. For instance, you could change the language profile to Simplified Chinese, using the following example.
</p>
<pre>#define TEXTSERVICE_LANGID    MAKELANGID(LANG_CHINESE, SUBLANG_CHINESE_SIMPLIFIED)
</pre>
<p>You could also use the US English language profile, using the following example.
</p>
<pre>#define TEXTSERVICE_LANGID    MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US)
</pre>
<h3>Categorize the Text Service</h3>
<p>To be recognized as a keyboard text service by TSF, the CLSID of text service must have a category value of GUID_TFCAT_TIP_KEYBOARD. Call the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcategorymgr_registercategory.asp" TARGET="_blank">ITfCategoryMgr::RegisterCategory</a> method to create the appropriate category for the text service. In the following example from the <i>RegisterCategories</i> method in Register.cpp, CoCreateInstance is called to create an instance of the category manager object and to receive a pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcategorymgr.asp" TARGET="_blank">ITfCategoryMgr</a> interface. 
</p>
<pre>BOOL RegisterCategories()
{
    ITfCategoryMgr *pCategoryMgr;
    HRESULT hr;
 
    hr = CoCreateInstance(CLSID_TF_CategoryMgr, NULL, CLSCTX_INPROC_SERVER,
                          IID_ITfCategoryMgr, (void**)&pCategoryMgr);
 
    if (hr != S_OK)
        return FALSE;
 
    hr = pCategoryMgr->RegisterCategory(c_clsidTextService,
                                        GUID_TFCAT_TIP_KEYBOARD,
                                        c_clsidTextService);
 
    pCategoryMgr->Release();
    return (hr == S_OK);
}</pre>

<h3>Add Keyboard-Related Compartments</h3>
<p>A text service that has a keyboard requires the following <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/compartments.asp" TARGET="_blank">compartments</a>. For more information these values, see <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/predefined_compartments.asp" TARGET="_blank">Predefined Compartments</a>.
</p>
<table border>
<thead>
<tr><th>Compartment</th><th>Description</th>
</tr>
</thead>
<tbody>
<tr><td>GUID_COMPARTMENT_KEYBOARD_DISABLED</td><td><p>The compartment that is specific to an <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_contexts.asp" TARGET="_blank">edit context</a>.</p><p> If the value is not zero, the keyboard is disabled.</p></td></tr>
<tr><td>GUID_COMPARTMENT_KEYBOARD_OPENCLOSE</td><td><p>The compartment that is specific to a <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/thread_manager.asp" TARGET="_blank">thread manager</a>.</p><p> If this value is not zero, the keyboard is in open status.</p>
</td></tr>
</tbody>
</table>
<p>The <i>CTextService::_IsKeyboardDisabled</i> method in Compartment.cpp determines the status of the keyboard. There must be a document manager in order for the keyboard text service to work, so the method first checks for a NULL <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/document_manager.asp" TARGET="_blank">document manager</a>, as in the following example. 
</p>
<pre>if ((_pThreadMgr->GetFocus(&pDocMgrFocus) != S_OK) ||
    (pDocMgrFocus == NULL))
{
    // If there is no focus document manager object, the keyboard 
    // is disabled.
    fDisabled = TRUE;
    goto Exit;
}</pre>
<p>In addition to a document manager, the keyboard text service requires a valid <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/edit_contexts.asp" TARGET="_blank">edit context</a>. The following example checks for a NULL edit context. 
</p>
<pre>if ((pDocMgrFocus->GetTop(&pContext) != S_OK) ||
    (pContext == NULL))
{
    // If there is no context object, the keyboard is disabled.
    fDisabled = TRUE;
    goto Exit;
}</pre>
<p>If valid document manager and edit context are found, call <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> on the edit context to get a pointer to <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcompartmentmgr.asp" TARGET="_blank">ITfCompartmentMgr</a> interface, as in the following example. 
</p>
<pre>ITfCompartmentMgr *pCompMgr = NULL;
if (pContext->QueryInterface(IID_ITfCompartmentMgr, (void **)&pCompMgr) == S_OK)
{</pre>
<p>Using the pointer to the <b>ITfCompartmentMgr</b> interface, call the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfcompartmentmgr_getcompartment.asp" TARGET="_blank">ITfCompartmentMgr::GetCompartment</a> method to check for the value of GUID_COMPARTMENT_KEYBOARD_DISABLED, as in the following example. For more information on GUID_COMPARTMENT_KEYBOARD_DISABLED and other compartment values, see <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/predefined_compartments.asp" TARGET="_blank">Predefined Compartments</a>.
</p>
<pre>ITfCompartment *pCompartmentDisabled;
 
if (pCompMgr->GetCompartment(GUID_COMPARTMENT_KEYBOARD_DISABLED, &pCompartmentDisabled) == S_OK)
{
    VARIANT var;
    if (S_OK == pCompartmentDisabled->GetValue(&var))
    {
        if (var.vt == VT_I4) // Even VT_EMPTY, GetValue() can succeed
        {
            fDisabled = (BOOL)var.lVal;
        }
    }
    pCompartmentDisabled->Release();
}</pre>
<p>Obtain the pointer to the <b>ITfCompartmentMgr</b> interface by calling <b>QueryInterface</b> on the thread manager object, as in the following example.
</p>
<pre>ITfCompartmentMgr *pCompMgr = NULL;
 
 if (_pThreadMgr->QueryInterface(IID_ITfCompartmentMgr, (void **)&pCompMgr) == S_OK)
{</pre>
<p>Using the pointer to the <b>ITfCompartmentMgr</b> interface, call the <b>ITfCompartmentMgr::GetCompartment</b> method to check for the value of GUID_COMPARTMENT_KEYBOARD_OPENCLOSE, as in the following example.
</p>
<pre>ITfCompartment *pCompartment;
        if (pCompMgr->GetCompartment(GUID_COMPARTMENT_KEYBOARD_OPENCLOSE, &pCompartment) == S_OK)
        {
            VARIANT var;
            if (S_OK == pCompartment->GetValue(&var))
            {
                if (var.vt == VT_I4) // Even VT_EMPTY, GetValue() can succeed
                {
                    fOpen = (BOOL)var.lVal;
                }
            }
        }
        pCompMgr->Release();
    }</pre>
<p>You can also call <b>ITfCompartmentMgr::GetCompartment</b> to check for the value of GUID_COMPARTMENT_EMPTYCONTEXT, as in the following example.
</p>
<pre>ITfCompartment *pCompartmentEmptyContext;
// Check GUID_COMPARTMENT_EMPTYCONTEXT.
if (pCompMgr->GetCompartment(GUID_COMPARTMENT_EMPTYCONTEXT, &pCompartmentEmptyContext) == S_OK)
{
    VARIANT var;
    if (S_OK == pCompartmentEmptyContext->GetValue(&var))
    {
        if (var.vt == VT_I4) // Even VT_EMPTY, GetValue() can succeed
        {
            fDisabled = (BOOL)var.lVal;
        }
    }
    pCompartmentEmptyContext->Release();
}</pre>
<h3>Implement the ITfKeyEventSink Interface</h3>
<p>To receive keyboard stroke events, implement the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink.asp" TARGET="_blank">ITfKeyEventSink</a> interface. Using this interface, a text service can track all of the keystroke events that happen on a particular thread. In this sample, the <i>CTextService</i> class implements <b>ITfKeyEventSink</b> in KeyEventSink.cpp. The methods, including <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink_onkeydown.asp" TARGET="_blank">OnKeyDown</a>, <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink_onkeyup.asp" TARGET="_blank">OnKeyUp</a>, <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink_ontestkeyup.asp" TARGET="_blank">OnTestKeyUp</a> and <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink_ontestkeydown.asp" TARGET="_blank">OnTestKeyDown,</a> are almost empty in this sample. Each of the functions calls <i>_IsKeyEaten</i>, as in the following example of the <i>OnKeyDown</i> event.
<pre>STDAPI CTextService::OnKeyDown(ITfContext *pContext, WPARAM wParam, LPARAM lParam, BOOL *pfEaten)
{
    *pfEaten = _IsKeyEaten(wParam);
    return S_OK;
}</pre>
<p><i>_IsKeyEaten</i> returns TRUE in the <i>pfEaten</i> parameter if the keyboard text service is open. In this example, the method will always return FALSE.
</p>
<pre>BOOL CTextService::_IsKeyEaten(WPARAM wParam)
{
    // If the keyboard is disabled, don't "eat" keys.
    if (_IsKeyboardDisabled())
        return FALSE;
 
    // If the keyboard is closed, don't "eat" keys.
    if (!_IsKeyboardOpen())
        return FALSE;
 
    //  VK_A - VK_Z are interesting only when this is open.
    // Is on
    return (wParam >= 'A') && (wParam <= 'Z');
}l</pre>
<h3>Implement the ITfKeystrokeMgr Interface</h3>
The <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeystrokemgr.asp" TARGET="_blank">ITfKeystrokeMgr</a> interface allows text services to interact with the keyboard manager. To install a key event sink to allow the text service to receive keyboard events from the keyboard manager, first call <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> on the thread manager to get a pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeystrokemgr.asp" TARGET="_blank">ITfKeystrokeMgr</a> interface, as in the following example.
</p>
<pre>if (_pThreadMgr->QueryInterface(IID_ITfKeystrokeMgr, (void **)&pKeystrokeMgr) != S_OK)
    return FALSE;</pre>

<p>Next, call <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeystrokemgr_advisekeyeventsink.asp" TARGET="_blank">ITfKeystrokeMgr::AdviseKeyEventSink</a> with the <i>_tfClientId</i> parameter passed from the <i>CTextService</i> class when it calls the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itftextinputprocessor_activate.asp" TARGET="_blank">ITfTextInputProcessor::Activate</a> method, as in the following example.
</p>
<pre>hr = pKeystrokeMgr->AdviseKeyEventSink(_tfClientId, (ITfKeyEventSink *)this,TRUE);
</pre>
<h3>Register Preserved Keys</h3>
<p>Preserved keys are keyboard shortcuts that an application or TSF text service can register with the TSF manager. When registered, the TSF manager gives the text service control over the shortcuts, so that other applications do not interfere with their use. In this sample, the <i>CTextService::Activate</i> method calls <i>CTextService::_InitPreservedKey</i>, which in turn calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeystrokemgr_preservekey.asp" TARGET="_blank">ITfKeystrokeMgr::PreserveKey</a> which registers three preserved keys, as in the following example.
</p>
<pre>BOOL CTextService::_InitPreservedKey()
{
    ITfKeystrokeMgr *pKeystrokeMgr;
    HRESULT hr;
 
    if (_pThreadMgr->QueryInterface(IID_ITfKeystrokeMgr, (void **)&pKeystrokeMgr) != S_OK)
        return FALSE;
 
    // Register Alt+~ key
    hr = pKeystrokeMgr->PreserveKey(_tfClientId,
                                    GUID_PRESERVEDKEY_ONOFF,
                                    &c_pkeyOnOff0,
                                    c_szPKeyOnOff,
                                    wcslen(c_szPKeyOnOff));
 
    // Register KANJI key
    hr = pKeystrokeMgr->PreserveKey(_tfClientId,
                                    GUID_PRESERVEDKEY_ONOFF,
                                    &c_pkeyOnOff1,
                                    c_szPKeyOnOff,
                                    wcslen(c_szPKeyOnOff));
 
    // Register F6 key
    hr = pKeystrokeMgr->PreserveKey(_tfClientId,
                                    GUID_PRESERVEDKEY_F6,
                                    &c_pkeyF6,
                                    c_szPKeyF6,
                                    wcslen(c_szPKeyF6));
 
    pKeystrokeMgr->Release();
 
    return (hr == S_OK);
}</pre>
<p>When a user presses a key that matches a registered preserved key, the TSF manager calls <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfkeyeventsink_onpreservedkey.asp" TARGET="_blank">ITfKeyEventSink::OnPreservedKey</a>. In this example from the <i>CTextService::OnPreservedKey</i> method in KeyEventSink.cpp, the keyboard status is toggled between open and closed when a user pressed the ALT+~ keys or the KANJI key. 
</p>
<pre>STDAPI CTextService::OnPreservedKey(ITfContext *pContext, REFGUID rguid, BOOL *pfEaten)
{
    if (IsEqualGUID(rguid, GUID_PRESERVEDKEY_ONOFF))
    {
        BOOL fOpen = _IsKeyboardOpen();
        _SetKeyboardOpen(fOpen ? FALSE : TRUE);
        *pfEaten = TRUE;
    }
          :
    return S_OK;
}</pre>
<h3>Change the Language Bar Item</h3>
<p>To show the status of the text service, you can add an item to the language bar. In this example from LanguageBar.cpp, the <i>CLangBarItemButton::InitMenu</i> method adds a new language bar item and sets the TF_LBMENUF_GRAYED and TF_LBMENUF_CHECKED flags according to the status of the keyboard text service. 
</p>
<pre>DWORD dwFlags = 0;
    if (_pTextService->_IsKeyboardDisabled())
        dwFlags |= TF_LBMENUF_GRAYED;
    else if (_pTextService->_IsKeyboardOpen())
        dwFlags |= TF_LBMENUF_CHECKED;

    pMenu->AddMenuItem(MENUITEM_INDEX_OPENCLOSE,
                       dwFlags, 
                       NULL, 
                       NULL, 
                       c_szMenuItemDescriptionOpenClose, 
                       (ULONG)wcslen(c_szMenuItemDescriptionOpenClose), 
                       NULL);
</pre>
<p>The new language bar menu displays as follows.
</p>
<img src="LangBarOpenCloseDisable.jpg" alt="Language Bar with Open, Closed, and Disabled Status"/>
<h3>Register the Text Service</h3>
<p>The sample must be compiled before it can be registered.  To compile the source files for this sample, complete the following steps.</p>
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
<li>Run nmake. The batch files from the steps above, along with the makefile provided for you in the sample directory allow you to use this syntax:
<pre>nmake</pre>
</li>
<li>If you registered the DLL in any of the previous samples, you will have to unregister it. The command, at the command prompt, is "Regsvr32.exe -u <path> \TextService.dll".
</li>
<li>Register the DLL with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". After successful registration, the text service is shown in the <b>Date, Time, Language and Regional Options</b> Control Panel items. To verify that your service is registered, follow these steps. 
</p>
<ol>
<li>Open Control Panel.
</li>
<li>Select <b>Date, Time, Language and Regional Options</b>. 
</li>
<li>Select <b>Language and Regional Options</b>.
</li>
<li>Click the <b>Languages</b> tab.
</li>
<li>In the "Text services and input languages" frame, click <b>Details</b>.
</li>
<li>You should see <b>Sample Text Service</b> under the <b>Japanese/Keyboard</b> heading.
</li>
</ol>
<p>
<img alt="Japanese Text Service in Control Panel" src="JapaneseTextServiceCP.JPG"/>
</p>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/default.asp'>Text Service with Icon in Language Bar</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

