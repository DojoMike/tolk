@echo off

cl /nologo /c /O2 /EHsc /GL /GR- /MD /vmb /vms /MP /W3 /WL /D_DLL /D_EXPORTING /D_UNICODE /D_USRDLL /D_WINDLL /D_WINDOWS /DNDEBUG /DWIN32 /DUNICODE /Fobin\x86\ src\*.c src\*.cpp src\java\*.cpp

rc /nologo /n /d _WIN32 /fo bin\x86\Tolk.res src\Tolk.rc

link /nologo /DLL /DYNAMICBASE /INCREMENTAL:NO /LTCG /MACHINE:X86 /MANIFEST:NO /NXCOMPAT /OPT:REF /OPT:ICF /VERSION:"1.0" /OUT:bin\x86\Tolk.dll User32.Lib Ole32.Lib OleAut32.Lib bin\x86\*.obj bin\x86\Tolk.res

del bin\x86\*.obj bin\x86\Tolk.exp bin\x86\Tolk.res
