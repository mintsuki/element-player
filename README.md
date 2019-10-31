Riot Player
======

riot-player is a "client" (really, it's just a web browser) meant for Riot.

### Why?

lol

### Build Dependencies

#### Debian & Ubuntu

On Debian and Ubuntu, riot-player depends on the following packages:

`sudo apt install build-essential qt5-qmake qtbase5-dev qt5-default qtwebengine5-dev xdg-utils`

#### Arch Linux

##### This section needs to be expanded to only include the needed dependencies

On Arch, it depends on qt5, which can be installed with:

`sudo pacman -S qt5 xdg-utils`

Then install all selections.

#### Void Linux

Install the following:

`sudo xbps-install -S gcc make qt5-qmake qt5-webengine-devel qt5-webchannel-devel qt5-declarative-devel qt5-location-devel xdg-utils`

#### FreeBSD

Install the following:

`pkg install qt5-qmake qt5-buildtools qt5-webengine xdg-utils`

#### Fedora

First, install the dependencies:

`qt5-qtbase-devel qt5-qtwebengine qt5-qtwebengine-devel xdg-utils`

On Fedora, the `qmake` binary has a different name than on most distributions (why? no clue), so do the following before building:

`sudo ln -s /usr/bin/qmake-qt5 /usr/bin/qmake`

### Building

To configure the package, use the ./configure script:

    ./configure

Or, if you want to specify a custom prefix:

    ./configure --prefix=/my/custom/path

To build, just run:

    make

To install it run:

    make install

(or `sudo make install` if you need admin privileges)

That is it, have fun! ;)

P.S.: I cannot write C++
