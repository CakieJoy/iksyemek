import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iks_yemek/pages/side_menu.dart';
import 'package:iks_yemek/theme/project_color.dart';
import 'package:iks_yemek/theme/project_widget.dart';
import 'package:iks_yemek/assets/project_image.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints){
         if(constraints.maxWidth > 850){
          return HomePageDesktop(constraints);
        }
        else {
          return HomePageMobile(constraints);
        }
      }),
    );
      
  }

Widget HomePageMobile (constraints){
  return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(child: Column(
        children: [
          Text(constraints.maxWidth.toString()),
          
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: InkWell(
                      onTap: (){
                        Get.off(const SideMenu());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.menu,color: ProjectColor().darkColor, size: 30),
                      )),
                  ),
                  Text("İks Yemek", 
                          style: GoogleFonts.yujiMai(color: ProjectColor().darkColor,
                          fontSize: 40
                          ),
                          ),
                ],
              ),
            ],
          ),
          
          _ImageAndText(
            ProjectImage().kisirli,
          "En iyi Dubai Çikolatası Bir tek bizde var!",
          "M.O 750'den beri efsane Dubai Çikolatası! Mükemmel aşçılar ile gösterişli sunumumuz eşliği ile size Dubai Çikolatası yediriyoruz."),
          _ImageAndText(
            ProjectImage().hamsili,
          "Hamsili Dubai Çikolatası mı? Alası var bizde Alası!",
          "M.O 890'den beri efsane Hamsi Lezzeti Daha önce böyle güzel bir tat tatmadınız! Mükemmel aşçılar ile gösterişli sunumumuz eşliği ile size Dubai Çikolatası yediriyoruz."),
          _ImageAndText(
            ProjectImage().normal,
          "Antepler Türkiyeden eee? Yemeside Türkiyeden!",
          "1998'den beri efsane bir antep fıstığı, kadayıf ve çikolatasıyı başka bir yerde yiyemezsin! Bu çikolatada ANTEP FISTIĞI VAR AS BAYRAKLARI AS"),

          Column(children: [Image.network(ProjectImage().vegancklt)],)
          
          ],
      )),
      );
}

Widget HomePageDesktop (constraints){
  return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(child: Column(
        children: [
          Text(constraints.maxWidth.toString()),
          _topbar(),
          _ImageAndText(
            ProjectImage().kisirli,
          "En iyi Dubai Çikolatası Bir tek bizde var!",
          "M.O 750'den beri efsane Dubai Çikolatası! Mükemmel aşçılar ile gösterişli sunumumuz eşliği ile size Dubai Çikolatası yediriyoruz."),
          _ImageAndText(
            ProjectImage().hamsili,
          "Hamsili Dubai Çikolatası mı? Alası var bizde Alası!",
          "M.O 890'den beri efsane Hamsi Lezzeti Daha önce böyle güzel bir tat tatmadınız! Mükemmel aşçılar ile gösterişli sunumumuz eşliği ile size Dubai Çikolatası yediriyoruz."),
          _ImageAndText(
            ProjectImage().normal,
          "Antepler Türkiyeden eee? Yemeside Türkiyeden!",
          "1998'den beri efsane bir antep fıstığı, kadayıf ve çikolatasıyı başka bir yerde yiyemezsin! Bu çikolatada ANTEP FISTIĞI VAR AS BAYRAKLARI AS"),

          Column(children: [Image.network(ProjectImage().vegancklt)],)
          
          ],
      )),
      );
}

  Row _ImageAndText(image,title,subtitle) {
    return Row(
          children: [
            Image.network(image, width: 400,height: 400,),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(title, 
                      style: GoogleFonts.montserrat(color: ProjectColor().darkColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      ),),
                      Text(subtitle, 
                      style: GoogleFonts.montserrat(color: ProjectColor().darkColor,
                      fontSize: 20,
                      ),),
                      const SizedBox(height: 20,),
                      ProjectWidget().menubuton("Hemen Sipariş Ver!", (){
                        
                      })
                      
                      ],),
            )
            
          ],
        );
  }

  Padding _topbar() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("İks Yemek", 
        style: GoogleFonts.yujiMai(color: ProjectColor().darkColor,
        fontSize: 40
        ),
        ),
        
        Row(children: [
        ProjectWidget().menubuton("Ana Sayfa", (){}),
        ProjectWidget().menubuton("Menülerimiz", (){}),
        ProjectWidget().menubuton("Sipariş Ver", (){}),
        ProjectWidget().menubuton("Hakkımızda", (){})
        ],
        )
        
        ]
        ,),
      );
  }
}

