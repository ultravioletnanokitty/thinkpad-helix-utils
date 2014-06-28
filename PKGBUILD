# Maintainer: ultraviolet <ultravioletnanokitty@gmail.com> 

pkgname=thinkpad-helix-utils
pkgver=0.0.0
pkgrel=1
pkgdesc="Useful tools for the Lenovo ThinkPad Helix"
arch=('i686' 'x86_64')
url="https://github.com/ultravioletnanokitty/thinkpad-helix-utils"
license=('WTFPL')
depends=('xorg-xinput' 'xorg-xrandr')
makedepends=('git' 'python-docutils')
source=("$pkgname"::'git://github.com/ultravioletnanokitty/thinkpad-helix-utils.git')
md5sums=('SKIP')

pkgver() {
  cd "$srcdir/$pkgname"
  # Use the tag of the last commit
  git describe --long | sed -E 's/([^-]*-g)/r\1/;s/-/./g'
}

build() {
  cd "$srcdir/$pkgname"
  make
}

package() {
  cd "$srcdir/$pkgname"
  make PREFIX=/usr DESTDIR="$pkgdir" install
}
