# twiner

[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/80x15.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Configuring and maintaining *YOUR* Linux made easy

> Note: I'm not a Bash expert (at least yet) so please forgive me for scripts that appear verbose or could've been written in a better way.

## What is it?

*twiner* is a collection of bash scripts to help you configure Linux effortlessly from within a command terminal. It provides a set of convenience functions for a growing list of commands, some of which may be used while setting up a freshly installed Linux system while others help save time while performing common tasks without the need to refer to man pages of related commands.

## Supported Platforms

Even though *twiner* may work on any generic Linux system, in its current state, it only contains scripts for the below platforms:

- Arch (and Arch-based distros)
- Fedora (and other Red Hat like platforms)
- Ubuntu (and other members of the Debian family)

## Installation

There is no installer for *twiner* as such but you can clone the source code from GitHub.

In a terminal of your choice, type:

    git clone https://github.com/myTerminal/twiner.git

Twiner will be cloned at the current location.

## How to use

There are at least two ways to use *twiner*.

### As a standalone bash program

To use *twiner* as a bash program, run `start` at the project root.

        ./start

Choose a task to perform by hitting the key to the left of a menu item and follow the instructions.

### As a library to consume in your custom scripts

To consume *twiner* as a library, source the file `load` at the project root.

        ./load

The above line sources all assets from *twiner* so that you can use them in your custom scripts.

## Modes

When used without arguments, *twiner* runs in `default` mode. However, the below two modes are also available.

### Transparent mode

To be able to see the commands *twiner* runs, use the argument `debug`.

    ./start debug

OR

    ./load debug

### Simulation mode

To just see what commands would be run instead of running them, use the argument `simulate`.

    ./start simulate

OR

    ./load simulate

### Testing custom bash functions

To test (and simulate) your own bash functions, you can use `./test-bed`.

Ex:

    ./test-bed ls -la

`test-bed` will echo the scripts that would otherwise run.

## To-Do

- Add more commonly used setup tasks
- Add support for more distros
- Provide more options for installing a display manager
