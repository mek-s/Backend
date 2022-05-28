import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hummy/firebase_options.dart';
import 'package:get/get.dart';
import 'package:hummy/pages/dejeuner.dart';
import 'package:hummy/pages/diner.dart';
import 'package:hummy/pages/inscrire.dart';
import 'package:hummy/pages/petitdejeuner.dart';
import 'package:hummy/pages/principal.dart';
import 'package:hummy/pages/seconnecter.dart';
import 'package:hummy/pages/themes.dart';
import 'package:hummy/pages/Avatars.dart';
import 'package:hummy/pages/bienvenue.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
// ignore: depend_on_referenced_packages
// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform ,
   );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   AudioPlayer audio =  AudioPlayer();
  @override
  initState() {
    super.initState();
    loadMusic();
  }

  Future loadMusic() async {
    audio.play("assets/audios/happy.mp3");
    print("mdrr");
  }

  @override
  void dispose() {
  //  audio = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
         return GetMaterialApp(
 //for navigation dont forget to use GetMaterialApp
      title: 'Hummy',
      initialRoute: '/',
      routes: {
        '/': (context) => Principal(), //AKA push inscrire et seconnecter
        '/Inscrire': (context) => Inscrire(),
        '/Seconnecter': (context) => Seconnecter(),
        '/petitDejeuner': (context) => PetitDejeuner(),
        '/Dejeuner': (context) => Dejeuner(),
        '/Diner': (context) => Diner(),
        '/bienvenue': (context) => Bienvenue(),
        '/avatars': (context) => Avatars(),
        '/theme': (context) => Themes(),
      },
      theme: ThemeData(fontFamily: 'FredokaOne'),
    //  home:  SourcesPd(),

      debugShowCheckedModeBanner: false,
    );
  }
}

