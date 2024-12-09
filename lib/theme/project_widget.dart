import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iks_yemek/theme/project_color.dart';

class ProjectWidget{
  Widget menubuton(text,event){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
                onTap: event,
                child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: ProjectColor().darkColor,) ,
                child : Text(text, style: GoogleFonts.ubuntu(color: Colors.white,fontSize:16 ,),)),
              ),
    );
  }
}