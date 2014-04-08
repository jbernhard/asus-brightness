pkgname=asus-brightness
pkgver=1.0
pkgrel=1
pkgdesc="Asus UX31A screen and keyboard backlight helper script."
arch=('any')
depends=('zsh' 'systemd')
license=('MIT')
url=('https://github.com/jbernhard/asus-brightness')

source=("$pkgname.zsh" "$pkgname.service" "$pkgname.conf")
sha512sums=('f30c8b9e356d184cddfc9286d35c719929d8769e6a247b4707c6db195417a92b030f2e99a451f4a26d5d5850ef445db78bca32b4d7cbcda5e27d3187b9bbf26b'
            '7529890daf2982294025379efe68065e2e49d67147de4f5f65b3b5e45a2219a3a13f600b8a3fd758394c9d382c0a3d17aaf5694162660a218200a8a39415dde3'
            '9a8496b79b63693b6f4a9884d778534fc4a23503a2a0210c8bb0b188ee7257b71f31422ecd114ab62efdf9c87d5c66ccaf11d1718b6bdb237e6eeaec02503949')

package() {
  cd $srcdir

  install -Dvm 0755 $pkgname.zsh "$pkgdir/usr/bin/$pkgname"
  install -Dm 0644 $pkgname.service "$pkgdir/usr/lib/systemd/system/$pkgname.service"
  install -Dm 0644 $pkgname.conf "$pkgdir/usr/lib/modules-load.d/$pkgname.conf"
}
