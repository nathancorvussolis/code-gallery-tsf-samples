<%@ LANGUAGE="JScript" %>
<%
// ********* START SEARCH INFO **********
if (false) { 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<TITLE>MSDN Online Web & Internet Samples - Text Service with an Icon in the Language Bar (Sample 4 of 9)</TITLE>
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
        this.title = "MSDN Online Web & Internet Samples - Text Service with an Icon in the Language Bar (Sample 4 of 9)";
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
    <TD COLSPAN="4"><I>Text Services Framework</I><H2 CLASS="clsSampTitle">Text Service with an Icon in the Language Bar (Sample 4 of 9)</H2></TD>
  </TR>
  <TR>
    <TD HEIGHT="2" COLSPAN="4"></TD>
  </TR>

<!--_BEGIN_DOWNLOAD_-->
<SCRIPT LANGUAGE="JavaScript">
	var sampsCollection = new Object(); 
samp = new Object();
samp.key = 'pr7EB97982D9684F3283008782181A3F2F';
samp.caption = 'Text Service with an Icon in the Language Bar (Sample 4 of 9)';
samp.version = '0.0.0.2';
samp.size = 148312;
samp.uninstall = '';

samp.paths = new Array();

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/dl/cabBEE97.cab';
samp.paths[i].platform = 'win32';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 4;
samp.paths[i].size = 148312;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/dl/sample.tar.gz';
samp.paths[i].platform = 'unix';
samp.paths[i].browser = 'ie';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 148312;

var i = samp.paths.length;
samp.paths[i] = new Object();
samp.paths[i].path = '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/dl/sample.zip';
samp.paths[i].platform = 'all';
samp.paths[i].browser = 'all';
samp.paths[i].browserversion = 1;
samp.paths[i].size = 148312;


</SCRIPT>
			<TD VALIGN="bottom" WIDTH="22"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesIconInLanguageBar.msi"><IMG ALIGN="middle" 
SRC="/archive/en-us/samples/internet/download.gif" WIDTH="14" HEIGHT="16" BORDER="0"></A></TD>
			<TD CLASS="clsDemo" valign=bottom WIDTH="150">
				<DIV CLASS="clsDocBody" style="margin-left:0px"><A HREF="http://download.microsoft.com/download/6/8/3/683DB9FE-8D61-4A3C-B7B8-3169FF70AE9F/TextServicesIconInLanguageBar.msi">Download sample</A></DIV>
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
					<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/DllMain.cpp', '400', '600' )">DllMain.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/Globals.cpp', '400', '600' )">Globals.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/Globals.h', '400', '600' )">Globals.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/LanguageBar.cpp', '400', '600' )">LanguageBar.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/PreComp.cpp', '400', '600' )">PreComp.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/Readme.txt', '400', '600' )">Readme.txt</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/Register.cpp', '400', '600' )">Register.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/Resource.h', '400', '600' )">Resource.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/Server.cpp', '400', '600' )">Server.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/TextEditSink.cpp', '400', '600' )">TextEditSink.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/TextService.cpp', '400', '600' )">TextService.cpp</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/TextService.h', '400', '600' )">TextService.h</OPTION>
<OPTION value="JavaScript:showSource( '/archive/en-us/samples/internet/TextServicesFrameWork/IconInLanguageBar/ThreadMgrEventSink.cpp', '400', '600' )">ThreadMgrEventSink.cpp</OPTION>
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/DllMain.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/Globals.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/Globals.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/LanguageBar.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/PreComp.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/Readme.txt></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/Register.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/Resource.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/Server.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/TextEditSink.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/TextService.cpp></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/TextService.h></A> -->
<!-- XBUILDER <A HREF=/archive/en-us/samples/internet/ShowSource.asp?Filename=TextServicesFrameWork/IconInLanguageBar/ThreadMgrEventSink.cpp></A> -->

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
<p>This sample is the fourth in a series of nine samples that show you how to create a text service. This sample adds an icon in the language bar for the text service. Each sample in the series adds functionality to the previous sample.</p>

<!--_END_DESCRIPTION1_-->

<!--_BEGIN_DESCRIPTION2_-->
<H2><B>More Details</B></H2>
<p>Microsoft&reg; Windows&reg; <A HREF="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/text_services_framework.asp" TARGET="_blank">Text Services Framework (TSF)</A> provides a simple and scalable framework for delivering advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.</p>

<!--_END_DESCRIPTION2_-->

