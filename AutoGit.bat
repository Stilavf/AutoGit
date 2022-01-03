@echo off
set /p directory=Directory:
cd /d %directory%
echo 1 - Download
echo 2 - Import
set /p com=Command:
if %com% == 1 (goto download)
if %com% == 2 (goto import)
:download
	set /p link=Link:
	git clone %link%
	goto exit
:import
	set /p import=File or Folder:
	git add %import%
	git commit -m "%import%"
	git push
	goto exit
:exit