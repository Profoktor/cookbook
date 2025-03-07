@echo off

if "%~1"=="" goto done

"%~1" -m venv ./.Python

call ./.Python/Scripts/activate.bat
python.exe -m pip install --upgrade pip
pip install .

:done
echo Finished
