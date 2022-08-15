# Getting started to program in C

A machine "_architecture_" loosely refers to the type of processor that is being used on the machine on which the compiler is being installed. Depending on the manufacturer, brand and when the device was manufactured, there may be variations.

This project contains information to install the GNU C compiler binary and the GNU make system to help compile C programs. This would be one of the first steps to be ready to start writing programs and run them. This tutorial assumes that you have a computer with an internet connection which is running either Windows (Windows 10, 11, 7), Linux (Ubuntu/Debian) or MacOS.

Please contact the administrator if you need help identifying your computer architecture or operating system. The following tutorial should work on most systems.

The tutorial will take you through the following steps:

- [Getting started to program in C](#getting-started-to-program-in-c)
  - [1. Identify or confirm the processor and operating system running on your laptop](#1-identify-or-confirm-the-processor-and-operating-system-running-on-your-laptop)
    - [Windows](#windows)
    - [Linux](#linux)
    - [MACOS](#macos)
  - [2. Obtain and install the right compiler](#2-obtain-and-install-the-right-compiler)
    - [GCC on Linux](#gcc-on-linux)
    - [GCC on Windows](#gcc-on-windows)
      - [Modify the path variable in Windows](#modify-the-path-variable-in-windows)
    - [GCC Macos using Homebrew](#gcc-macos-using-homebrew)
  - [3. Install Visual Studio Code for editing C programs](#3-install-visual-studio-code-for-editing-c-programs)
    - [In case of Ubuntu Linux](#in-case-of-ubuntu-linux)
  - [4. Launch and run a C program](#4-launch-and-run-a-c-program)
  - [5. Installing GNU Make](#5-installing-gnu-make)
    - [Linux](#linux-1)
    - [Windows](#windows-1)
    - [Macos](#macos-1)
    - [Compiling Hello with GNU Make](#compiling-hello-with-gnu-make)
  - [References](#references)

## 1. Identify or confirm the processor and operating system running on your laptop

Depending on the operating system on your computer, please use one of the following mechanisms to identify or confirm the type of operating system and the type of processor. Please note that this tutorial assumes that you have one of the three operating systems available, Linux, Windows or MacOS.

In case you are using a Chromebook, Android or IOS on a IPad, the following instructions would not work as they contain different processor architectures than the standard x86_64 version that is used by the introductory course. While there are apps or mechanisms to make basic C programs to work on these systems, they are considered out of scope for the purpose of this course.

Please note that this tutorial assumes you are using Ubuntu or other Debian based Linux distributions with a Aptitude based package managing system. In case you are using any of the other UNIX based operating systems or Linux distributions please refer to your respective package management systems for installing the GNU-C compiler. Installing the compiler by compiling its source is out of scope for this tutorial.

### Windows

We will use the GNU-C compiler for windows. The following is the method to confirm the processor architecture and Windows versions. This method is will work on Windows 10 and Windows 11 operating systems. It is important to note that you have a __"64-bit Processor"__ displayed. Please contact the course administrators in case it says 32-bits.

![windows11 arch procedure](content/windows11-arch-process.gif?raw=true "Windows 11 Arch Procedure")

![windows11 arch](content/windows11-arch.png?raw=true "Windows 11 Arch")

### Linux

On linux, please run the following command to display the version of the Linux Kernel as well as the architecture its running.

    $ uname -a

The command should produce the following output.

![linux arch](content/linux-arch.png?raw=true "Linux Arch")

### MACOS

In case of the MacOS, the newer computers may have the M1 processor while some of them maybe using the Intel processors. There might be slight differences in the way compilers are installed. The following determines the mechanism to determine the processor on a computer running Macos

![macos arch procedure](content/macos-arch-process.gif?raw=true "Macos Arch Procedure")

![macos arch](content/macos-arch.png?raw=true "Macos Arch")

## 2. Obtain and install the right compiler

The method to get and install the GNU C/C++ Compiler differs based on the operating system. Please not that we are using the __"GNU Compiler"__.

Please note that there are other compilers such as LLVM/Clang, Intel, Borland, etc., some of which may be installed by default on your computer. The objective of the course and the programs listed are designed assuming GNU compilers. While programs may compile, some of the commands and methods may differ for other compilers. Thus, it is recommended to use GNU C for the purpose of this course.

### GCC on Linux

On linux, please run the following command to display the version of the Linux Kernel as well as the architecture its running.
The following command assumes that you have Ubuntu or Debian:

    $ sudo apt -y install build-essential

Please enter your password in case prompted.

Verify installation by running the following command

    $ gcc -v 

You should see an output like the following:

![linux gcc verify](content/linux-verify.png?raw=true "Linux Verify GCC")

### GCC on Windows

GCC on Windows is available from the [MinGW](https://www.mingw-w64.org)  which releases binaries of the latest versions.

The latest releases can be downloaded [here](https://github.com/niXman/mingw-builds-binaries/releases)

Download the a release with the following pattern

    x86_64-XX.X.X-release-posix-sjlj-rt_vXX-revX.Xz

For example,

    x86_64-12.1.0-release-posix-sjlj-rt_v10-rev3.7z


The releases are compressed in 7-zip format. Please download the following software to uncompressed the downloaded folder. 7-Zip can be downloaded from [here](https://www.7-zip.org/index.html). Please download the exe for 64-bit x64, [Direct link for download](https://www.7-zip.org/a/7z2201-x64.exe).

The unpressed file will create a folder called _"mingw64"_  with content as shown in the following pictures.

![windows gcc install](content/windows-gcc-install.gif?raw=true "Windows GCC Install")

#### Modify the path variable in Windows

Copy the mingw64 folder to _C:\windows\\_

The above location has to be added to Windows' system path for various software to discover the compiler.

On windows  Power Shell is used as a terminal. Power shell can be launched using the run dialogue. On the desktop hold _Win Key + r_ to bring up run dialogue. Type _"powershell"_ and press the run button to launch _powershell_ terminal.

![windows gcc verify](content/windows-gcc-path-verify.gif?raw=true "Windows GCC Path and verify")

Verify installation by running the following command

    c:\Users\user1> gcc -v

![windows gcc verify](content/windows-gcc-verify.png?raw=true "Windows Verify GCC")

### GCC Macos using Homebrew

[Homebrew](https://brew.sh) is a package management system for Mac OS.

Start the terminal program and run the following command:

    $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

![macos homebrew](content/brew-install.gif?raw=true "Install Brew on Macos")

In some cases homebrew will request the installation of _Apple's Xcode tools_. 

Once the installation of Homebrew is completed, the _brew_ command is available. Please use the following command to install gcc

    $ brew install gcc

Gcc installation can be verified by the following command

    $ gcc-12 -v

The following is the expected information

![macos gcc verify](content/gcc-verify-macos.png?raw=true "Verify gcc on Macos")

Note that the command might differ based on the version of the gcc compiler. Please also note that the default _gcc_ command may be bound to Apple's default _clang_ compiler. Please verify the installation with the correct command and note that it is pointing to the one installed using homebrew.

It should look something like the following:

![macos gcc path verify](content/gcc-verify-macos-path.png?raw=true "Verify gcc path on Macos")

## 3. Install Visual Studio Code for editing C programs

Visual Studio Code is an open-source IDE available for Linux, Windows and MacOS. It can be downloaded [here](https://code.visualstudio.com). Please download and install the right version for your operating system.

### In case of Ubuntu Linux

In case you are using Ubuntu Linux you can install Visual Studio Code using the snap command as follows:

    $ sudo snap install code --classic

This will prompt for _sudo_ password and will install the official Visual Studio Code as a snap package in Ubuntu.


Visual Studio Code would look like the following upon launching (Colours may differ).

![vscode](content/vscode.png?raw=true "Visual Studio Code Main Window")

## 4. Launch and run a C program

Download the contents of this repository as a zip file as shown by clicking the code button at the top of this [page](https://github.com/Makerspace-KTH/c_programing_intro).

![github download](content/download-hello.png?raw=true "Download Hello World")

Open the downloaded folder in Visual Studio Code. In case it provides a warning for trusting the developers in the folder, please accept / trust the developers.

Then click on the C program _hello.c_. This programs just prints the message "Hello, World!" to the console and will verify that the gcc is installed and ready to be used to compile programs.

Launch a Terminal from the toolbar and type the following command to compile the _hello.c_ file.

    $ gcc hello.c

This command generates the _"a.out"_ binary that can run. This file can be run with the following command.

    $ ./a.out

The following demonstrates the same

![run hello](content/run-hello.gif?raw=true "Run Hello")

## 5. Installing GNU Make

GNU Make is a tool that automates issuing of compile commands to build multiple files together. Completing the above task of installing the compilers automatically installs the _GNU Make_ command as part of the process.

### Linux

On linux _GNU Make_ is part of the _build-essential_ package. The installation can be verified with the following command:

    $ make -v

### Windows

On Windows, installing the _mingw-64_ also provides a version of _GNU Make_. Please note that the command name is slightly different. This can be invoked with the following command in a _Power Shell_.

    c:\Users\user1> mingw32-make.exe -v

### Macos

On Macos GNU make is part of the _Xcode Essentials_ package that is installed during the Homebrew installation. Make can be verified with the following command in Terminal.

    $ make -v

### Compiling Hello with GNU Make

This project has a _Makefile_ available that will compile the C program _hello.c_. This can be tested in a terminal, similar to the process described in Section 4. Open a terminal from the menu bar and type the following command:

    $ make

This will generate a binary _"hello"_ program. This can be executed using the same method as above by typing on Linux/Macos

    $ ./hello

or on Windows

To compile the program using GNU make

    C:\Users\user1\c_prgraming_intro> mingw32-make.exe

To run the program on Windows

    C:\Users\user1\c_prgraming_intro> hello.exe


## References

1. [Tutorials Point](https://www.tutorialspoint.com/makefile/index.htm)
2. [Make files with examples](https://makefiletutorial.com)
