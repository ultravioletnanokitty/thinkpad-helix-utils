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

package() {
  cd "$srcdir/$pkgname"
  install -D ./helix-rotate /usr/bin/helix-rotate
  install -D ./helix-toggle-touch /usr/bin/helix-toggle-touch
}
