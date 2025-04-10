@echo off
mkdir temp
pushd temp
    ..\bin\dsk2nib.exe "..\dsk\Apple DOS 3.3 August 1980.dsk" dos33.nib
    ..\bin\nib2dsk.exe dos33.nib dos33.dsk
    fc /b "..\dsk\Apple DOS 3.3 August 1980.dsk" dos33.dsk

    ..\bin\nib2dsk.exe "..\nib\Apple DOS 3.3 August 1980.nib" dos33.dsk 1
    fc /b "..\dsk\Apple DOS 3.3 August 1980.dsk" dos33.dsk
popd
