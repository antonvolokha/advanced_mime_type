import 'package:advanced_mime_type/advanced_mime_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Jpeg', () {
    expect(getMimeType('img/1.jpg'), 'image/jpeg');
    expect(getMimeType('img/2.heic'), 'image/heic');
    expect(getMimeType('img/3.png'), 'image/png');
  });
}
