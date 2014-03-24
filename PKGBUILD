pkgname=asus-brightness
pkgver=1.0
pkgrel=1
pkgdesc="Asus UX31A screen and keyboard backlight helper script."
arch=('any')
depends=('zsh' 'systemd')
license=('MIT')
url=('https://github.com/jbernhard/asus-brightness')

source=("$pkgname.zsh" "$pkgname.service")
sha512sums=('9c27b6a1cc7d86648f70a0ad5157c713f646d7ea8b0139de6a1f94d0727c26161935243d5f07a85c416e56021b6140ee523e76bda535b040442a8abac668b739'
            '7529890daf2982294025379efe68065e2e49d67147de4f5f65b3b5e45a2219a3a13f600b8a3fd758394c9d382c0a3d17aaf5694162660a218200a8a39415dde3')

package() {
  cd $srcdir

  install -Dvm 0755 $pkgname.zsh "$pkgdir/usr/bin/$pkgname"
  install -Dm 0644 $pkgname.service "$pkgdir/usr/lib/systemd/system/$pkgname.service"
}
