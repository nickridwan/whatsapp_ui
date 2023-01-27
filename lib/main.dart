import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/pages/main_page.dart';
import 'package:whatsapp_ui/theme.dart';

enum Options { newGrup, newStream, deviceLinked, deviceConnect, setting }

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
        iconTheme: IconThemeData(color: AppColor.kGreyColor),
        appBarTheme: AppBarTheme(color: AppColor.kDarkBackgroundColor),
        useMaterial3: true,
        colorSchemeSeed: AppColor.kWhiteColor,
      ),
      home: const MainPage(),
    );
  }
}
