set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Tools\MSVC\14.25.28610\bin\HostX86\x86;C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;%PATH%
set DMD_LIB=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Tools\MSVC\14.25.28610\lib\x64;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.18362.0\um\x64
set VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\
set VCTOOLSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Tools\MSVC\14.25.28610\
set VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\
set WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
set WindowsSdkVersion=10.0.18362.0
set UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\
set UCRTVersion=10.0.18362.0
"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps x64\Debug\D_Lang_LowLevelBSOD.dep dmd -debug -m64 -g -gf -X -Xf"x64\Debug\D_Lang_LowLevelBSOD.json" -c -of"x64\Debug\D_Lang_LowLevelBSOD.obj" D_Lang_LowLevelBSOD.d
if %errorlevel% neq 0 goto reportError

set LIB=C:\D\dmd2\windows\bin\..\lib64
echo. > C:\Users\mehdi\source\repos\D_Programming_Test\D_Lang_LowLevelBSOD\x64\Debug\D_Lang_LowLevelBSOD.link.rsp
echo "x64\Debug\D_Lang_LowLevelBSOD.obj" /OUT:"x64\Debug\D_Lang_LowLevelBSOD.exe" user32.lib  >> C:\Users\mehdi\source\repos\D_Programming_Test\D_Lang_LowLevelBSOD\x64\Debug\D_Lang_LowLevelBSOD.link.rsp
echo kernel32.lib  >> C:\Users\mehdi\source\repos\D_Programming_Test\D_Lang_LowLevelBSOD\x64\Debug\D_Lang_LowLevelBSOD.link.rsp
echo legacy_stdio_definitions.lib /LIBPATH:"C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Tools\MSVC\14.25.28610\lib\x64" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\ucrt\x64" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\lib\10.0.18362.0\um\x64" /DEBUG /PDB:"x64\Debug\D_Lang_LowLevelBSOD.pdb" /INCREMENTAL:NO /NOLOGO /noopttls /NODEFAULTLIB:libcmt libcmtd.lib /SUBSYSTEM:WINDOWS >> C:\Users\mehdi\source\repos\D_Programming_Test\D_Lang_LowLevelBSOD\x64\Debug\D_Lang_LowLevelBSOD.link.rsp
"C:\Program Files (x86)\VisualD\mb2utf16.exe" C:\Users\mehdi\source\repos\D_Programming_Test\D_Lang_LowLevelBSOD\x64\Debug\D_Lang_LowLevelBSOD.link.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -msmode -deps x64\Debug\D_Lang_LowLevelBSOD.lnkdep "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Tools\MSVC\14.25.28610\bin\HostX86\x86\link.exe" @C:\Users\mehdi\source\repos\D_Programming_Test\D_Lang_LowLevelBSOD\x64\Debug\D_Lang_LowLevelBSOD.link.rsp
if %errorlevel% neq 0 goto reportError
if not exist "x64\Debug\D_Lang_LowLevelBSOD.exe" (echo "x64\Debug\D_Lang_LowLevelBSOD.exe" not created! && goto reportError)

goto noError

:reportError
echo Building x64\Debug\D_Lang_LowLevelBSOD.exe failed!

:noError