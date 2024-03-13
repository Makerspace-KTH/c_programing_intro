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
      - [Using the Msys console for compiling](#using-the-msys-console-for-compiling)
    - [GCC Macos using Homebrew](#gcc-macos-using-homebrew)
  - [3. Install Visual Studio Code for editing C programs](#3-install-visual-studio-code-for-editing-c-programs)
    - [In case of Ubuntu Linux](#in-case-of-ubuntu-linux)
  - [4. Launch and run a C program](#4-launch-and-run-a-c-program)
  - [5. Installing GNU Make](#5-installing-gnu-make)
    - [GNU Make on Linux](#gnu-make-on-linux)
    - [GNU Make on Windows](#gnu-make-on-windows)
    - [GNU Make on Macos](#gnu-make-on-macos)
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

We will use a distribution from [Msys2](https://www.msys2.org). This is project that collects and distributes various open-source tools and libraries and allows for proper download and install of the same.

We start with the install of the Msys2 platform. The installation procedure is detailed on their site as well. Here is the summary of the process:

1. Download the latest Msys2 software from [their github release here](https://github.com/msys2/msys2-installer/releases/download/2024-01-13/msys2-x86_64-20240113.exe). Note that the file name has __"msys2-x86_64-xxxx.exe"__ to ensure that the 64-bit version is the one downloaded.
2. Run the installer by double-clicking it.
3. Follow the instructions. Please install the software to:

    C:\msys2\

    ![Install msys2](https://www.msys2.org/images/install-2-path.png "Install msys2")

4. When installation is complete please click finish. __Note please check the "Run MSYS2 now." checked.

5. This is launch the "Mingw-64-msys" environment.

    ![msys2 terminal](https://www.msys2.org/images/install-4-terminal.png "Msys2 mingw terminal")

6. Msys is a distribution platform and hence provides commands to search and install various tools for windows environment. The commands are based on the _pacman_ tool used by some linux distributions. Use the following commands to install the required mingw-gcc compiler.

    $ pacman -S mingw-w64-x86_64-toolchain

This will install all the required compiler and associated tools into the c:\msys2 folder.

#### Using the Msys console for compiling

_MSYS2_ comes with its own console which provides access to the entire _mingw_ toolchain and libraries. In order to launch the console, search for the application on the windows menu. Verify installation by running the following command

    $ gcc -v

![windows msys2 verify](content/windows-msys2-launch-verify.gif?raw=true "Windows Verify GCC on MSYS2")

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

Note: To launch the a terminal in Windows, please use the _"Mingw-Msys2"_ console as indicated in the install section. This provides a _mingw_ environment.

Change the current working directory to the location you downloaded the folder.

    $ cd <location>

On macos, you can copy the folder "command + c" and paste inside the Terminal app as shown.

![github changedir](content/change-dir-macos.gif?raw=true "Change directory macos")

On windows, you need to find the location and type the path in _bash_ format. For example, if the folder is downloaded to _C:\Users\Downloads\c_programming_intro_, type the following in the msys2 console:

    $cd /c/users/downloads/c_programming_intro

Note: all uppercase letters are converted to lower case in the bash format.

On Linux (Ubnutu), use the window system to open the terminal in the downloaded folder as shown.

![github changedir_linux](content/change-dir-linux.png?raw=true "Change directory Ubuntu")

Run the following command to compile the program:

    $ gcc hello.c

This command generates the _"a.out"_ binary that can run. This file can be run with the following command.

    $ ./a.out

The following demonstrates the same

![run hello](content/run-hello.gif?raw=true "Run Hello")


## 5. Installing GNU Make

GNU Make is a tool that automates issuing of compile commands to build multiple files together. Completing the above task of installing the compilers automatically installs the _GNU Make_ command as part of the process.

### GNU Make on Linux

On linux _GNU Make_ is part of the _build-essential_ package. The installation can be verified with the following command:

    $ make -v

### GNU Make on Windows

On Windows, installing the _mingw-64_ also provides a version of _GNU Make_. Please note that the command name is slightly different. This can be invoked with the following command in a _msys2 console_.

    $ mingw32-make.exe -v

### GNU Make on Macos

On Macos GNU make is part of the _Xcode Essentials_ package that is installed during the Homebrew installation. Make can be verified with the following command in Terminal.

    $ make -v

### Compiling Hello with GNU Make

This project has a _Makefile_ available that will compile the C program _hello.c_. This can be tested in a terminal, similar to the process described in Section 4. Open a terminal from the menu bar and type the following command:

    $ make

This will generate a binary _"hello"_ program. This can be executed using the same method as above by typing on Linux/Macos

    $ ./hello

or on Windows

To compile the program using GNU make

    $ mingw32-make.exe

To run the program on Windows

    $ hello.exe

## References

1. [Tutorials Point](https://www.tutorialspoint.com/makefile/index.htm)
2. [Make files with examples](https://makefiletutorial.com)
3. [Msys2](https://www.msys2.org)
