# ser_url_helper

Bu kütüphane verilen bir adresin https li fqdn sini döndürür.

## Örnekler
- example.com -> https://www.example.com/
- subdomain.example.com -> https://subdomain.example.com/
- www.example.com -> https://www.example.com/
- www.example.com// -> https://www.example.com/
- example.com.tr -> https://www.example.com.tr/
- subdomain.example.com -> https://subdomain.example.com.tr/

## Kullanımı
```dart
import 'package:ser_url_helper/ser_url_helper.dart';

main() {
    print(SerUrlHelper.fqdnUrl("example.com"));
}
```