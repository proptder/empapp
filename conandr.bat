@echo off

REM Run ADB commands
adb tcpip 5555
adb connect 192.168.0.135:5555