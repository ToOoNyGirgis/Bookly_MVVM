import 'package:bookly_mvvm/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

abstract class FontsStyles{
  static const title24 = TextStyle(fontSize: 24,fontWeight: FontWeight.bold);
  static const bookTitle30 = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  static const price20 = TextStyle(fontSize: 20,fontWeight: FontWeight.w900);
  static const authors16 = TextStyle(fontSize: 16,color: Colors.grey,fontFamily: AppFonts.mainFont);
}