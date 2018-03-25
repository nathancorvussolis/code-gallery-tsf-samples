
-----------------------------------------------
Property Text Service
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
1.	CustomProperty.cpp
2.	CustomPropertyStore.cpp
3.	DllMain.cpp
4.	EditSession.h
5.	Globals.cpp
6.	Globals.h
7.	LanguageBar.cpp
8.	makefile
9.	PreComp.cpp
10.	PropertyTextService.def
11.	PropertyTextService.ico
12.	PropertyTextService.rc
13.	Register.cpp
14.	Resource.h
15.	Server.cpp
16.	StaticCompactProperty.cpp
17.	StaticProperty.cpp
18.	TextEditSink.cpp
19.	TextService.cpp
20.	TextService.h
21.	ThreadFocusSink.cpp
22.	ThreadMgrEventSink.cpp


-----------------------------------------------
Description
-----------------------------------------------
The property text service is a sample text service that provides a menu that allows a user to associate properties with the current edit context. 

You can view the status of the attached properties using the Property Monitor sample.

-----------------------------------------------
More Details
-----------------------------------------------
Microsoft Windows Text Services Framework (TSF) provides a simple and scalable framework for the delivery of advanced text input and natural language technologies. A TSF text service provides multilingual support and delivers text services such as keyboard processors, handwriting recognition, and speech recognition.

-----------------------------------------------
Browser/Platform Compatibility and other Requirements
-----------------------------------------------
Text Services Framework is designed for use by Component Object Model (COM) programmers using the C/C++ programming languages. Programmers should be familiar with text services for Windows-based computers. Knowledge of handwriting recognition, speech recognition, and programming for multilingual support is recommended.

Text Services Framework runs on the Microsoft Windows XP operating system. It is available as a redistributable for Windows 98, Windows Millennium Edition, Windows NT 4.0, and Windows 2000.

The sample also requires Microsoft Visual Studio .NET 2003, or Visual Studio 6.0 and the Core SDK of the Microsoft Platform SDK.

-----------------------------------------------
Usage
-----------------------------------------------
You must compile and register this sample before using it. To compile the source files for this sample, complete the following steps.

1.Open a command window. 
2Run vsvars32.bat. If you have Visual Studio .NET 2003 installed on your C: drive, the command is "C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\Tools\vsvars32.bat". 
3.Run SetEnv.bat. If you have the Platform SDK installed on your C: drive, the command is "C:\Program Files\Microsoft SDK\SetEnv.bat" /RETAIL. 
4.Navigate to the sample directory. 
5.Run nmake. The batch files from the previous steps, along with the makefile provided for you in the sample directory, allow you to use the following syntax: 
nmake
6.Register the DLL with Regsvr32. The command, at the command prompt, is "Regsvr32.exe <path> \TextService.dll". 
The Property Monitor sample provides a means of associating properties. After both samples are compiled and registered, you can use the text services as follows.

1.Open a text input application like Wordpad and type some text. 
2.Select the text and then choose a property to associate from the from the Property Text Service menu. 

The pop-up window displays and lists the current properties of the edit context.

