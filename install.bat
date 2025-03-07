@echo off

if "%~1"=="" goto done

"%~1" -m venv ./.Python

call ./.Python/Scripts/activate.bat
python.exe -m pip install --upgrade pip
pip install .
::sphinx==6.2.1
::pip install sphinxcontrib-spelling==8.0.0
::pip install sphinx_rtd_theme==1.2.0
::pip install sphinxcontrib-plantuml==0.27
::pip install sphinxcontrib-drawio==0.0.17
::pip install sphinx-design==0.6.0


:done
echo Finished
