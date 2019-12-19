import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:izeta_flutter_lottie/izeta_flutter_lottie.dart';

void main() {
  const MethodChannel channel = MethodChannel('izeta_flutter_lottie');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await IzetaFlutterLottie.platformVersion, '42');
  });
}
