# Credits: https://gist.github.com/arlimus/5429535#file-pacman_aur-sh

# short version, just copy-and-paste this line:
pacman_aur(){ for pn in $*; do rm -rf /tmp/$pn; mkdir -p /tmp/$pn; pushd /tmp/$pn; wget https://aur.archlinux.org/packages/${pn:0:2}/$pn/PKGBUILD; makepkg; popd; done; sudo pacman -U $(for i in $*; do echo /tmp/$i/*.tar.xz; done;); }

# install yaourt on a fresh arch:
# 1. get requirements
pacman -S base-devel yajl sudo
# 2. make sure your user is added to sudoers
# as root: visudo
# 3. install package-query and yaourt from aur
pacman_aur package-query yaourt
