Dynamic-Hook-Template
=====================

A Xcode template that builds a dynamic library but don't require mobile substrate.

## Installation for XCode

1. Download or clone the repository
2. Move the folder `Dynamic Hook.xctemplate` in the repository into the `/opt/iOSOpenDev/templates`
3. In Xcode, check that installation was successful by creating a New Project (⌘⇧N), and checking for the iOSOpenDev section under iOS.

## Write code
Create package and etc.

## Install dylib On Device
1. using scp or iFunBox whatever, upload your dylib file to your device
2. `DYLD_INSERT_LIBRARIES=path to your dylib file`

## Uninstallation
just delete it from your device.


## Screenshot
![image](https://raw.githubusercontent.com/BlueCocoa/Dynamic-Hook-Template/master/1.png)

![image](https://raw.githubusercontent.com/BlueCocoa/Dynamic-Hook-Template/master/2.png)


## License

Dynamic Hook Template is available under the MIT license. See the LICENSE file for more info.
