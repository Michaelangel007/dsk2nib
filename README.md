# dsk2nib
Apple II DSK-to-NIB and NIB-to-DSK image file conversion utilities.

# Build

# Windows

1. Open the [MSVC.022/dsk_nib_utility.sln](https://github.com/Michaelangel007/dsk2nib/blob/master/MSVC.2022/dsk_nib_utility.sln

2. Build > Batch Build > dsk2nib and nib2dsk projects, Release, x64.

3. Output will be in `bin\` subdirectory.

# Linux / macOS

Run `make clean all` to produce the `dsk2nib` and `nib2dsk`
executables. Use `make debug` to create debugging binaries, if desired.

# Sample Usage

Some Apple II games use the disk volume number to represent the disk number in a multi-disk set. The `dsk2nib` command is useful in this case, since the volume number is only present in a NIB image.

    dsk2nib shadowkeep4.dsk shadowkeep4.nib 4
    nib2dsk silicon.nib silicon.dsk

# Note

All DSK files can be turned into NIBs, but not vice-versa.

# History

I wrote these utilities in the early days of Apple II emulation, and only recently decided to make them buildable under macOS/Linux.
