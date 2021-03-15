@ECHO OFF
SETLOCAL
SET LOCAL_VER_FILE="%CD%\.haxe-version"
SET GLOBAL_VER_FILE="%~dp0.haxe-version"
IF EXIST %LOCAL_VER_FILE% (
    FOR /F "USEBACKQ" %%A IN (%LOCAL_VER_FILE%) DO (
        CALL "%~dp0\versions\%%A\haxelib.exe" %*
    )
) ELSE (
    FOR /F "USEBACKQ" %%A IN (%GLOBAL_VER_FILE%) DO (
        CALL "%~dp0\versions\%%A\haxelib.exe" %*
    )
)
ENDLOCAL
