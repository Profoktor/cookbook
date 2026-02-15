@echo off

call ./.Python/Scripts/activate.bat

python -m sphinx -b=spelling -W ./kochbuch ./spelling
python -m sphinx -b=html -W ./kochbuch ./build
