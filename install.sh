#!/bin/sh

set -e
set -x

# Defaults
PREFIX="/usr/local"

[ -d generic-webplayer ] || git clone https://github.com/mintsuki/generic-webplayer.git
[ -d generic-webplayer ] && cd generic-webplayer && git pull && cd ..

rm -rf build && mkdir build && cd build
cmake ../generic-webplayer \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -DPLAYER_NAME="element-player" \
    -DPLAYER_NICE_NAME="Element Player" \
    -DPLAYER_WEBAPP_URL="https://app.element.io/"
make
make install
cd ..

install -d "${PREFIX}/share/applications"
cat <<EOF >"${PREFIX}/share/applications/element-player.desktop"
[Desktop Entry]
Name=Element Player
Comment=Qtwebengine wrapper for Element, because electron sucks.
GenericName=Internet Messenger
Exec=$PREFIX/bin/element-player
Icon=$PREFIX/share/icons/element-player.icon
Terminal=false
Type=Application
Categories=Network;InstantMessaging;
EOF
chmod 644 "${PREFIX}/share/applications/element-player.desktop"

install -d "${PREFIX}/share/icons"
install -m 644 element-player.icon "${PREFIX}/share/icons/element-player.icon"
