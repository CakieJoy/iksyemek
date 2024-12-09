import 'package:flutter/material.dart';
import 'package:iks_yemek/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:iks_yemek/pages/side_menu.dart';

void main() {
  runApp(const iksYemek());
}

class iksYemek extends StatelessWidget {
  const iksYemek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İks Yemek Kontrol Paneli',
      //theme: ThemeData(
      //  primarySwatch: ProjectColor().mainColor,
      //),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 239, 226),
        body: HomePage()),
    );
  }
}