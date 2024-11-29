import 'package:flutter/material.dart';
import 'package:quiz_game/pages/my_app.dart';
import 'dart:io';// 1

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();//2
  runApp(const MyApp());
}

// lỗi chứng chỉ ssl, thêm 1, 2 và class MyHttpOverrides, lưu ý chỉ sử dụng trong quá trình phát triển app
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}