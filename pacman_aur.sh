# Install from Antergos repo

pacman -S wget --noconfirm

wget http://repo.antergos.com/antergos/x86_64/antergos-keyring-20170524-1-any.pkg.tar.xz -O /tmp/antergos-keyring-20170524-1-any.pkg.tar.xz
pacman -U /tmp/antergos-keyring-20170524-1-any.pkg.tar.xz --noconfirm
pacman-key --init archlinux antergos && sudo pacman-key --populate archlinux antergos

cat > /etc/pacman.conf <<EOS
[antergos]
SigLevel = PackageRequired
Usage = All
Server = http://repo.antergos.com/$repo/$arch
EOS

pacman -Syy z --noconfirm
pacman -S yajl yaourt --noconfirm
