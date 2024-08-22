# desktop-environment

* Window manager: i3 with rofi
* Terminal emulator: st with scroll

Install build dependencies:
```shell
sudo apt install build-essential
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

Install st dependencies:
```shell
xargs sudo apt -y install < st_dependencies.txt
```

Compile and install using a makeshift superbuild (sudo required because it installs to `/usr/local/bin`):
```shell
sudo make
```

Update alternatives:
```shell
update-alternatives --config x-terminal-emulator
```

Install i3 and polybar using apt:
```shell
sudo apt install -y i3 polybar
```

i3 is launched via `xinitrc`, as specified in my [.dotfiles](https://github.com/rslangl/dotfiles)

Install rofi dependencies:
```shell
xargs sudo apt -y install < rofi_dependencies.txt
```

Build and install rofi:
```shell
cd rofi
./configure
make
sudo make install
```

Profit
