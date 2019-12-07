#!/bin/sh

set -e
set -x

# Defaults
PREFIX="/usr/local"

[ -d generic-webplayer ] || git clone https://github.com/mintsuki/generic-webplayer.git
[ -d generic-webplayer ] && cd generic-webplayer && git pull && cd ..

rm -rf build && mkdir build && cd build
cmake ../generic-webplayer/src \
    -DPLAYER_NAME="riot-player" \
    -DPLAYER_NICE_NAME="Riot Player" \
    -DPLAYER_WEBAPP_URL="https://riot.im/app/"
make
cd ..

install -d "${PREFIX}/bin"
install -s build/riot-player "${PREFIX}/bin/riot-player"

install -d "${PREFIX}/share/applications"
cat <<EOF >"${PREFIX}/share/applications/riot-player.desktop"
[Desktop Entry]
Name=Riot Player
Comment=Qtwebengine wrapper for Riot, because electron sucks.
GenericName=Internet Messenger
Exec=$PREFIX/bin/riot-player
Icon=$PREFIX/share/icons/riot-player.icon
Terminal=false
Type=Application
Categories=Network;InstantMessaging;
EOF
chmod 644 "${PREFIX}/share/applications/riot-player.desktop"

install -d "${PREFIX}/share/icons"
install -m 644 riot-player.icon "${PREFIX}/share/icons/riot-player.icon"
