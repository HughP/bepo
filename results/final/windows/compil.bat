REM Batch � lancer dans ...\msklc\bin\i386\ avec les 6 fichiers .klc
REM Il g�n�re les fichiers dlls avec kbdutool.exe
REM Penser � modificer le num�ro de version (set ver=...)
REM Le nom de la dll est en dos 8.3 donc le nom de version est abr�g� en rc2x
REM Il faut ensuite faire les fichiers d'installation avec msklc
REM (Attention a bien garder le m�me nom de dll.)
@echo off
set ver=m
md bepo%ver%
cd bepo%ver%
md amd64
md i386
md ia64
md sources
md wow64
cd..
kbdutool.exe -u -x bepo%ver%.klc
move /y bepo%ver%.dll bepo%ver%/i386/
kbdutool.exe -u -i bepo%ver%.klc
move /y bepo%ver%.dll bepo%ver%/ia64/
kbdutool.exe -u -m bepo%ver%.klc
move /y bepo%ver%.dll bepo%ver%/amd64/
kbdutool.exe -u -o bepo%ver%.klc
move /y bepo%ver%.dll bepo%ver%/wow64/