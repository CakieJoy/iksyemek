import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iks_yemek/pages/home_page.dart';
import 'package:iks_yemek/theme/project_widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [ProjectWidget().menubuton("Ana Sayfa", (){
        Get.off(const HomePage());
      },),ProjectWidget().menubuton("Menülerimiz", (){},),ProjectWidget().menubuton("Sipariş Ver", (){}),ProjectWidget().menubuton("Hakkımızda", (){})],),),);
  }
}