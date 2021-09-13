pkgname=xerolinux-filesystem-tool-git
pkgver=0
pkgrel=0
pkgdesc='Xerolinux Fylesystem Configuration Tool'
arch=('any')
license=('GPL3')
url='https://github.com/theduckchannel/xerolinux-filesystem-tool-git'
depends=('coreutils' 'python' 'python-pyqt5' 'python-psutil' 'xerolinux-rollback-git')
optdepends=()
makedepends=('git')
provides=('xerolinux-filesystem-tool-git')
conflicts=('xerolinux-filesystem-tool-git')
source=(git+"$url.git")
md5sums=('SKIP')

pkgver() {
	cd "$pkgname"
	printf "%s" "$(git describe --abbrev=0)"
}


package() {
    cd "$pkgname"
    install -Dm755  "xerolinux-filesystem-tool-git" -t "$pkgdir/usr/bin/"
    install -Dm755  "rollback-frontend" -t "$pkgdir/usr/bin/"
    install -Dm644  "images/xerolinux-logo.png" -t "$pkgdir/usr/share/$pkgname/images"
    install -Dm644  "images/xerolinux-about.png" -t "$pkgdir/usr/share/$pkgname/images"
    install -Dm644  "images/xerolinux-icon.png" -t "$pkgdir/usr/share/icons/hicolor/48x48/apps"
    install -Dm644  "xerolinux-filesystem-tool-git.desktop" -t "$pkgdir/usr/share/applications/"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
