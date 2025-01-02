import 'package:flutter/foundation.dart'; // Để sử dụng kIsWeb
import 'dart:io' show Platform; // Import Platform chỉ khi không chạy trên Web

String getDeviceLocale() {
  // Hàm lấy ngôn ngữ tùy thuộc vào nền tảng
  String locale;

  if (kIsWeb) {
    // Xử lý trên nền tảng Web
    locale = const String.fromEnvironment('dart.vm.browser.language',
        defaultValue: 'en');
  } else {
    // Xử lý trên Mobile/Desktop
    locale = Platform.localeName;
  }

  // Kiểm tra và trả về mã ngôn ngữ tương ứng
  switch (locale) {
    case 'en_US':
    case 'en_US.UTF-8':
    case 'en':
      return 'en';
    case 'vi_VN':
    case 'vi_VN.UTF-8':
    case 'vi':
      return 'vn';
    case 'ja_JP':
    case 'ja_JP.UTF-8':
    case 'ja':
      return 'jp';
    case 'zh_CN':
    case 'zh_CN.UTF-8':
    case 'zh':
      return 'cn';
    case 'hi_IN':
    case 'hi_IN.UTF-8':
    case 'hi':
      return 'in';
    default:
      return 'en'; // Mặc định là tiếng Anh nếu không tìm thấy
  }
}
