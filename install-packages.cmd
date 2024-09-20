@echo off
set PYTHON_DIR=%USERPROFILE%\Downloads\python-3.10.8-amd64-portable

set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts;^
%USERPROFILE%\Downloads\PortableGit\bin;

cd /d "%USERPROFILE%\Downloads" &&^
git clone https://github.com/dirkarnez/tbuild.git &&^
cd tbuild &&^
.\setup.cmd &&^
.\install-packages.cmd &&^
.\install-as-package.cmd &&^
cd /d "%~dp0" &&^
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
