# Install from Antergos repo

pacman -S wget --noconfirm

wget http://repo.antergos.com/antergos/x86_64/antergos-keyring-20170524-1-any.pkg.tar.xz -O /tmp/antergos-keyring-20170524-1-any.pkg.tar.xz
wget http://repo.antergos.com/antergos/x86_64/antergos-mirrorlist-20170527-2-any.pkg.tar.xz -O /tmp/antergos-mirrorlist-20170527-2-any.pkg.tar.xz

pacman -U /tmp/antergos-keyring-20170524-1-any.pkg.tar.xz /tmp/antergos-mirrorlist-20170527-2-any.pkg.tar.xz --noconfirm
pacman-key --init archlinux antergos && sudo pacman-key --populate archlinux antergos

cat > /etc/pacman.conf <<EOS
[antergos]
SigLevel = PackageRequired
Include = /etc/pacman.d/antergos-mirrorlist
EOS

pacman -Syy z --noconfirm
pacman -S yajl yaourt --noconfirm
