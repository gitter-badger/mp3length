Const LENGTH = 27
Set args = Wscript.Arguments
Dim mp3Folder: mp3Folder = WScript.Arguments.Item(0)
Dim mp3File: mp3File = WScript.Arguments.Item(1)
Dim fso
set fso = CreateObject("Scripting.FileSystemObject")
Dim fullpath
fullpath = fso.GetAbsolutePathName(mp3Folder)
Dim oShell  : Set oShell  = CreateObject("Shell.Application")
Dim oFolder : Set oFolder = oShell.Namespace(fullpath)
Dim oFile   : Set oFile   = oFolder.ParseName(mp3File)

Dim strLength : strLength = oFolder.GetDetailsOf(oFile, LENGTH)

WScript.Echo strLength
