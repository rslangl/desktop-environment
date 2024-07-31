# desktop-environment

* Window manager: dwm, with dmenu launcher
* Terminal emulator: st, with scroll

Install dependencies:
```shell
sudo apt install \
  build-essential \
  libx11-dev \
  libxft-dev \
  libxinerama-dev
```

Install the desired Nerd Font:
```shell
mkdir -p ~/.local/share/fonts && mkdir ~/Downloads
curl -fLo ~/Downloads/Inconsolata.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Inconsolata.zip && cd ~/Downloads
unzip Inconsolata.zip -d ~/.local/share/fonts
fc-cache -fv
```

Download sources:
```shell
./download.sh
```

Compile and install using a makeshift superbuild (sudo required because it installs to `/usr/local/bin`):
```shell
sudo make
```

Update alternatives:
```shell
update-alternatives --config x-terminal-emulator
```

DWM is launched via `xinitrc`, as specified in my [.dotfiles](https://github.com/rslangl/dotfiles)

Profit
