import 'package:flutter/material.dart';

class SuraData {
  SuraData(
    this.suraId,
    {
    required this.suraAyaFile,
    required this.suraNameArabic,
    required this.suraNameEnglish,

    required this.suraAyahsCount,
  });
  final String suraId;
  final String suraAyaFile;
  final String suraNameArabic;
  final String suraNameEnglish;
  final String suraAyahsCount;
}
