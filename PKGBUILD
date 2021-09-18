pkgname=xerolinux-filesystem-tool-git
pkgver=0.1.26
pkgrel=0
pkgdesc='Xerolinux Fylesystem Configuration Tool'
arch=('any')
license=('GPL3')
url='https://github.com/theduckchannel/xerolinux-filesystem-tool-git'
depends=('coreutils' 'python' 'python-pyqt5' 'python-qdarkstyle' 'python-psutil' 'xerolinux-rollback-git')
optdepends=()
makedepends=('git')
provides=('xerolinux-filesystem-tool-git')
conflicts=('xerolinux-filesystem-tool-git')
source=(git+"$url.git")
md5sums=('SKIP')

package() {
    cd "$pkgname"
    install -Dm755  "xerolinux-filesystem-tool" -t "$pkgdir/usr/bin/"
    install -Dm755  "configure-snapper" -t "$pkgdir/usr/share/$pkgname/"
    install -Dm755  "configure-timeshift-btrfs" -t "$pkgdir/usr/share/$pkgname/"
    install -Dm755  "configure-timeshift-ext4" -t "$pkgdir/usr/share/$pkgname/"
    install -Dm644  "images/xerolinux-filesystem-tool-icon.png" -t "$pkgdir/usr/share/icons/hicolor/48x48/apps"
    install -Dm644  "xerolinux-filesystem-tool.desktop" -t "$pkgdir/usr/share/applications/"
}
