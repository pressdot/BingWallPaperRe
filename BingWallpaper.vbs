Set objShell = CreateObject("Wscript.Shell")
strPath = Wscript.ScriptFullName
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.GetFile(strPath)
strFolder = objFSO.GetParentFolderName(objFile)
strCommand = "powershell.exe -ExecutionPolicy Bypass -File " & strFolder & "\Bing.ps1"
objShell.Run strCommand, 0, False