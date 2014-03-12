pkgname=asus-brightness
pkgver=1.0
pkgrel=1
pkgdesc="Asus UX31A screen and keyboard backlight helper script."
arch=('any')
depends=('zsh' 'systemd')
license=('MIT')
url=('https://github.com/jbernhard/asus-brightness')

source=("$pkgname.zsh" "$pkgname.service")
sha512sums=('2fc89e479a5d601b4d588acaf553233860b38ccda67e035794882561915bc6e23061730f0f049de33fb1140584af6dd515ab04469e73dfcdb1fe5afd2dfcb2e4'
            '7529890daf2982294025379efe68065e2e49d67147de4f5f65b3b5e45a2219a3a13f600b8a3fd758394c9d382c0a3d17aaf5694162660a218200a8a39415dde3')

package() {
  cd $srcdir

  install -Dvm 0755 $pkgname.zsh "$pkgdir/usr/bin/$pkgname"
  install -Dm 0644 $pkgname.service "$pkgdir/usr/lib/systemd/system/$pkgname.service"
}
