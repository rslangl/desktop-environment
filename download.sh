#!/bin/zsh

set -e

DWM=dwm-6.5
DMENU=dmenu-5.3
ST=st-0.9.2
SCROLL=scroll-0.1

# dwm 6.5
echo "Downloading $DWM...\n"
curl -fsSL https://dl.suckless.org/dwm/${DWM}.tar.gz | tar xvzf - -C ./dwm --strip-components=1
echo "Done!\n\n"

# dmenu
echo "Downloading $DMENU...\n"
curl -fsSL https://dl.suckless.org/tools/${DMENU}.tar.gz | tar xvzf - -C ./dmenu --strip-components=1
echo "Done!\n\n"

# st
echo "Downloading $ST...\n"
curl -fsSL https://dl.suckless.org/st/${ST}.tar.gz | tar xvzf - -C ./st --strip-components=1
echo "Done!\n\n"

# scroll for st
echo "Downloading $SCROLL...\n"
curl -fsSL https://dl.suckless.org/tools/${SCROLL}.tar.gz | tar xvzf - -C ./scroll --strip-components=1
echo "Done!\n\n"
