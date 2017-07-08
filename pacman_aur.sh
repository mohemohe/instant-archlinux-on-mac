# Install from Antergos repo

pacman -S wget

wget http://repo.antergos.com/antergos/x86_64/antergos-mirrorlist-20170527-2-any.pkg.tar.xz -O /tmp/antergos-mirrorlist-20170527-2-any.pkg.tar.xz
pacman -U /tmp/antergos-keyring-20170524-1-any.pkg.tar.xz
pacman-key --init archlinux antergos && sudo pacman-key --populate archlinux antergos

cat <<EOS > /etc/pacman.conf
[antergos]
SigLevel = PackageRequired
Usage = All
Server = http://mirrors.antergos.com/$repo/$arc
EOS

pacman -S yajl yaourt
