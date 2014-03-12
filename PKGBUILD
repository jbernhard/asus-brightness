pkgname=asus-brightness
pkgver=1.0
pkgrel=1
pkgdesc="Asus UX31A screen and keyboard backlight helper script."
arch=('any')
depends=('zsh' 'systemd')
license=('MIT')
url=('https://github.com/jbernhard/asus-brightness')

source=("$pkgname.zsh" "$pkgname.service")
sha1sums=('335e739a947b3ebe6aa480eae5a526cb4161d18b'
          'b85f19707ec9dfe9d2edf7a3455e4ca2ce2ed080')

package() {
	cd $srcdir

	install -Dvm 0755 $pkgname.zsh "$pkgdir/usr/bin/$pkgname"
  install -Dm 0644 $pkgname.service "$pkgdir/usr/lib/systemd/system/$pkgname.service"
}
