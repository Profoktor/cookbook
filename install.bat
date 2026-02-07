@echo off

if "%~1"=="" goto done

"%~1" -m venv ./.Python

call ./.Python/Scripts/activate.bat
python.exe -m pip install --upgrade pip
pip install .

wget -O .Python\Lib\site-packages\enchant\data\mingw64\share\enchant\hunspell\de_DE.dic https://github.com/LibreOffice/dictionaries/raw/refs/heads/master/de/de_DE_frami.dic
wget -O .Python\Lib\site-packages\enchant\data\mingw64\share\enchant\hunspell\de_DE.aff https://github.com/LibreOffice/dictionaries/raw/refs/heads/master/de/de_DE_frami.aff

:done
echo Finished
