# twiner

[![License](https://img.shields.io/github/license/myTerminal/twiner.svg)](https://opensource.org/licenses/MIT)  
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y5E5GL7)

Configuring and maintaining *YOUR* Linux made easy

> Note: I'm not a Bash expert (at least yet) so please forgive me for scripts that appear verbose or inefficient.

## What is it?

*twiner* is a collection of bash scripts to help you configure Linux effortlessly from within a command terminal. It provides a set of convenience functions for a growing list of commands, some of which may be used while setting up a freshly installed Linux system while others help save time while performing common tasks without the need to refer to man pages of related commands.

## Supported Platforms

Even though *twiner* may work on any generic Linux system, in its current state, it only contains scripts for the below platforms:

- Debian/Ubuntu (and distros based on Debian and Ubuntu)
- Fedora (and other RedHat- like platforms)
- Arch (and Arch-based distros)
- Void Linux (work in progress)

## Obtaining

*twiner* can be obtained from GitHub using `git`:

In a terminal of your choice, type:

    git clone https://github.com/myTerminal/twiner.git

*twiner* will be cloned at the current location.

## How to use

There are three ways to use *twiner*:

### 1. As an installed package

To install *twiner* as a package on your system, simply run the below at the root of the project directory:

    make install

You may be asked for `root` password and *twiner* will then be available in the form of two commands.

To use *twiner*, you may run `twiner-start` from the terminal, and to update it, you may run `twiner-update`.

### 2. As a standalone bash program

To use *twiner* as a bash program, run `start` at the project root.

        ./start

Choose a task to perform by hitting the key to the left of a menu item and follow the instructions.

### 3. As a library to consume in your custom scripts

To consume *twiner* as a library, source the file `load` at the project root.

        ./load

The above line sources all assets from *twiner* so that you can use them in your custom scripts.

## Modes

When used without arguments, *twiner* runs in `default` mode. However, the below two modes are also available.

### Transparent (debug) mode

To be able to see the commands *twiner* runs, use the argument `debug`.

    ./start debug

OR

    ./load debug

### Simulation mode

To just see what commands would be run instead of running them, use the argument `simulate`.

    ./start simulate

OR

    ./load simulate

## Testing custom bash functions

To test (and simulate) your own bash functions, you can use `./test-bed`.

Ex:

    ./test-bed ls -la

`test-bed` will echo the scripts that would otherwise run.

## To-Do

- Add more commonly used setup tasks
- Add support for Void Linux
- Provide more options for installing a display manager
