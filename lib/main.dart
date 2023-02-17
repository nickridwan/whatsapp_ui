import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/pages/main_page.dart';
import 'package:whatsapp_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.kDarkBackgroundPrimaryColor,
        appBarTheme: AppBarTheme(color: AppColor.kDarkBackgroundColor),
        useMaterial3: false,
        colorSchemeSeed: AppColor.kWhiteColor,
      ),
      home: const MainPage(),
    );
  }
}
