@echo off
cls
title Naming Simulator Beta
echo Did you know? This is Beta
pause >nul
goto mainmenu

:code1
cls
title Error
echo No !! Dont enter the code!!
echo Get out of here!
echo Also dont remove this code
echo V                           
echo V
goto placeholder2

:mainmenu
cls
title Main menu
echo Main menu!
echo ==========
echo 1) Play
echo 2) Leave
echo Place your text down here!
set /p mainmenu=

if %mainmenu% == 1 goto playgame
if %mainmenu% == 2 goto exit
goto mainmenu

:playgame
cls
echo Pick a stage!
echo =============
echo 1) Stage 1
echo 2) Stage 2
echo 3) Stage 3
echo 4) Stage 4
echo 5) Stage 5
echo 6) Stage 6
echo Place your text down here!
set /p pick=

if %pick% == 1 goto stage1
if %pick% == 2 goto stage2
if %pick% == 3 goto stage3
if %pick% == 4 goto placeholder
if %pick% == 5 goto placeholder
if %pick% == 6 goto placeholder
goto playgame

:placeholder
cls
title Error!
echo This is an invalid room to enter, 
echo either this room does not exist, 
echo or.. its not added yet.
echo Press any key to go back to the main menu.
pause >nul
goto mainmenu

:placeholder2
cls
title Error!
echo This is an invalid room to enter, 
echo either this room does not exist, 
echo or.. you cheated your way here?
echo Press any key to go back to exit this game.
pause >nul
exit

:win
cls
echo You win!
echo.
echo Press any key to restart
pause >nul
exit

:stage1
cls
title Stage 1
echo Name your first character.
set /p name1=Name=
echo.
echo Hello, %name1%.
pause >nul
goto stage2

:stage2
cls
title Stage 2
echo Name your 2nd character.
set /p name2=Name=
echo.
echo Hi, %name1% and %name2%!
pause >nul
goto stage3

:stage3
cls
title Stage 3
echo Name your character (again)
set /p name3=Name=
echo.
echo Wow i have 3 friends! %name1%, %name2%, %name3%!
pause >nul
goto win