import 'package:credit_card_app/core/themes/theme.dart';
import 'package:credit_card_app/views/pages/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
      enabled: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Credit Card App',
      theme: AppTheme.lightTheme,
      
      home: HomePage(),
    );
  }
}
