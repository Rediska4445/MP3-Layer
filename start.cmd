@echo off
chcp 65001
rem REG ADD HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1

REG QUERY "HKCU\Console" /v "VirtualTerminalLevel"
if %ERRORLEVEL% EQU 1 REG ADD HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1
if %ERRORLEVEL% EQU 0 echo He is exist

java.exe -Djava.library.path=lib -Dfile.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8 -p lib\javafx-base\19\javafx-base-19-win.jar;lib\javafx.base.jar;lib\javafx-controls\19\javafx-controls-19-win.jar;lib\javafx.controls.jar;lib\json\json-simple-2.1.2.jar;lib\mp3agic-0.9.1.jar;lib\javafx.media.jar;target\classes;lib\javafx-graphics\19\javafx-graphics-19-win.jar;lib\javafx.graphics.jar;lib\jsoup-1.10.1.jar;lib\jnativehook-2.2.2.jar;lib\javafx-fxml\19\javafx-fxml-19-win.jar;lib\javafx.fxml.jar;lib\controlsfx\11.1.2\controlsfx-11.1.2.jar;lib\javafx-swing\17.0.2\javafx-swing-17.0.2-win.jar -m rf.ebanina.ebanina.ebanina/rf.ebanina.ebanina.Launch
