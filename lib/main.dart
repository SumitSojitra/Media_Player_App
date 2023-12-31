import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/views/screens/MusicPage/music1.dart';
import 'package:media_booster/views/screens/MusicPage/songs.dart';
import 'package:media_booster/views/screens/NamoNamoPage.dart';
import 'package:media_booster/views/screens/ShreeKrishnaPage.dart';
import 'package:media_booster/views/screens/homepage.dart';
import 'package:media_booster/views/screens/samayPage.dart';
import 'package:media_booster/views/screens/tabPage.dart';
import 'package:media_booster/views/screens/tumPremHoPage.dart';
import 'package:media_booster/views/screens/videoH.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
    darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    // home: HomePage(),
    routes: {
      // '/': (context) => videoPage(),
      'ramSiyaPage': (context) => HomePage(),
      'ShreeKrishnaPage': (context) => ShreeKrishnaPage(),
      'NamoNamoPage': (context) => NamoNamoPage(),
      'SamayPage': (context) => SamayPage(),
      'TumPremHo': (context) => TumPremHoPage(),
      '/': (context) => TabPage(),
      'musicPage': (context) => music1Page(),
      'songPage': (context) => songsPage(),
    },
  ));
}