<!--_BEGIN_COMPATIBILITY_-->
<H2><B>Browser/Platform Compatibility and other Requirements</B></H2>
<p>Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.</p>
<p>Text Services Framework runs on the Windows XP operating system. It is available as a <a HREF="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=B4C50C6E-E9DD-4C58-A886-75BD56985F0F" TARGET="_blank">redistributable</a> for Windows 98, Windows Millennium Edition, Windows NT&reg; 4.0, and Windows 2000.</p>
<p>The sample also requires <A HREF="http://msdn.microsoft.com/vstudio/" TARGET="_blank">Microsoft&reg; Visual Studio&reg; .NET 2003, or Visual Studio&reg; 6.0</A> and the <A HREF="http://www.microsoft.com/msdownload/platformsdk/sdkupdate/" TARGET="_blank">Core SDK</A> of the Microsoft Platform SDK.</p>

<!--_END_COMPATIBILITY_-->

<!--_BEGIN_USAGE_-->
<H2><B>Usage</B></H2>
<p>There are three steps to add an icon to the language bar for the text service. 
</p>
<ol>
<li>Implement the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itftexteditsink.asp" TARGET="_blank">ITfLangBarItemButton</a> interface.
</li>
<li>Add the language bar item.
</li>
<li>Add the menu item.
</li>
</ol>
<h3>Implement the ITfLangBarItemButton interface.</h3>
<p>In the following example, the <i>CLangBarItemButton</i> class inherits from the <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsf/tsf/itflangbaritembutton.asp" TARGET="_blank">ITfLangBarItemButton</a> and <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfsource.asp" TARGET="_blank">ITfSource</a> interfaces. <b>ITfLangBarItemButton</b> in turn inherits from <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritem.asp" TARGET="_blank">ITfLangBarItem</a>. <b>ITfSource</b> is required so that the language bar can be notified of changes to a language bar item. In this sample, <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfsource_advisesink.asp" TARGET="_blank">ITfSource::AdviseSink</a> is called with the identifier IID_ITfLangBarItemSink to install an <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritemsink.asp" TARGET="_blank">ITfLangBarItemSink</a> advise sink.
</p><pre>class CLangBarItemButton : public ITfLangBarItemButton,
                           public ITfSource
{
public:
    CLangBarItemButton();
    ~CLangBarItemButton();
 
    // IUnknown
    STDMETHODIMP QueryInterface(REFIID riid, void **ppvObj);
    STDMETHODIMP_(ULONG) AddRef(void);
    STDMETHODIMP_(ULONG) Release(void);
 
    // ITfLangBarItem
    STDMETHODIMP GetInfo(TF_LANGBARITEMINFO *pInfo);
    STDMETHODIMP GetStatus(DWORD *pdwStatus);
    STDMETHODIMP Show(BOOL fShow);
    STDMETHODIMP GetTooltipString(BSTR *pbstrToolTip);
 
    // ITfLangBarItemButton
    STDMETHODIMP OnClick(TfLBIClick click, POINT pt, const RECT *prcArea);
    STDMETHODIMP InitMenu(ITfMenu *pMenu);
    STDMETHODIMP OnMenuSelect(UINT wID);
    STDMETHODIMP GetIcon(HICON *phIcon);
    STDMETHODIMP GetText(BSTR *pbstrText);
 
    // ITfSource
    STDMETHODIMP AdviseSink(REFIID riid, IUnknown *punk, DWORD *pdwCookie);
    STDMETHODIMP UnadviseSink(DWORD dwCookie);
 
private:
    ITfLangBarItemSink *_pLangBarItemSink;
    TF_LANGBARITEMINFO _tfLangBarItemInfo;
    LONG _cRef;
};</pre>
<h3>Add the Language Bar Item</h3>
<p>The <i>CTextService::_InitLanguageBar</i> function registers the language bar with the language bar item manager. This function is called when the text service is activated by calling <i>CTextService::Activate</i>. To add the language bar item, you need a pointer to the <b>ITfLangBarItemMgr</b> interface, which you can obtain by calling <a href="http://msdn.microsoft.com/library/en-us/com/htm/cmi_q2z_7fvp.asp" TARGET="_blank">QueryInterface</a> on the pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfthreadmgr.asp" TARGET="_blank">ITfThreadMgr</a> interface, shown as <i>_pThreadMgr</i> in the following example. The <i>CTextService::_InitLanguageBar</i> function is in LanguageBar.cpp.
</p>
<pre>ITfLangBarItemMgr *pLangBarItemMgr;
if (_pThreadMgr->QueryInterface(IID_ITfLangBarItemMgr, (void **)&pLangBarItemMgr) != S_OK)
    return FALSE;
</pre>
<p>The next step is to create an instance of the <i>CLangBarItemButton</i> class, storing the pointer in the <i>_pLnagBarItem</i> variable, as in the following example.
</p>
<pre>if ((_pLangBarItem = new CLangBarItemButton()) == NULL)
    goto Exit;
