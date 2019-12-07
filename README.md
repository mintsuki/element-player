Riot Player
======

### Build Dependencies

#### Debian & Ubuntu

On Debian and Ubuntu, riot-player depends on the following packages:

`sudo apt install build-essential cmake qtbase5-dev qt5-default qtwebengine5-dev xdg-utils`

#### Void Linux

Install the following:

`sudo xbps-install -S gcc make cmake qt5-webengine-devel qt5-webchannel-devel qt5-declarative-devel qt5-location-devel xdg-utils`

#### FreeBSD

Install the following:

`pkg install cmake qt5-buildtools qt5-webengine xdg-utils`

#### Fedora

First, install the dependencies:

`cmake qt5-qtbase-devel qt5-qtwebengine qt5-qtwebengine-devel xdg-utils`

### Building

Just run the "install.sh" script. It will install it in `/usr/local` by default
but this can be overridden with the `PREFIX` variable.
