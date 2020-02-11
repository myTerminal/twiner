# twiner

[![License: CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/80x15.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Configuring *YOUR* Linux made easy [under development]

## What is it?

**twiner** is a *bash* script to configure your Linux effortlessly with the help of a menu-driven interface within the terminal. It provides a list of commands, some of which may be used while setting up a freshly installed Linux system while others help save time while performing common tasks through shortcuts instead of having to search for commands online.

## Supported Platforms

Even though *twiner* may work on any generic Linux system, in its current state, it contains features specifically scripted for Arch-based distros. Soon there may be support for Debian (and Ubuntu), Fedora, and more.

## How to use

In order to use *twiner*,

1. Clone the repository on your system

        git clone https://github.com/myTerminal/twiner.git

2. Run `start` at the project root

        ./start

Choose a task to perform by hitting the key to the left of a menu item and follow the instructions.

### Transparent mode

To be able to see the commands *twiner* runs, use the argument `debug`.

    ./start debug

### Simulation mode

To just see what commands would be run instead of actually running them, use the argument `simulate`.

    ./start simulate

## To-Do

- Add more commonly used setup tasks
- Implement tasks for Debian and Fedora-based distros
- Add support for more distros
- Provide more options for installing a display manager