</pre>
<p>Next, add the instance of the <i>CLangBarItemButton</i> class to the language bar manager by calling <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritemmgr_additem.asp" TARGET="_blank">ITfLangBarItemMgr::AddItem</a>. If the <b>AddItem</b> method fails, you must release <i>_pLangBarItem</i>.
</p>
<pre>if (pLangBarItemMgr->AddItem(_pLangBarItem) != S_OK)
{
    _pLangBarItem->Release();
    _pLangBarItem = NULL;
    goto Exit;
}</pre>
<p>Lastly, release the pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritemmgr.asp?" TARGET="_blank">ITfLangBarItemMgr</a> interface, shown as <i>pLangBarItemMgr</i> in the following example.
</p>
<pre>Exit:
    pLangBarItemMgr->Release();
    return fRet;
}</pre>
<p>For an example of how to remove the language bar item from the language bar item manager, refer to the <i>CTextService::_UninitLanguageBar</i> function in LanguageBar.cpp.
</p>
<h3>Add the Menu Item</h3>
<p>The <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritembutton_initmenu.asp" TARGET="_blank">ITfLangBarItemButton::InitMenu</a> method is called when a user clicks the language bar button. In the following example, the pointer to the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfmenu.asp" TARGET="_blank">ITFMenu</a> interface passed as the first parameter is used to call the <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itfmenu_addmenuitem.asp" TARGET="_blank">ITFMenu::AddMenuItem</a> method. The menu item identifier is MENUITEM_INDEX_0. 
</p>
<pre>#define MENUITEM_INDEX_0 0
static WCHAR c_szMenuItemDescription0[] = L"Menu Item Description 0";
 
STDAPI CLangBarItemButton::InitMenu(ITfMenu *pMenu)
{
    //
    // Add the first menu item.
    //
    pMenu->AddMenuItem(MENUITEM_INDEX_0,
                       0,
                       NULL,
                       NULL,
                       c_szMenuItemDescription0,
                       (ULONG)wcslen(c_szMenuItemDescription0),
                       NULL);
    return S_OK;
}</pre>
<p>The <a href="http://msdn.microsoft.com/library/en-us/tsf/tsf/itflangbaritembutton_onmenuselect.asp" TARGET="_blank">ITfLangBarItemButton::OnMenuSelect</a> method is called when a user selects a menu item. The following example shows the <i>CLangBarItemButton::OnMenuSelect</i> implementation from LanguageBar.cpp. The <i>wID</i> parameter indicates which menu item is selected.
</p>
<pre>STDAPI CLangBarItemButton::OnMenuSelect(UINT wID)
{
    switch (wID)
    {
        case MENUITEM_INDEX_0:
              :
            break;
    }
 
    return S_OK;
}</pre>
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
<p>To verify that the text service is registered, you must have at least two input languages. Follow these steps to add an input language. 
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
<li>In the <b>Installed services</b> frame, click <b>Add</b>. 
</li>
<li>In the <b>Add Input Language</b> dialog box, choose a new input language. For example, you could choose French (France), and you would see this in the <b>Date, Time, Language and Regional Options</b> control panel applet. 
</li>
<p>
<img alt="French Input Language added to Language Options" src="TextServiceCP2.JPG"/></p>
<li>After the new language is added, you should see the language bar. To see the new menu items created by this sample, choose English(US) in the language bar. Give focus to an application that accepts text input, like Microsoft Word, and the language bar should look like this.
</li>
<img alt="Language Bar with New Buttons" src="TextServiceLangBar.JPG"/>
</ol>
<!--_END_USAGE_-->



<!--_BEGIN_RELATEDSITES_-->
<H2><B>Related Links</B></H2>
<p><UL>
<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/BasicTextService/default.asp'>Simple Text Service</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackFocus/default.asp'>Text Service with Track Focus</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TrackTextChange/default.asp'>Text Service with Track Text Change</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/TextInsertion/default.asp'>Text Service with Text Insertion</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Keyboard/default.asp'>Text Service with Keyboard Functionality</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/Composition/default.asp'>Text Service with Composition</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CompositionStringUnderline/default.asp'>Text Service with Composition String Underline</A>&nbsp;&nbsp;<LI><A href='/archive/en-us/samples/internet/TextServicesFrameWork/CandidateList/default.asp'>Text Service with Candidate List</A>&nbsp;&nbsp;<LI><A href='/library/en-us/tsf/tsf/text_service_registration.asp'>Text Service Registration</A>&nbsp;&nbsp;</UL>

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

