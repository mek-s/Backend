

// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:hummy/pages/espaceParent.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:hummy/pages/Avatars.dart';
// import 'package:hummy/pages/dejeuner.dart';
// import 'package:hummy/pages/diner.dart';
// import 'package:hummy/pages/petitdejeuner.dart';
//import 'package:hummy/pages/bienvenue.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hummy/pages/principal.dart';

class Themes extends StatefulWidget {
  const Themes({Key? key}) : super(key: key);

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  AudioPlayer audio =  AudioPlayer();
  @override
  initState() {
    super.initState();
    GetAvatar();
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
  // ignore: non_constant_identifier_names
  Future<String> GetAvatar() async {
  late String avatar ='' ;
  final  prefs = await SharedPreferences.getInstance()  ;
  final token = prefs.getString('userID');
 
  final firestore = FirebaseFirestore.instance;
    DocumentSnapshot data  = await firestore
    .collection('users')
    .doc(token)
    .get()
    .catchError((onError){
      print('this error is from catch error'+ onError.toString());
    });
     print(data.data());
    avatar = data['avatar'];
     print('nom:$avatar');
    print('ID nom :$token');

     return avatar;
 }






  int? groupValue_5 = 0;
  bool click= true;
  bool click2= true;

  get img => null;
  
  @override
  Widget build(BuildContext context) {
 
    //DocumentReference userref = FirebaseFirestore.instance.collection("users").doc('biUDvwQiEXRq5HW6VPlTA1gWQXZ2');
    
    return
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar:
        AppBar(
          backgroundColor: Colors.transparent,
          leading:  FRadio(
            width: 80,
            height: 80,
            normalColor: Colors.transparent,
            value: 1,
            groupValue: groupValue_5,
            onChanged: (value) {
              setState(() {
                groupValue_5 = value as int?;
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EspcPrent()));//espace parent

              });
            },
           
            hasSpace: false,
            toggleable: true,
            selectedColor: const Color(0xffffc900),
            border: 1.5,
            child:FutureBuilder<String?> (
              future: GetAvatar(),
              builder: (context, snapshot)
              {
                if(snapshot.hasData){
                      String avatar = snapshot.data!; 
                      return Image.asset(avatar, width: 75);
                        
                  }
                  if(snapshot.hasError){
                    return Text('error');
                  }
              
                return Image.asset("assets/img/img_19.png", width: 75);
                
              },
            ),
            
          ),
          elevation: 0,
          actions: [
           // const SizedBox(height: 300),
            FRadio(
              width: 80,
              height: 80,
              normalColor: Colors.transparent,
              value: 1,
              groupValue: groupValue_5,
              onChanged: (value) {
                setState(() {
                  groupValue_5 = value as int?;
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Avatars()));//espace parent

                });
              },
              hoverChild: Image.asset("assets/img/img_29.png", width: 50),
              selectedChild: Image.asset("assets/img/img_29.png", width: 50),
              hasSpace: false,
              toggleable: true,
              selectedColor: const Color(0xffffc900),
              border: 1.5,
              child: Image.asset("assets/img/img_29.png", width: 75),

            ),
           // const SizedBox(height: 300),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  fixedSize: Size( 50,40),
                    primary: Colors.transparent,
                    //shadowColor: Colors,
                  elevation : 0,
                ),
                onPressed: (){setState(() async {
                  click= !click;
                   int result = await audio.pause();
                 }
                );
               },

                child: Padding(
                    padding:  const EdgeInsets.all(10.0),
                    child: Icon((click==false)? Icons.music_off : Icons.music_note)
                  )
              ),
            const SizedBox(height: 300),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  fixedSize: const Size( 50,40),
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  elevation : 0,
                ),
                onPressed: (){setState(() {
                  click2= !click2;
                });},

                child: Padding(
                    padding:  const EdgeInsets.all(10.0),
                    child: Icon((click2==false)? Icons.volume_off : Icons.volume_up_rounded))),
            const SizedBox(height: 300),
            // IconButton(
            //   icon: const Icon(Icons.people_alt_rounded),
            //   onPressed: () {},
            // ),
            // add more IconButton
          ],),
     
        body: Container(
          /*width: 320.0,*/

          decoration: const BoxDecoration(

            image: DecorationImage(
                image: AssetImage("assets/img/img_20.png"),
                fit: BoxFit.cover),
          ),
          child:

          Center
            (
            child:

            SizedBox(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    SizedBox( height: 200,
                      child: Center(
                        child: Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //const SizedBox(height: 1000),
                            //const SizedBox(height: 100),
                            ElevatedButton(onPressed: (){if (kDebugMode) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Principal() ));
//PetitDejeuner()
                            }},
                              style:

                              ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.white70 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  elevation: 20

                              ),
                              child: const Text('Petit déjeuner',style: TextStyle(color:  Color(
                                  0xff010158),fontSize: 24),),),
                          ],
                        ),
                      ),
                    ),

                    Center(
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          const SizedBox(height: 150),
                          ElevatedButton(onPressed: (){if (kDebugMode) {
                         Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Principal()));
                          }},
                            style:

                            ElevatedButton.styleFrom(

                                primary: Colors.transparent,
                                shadowColor: Colors.white70,
                                shape:
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 20
                            ),
                            child: const Text('Déjeuner',style: TextStyle(color: Color(
                                0xff010158),fontSize:30)),),
                        ],
                      ),
                    ),


                    Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 170),
                          ElevatedButton(onPressed: (){if (kDebugMode) {
                         Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Principal()));
                          }},

                            style:

                            ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.white70,
                                shape:
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 20

                            ),
                            child: const Text('Diner',style:  TextStyle(color: Color(
                                0xff010158),fontSize: 30)),),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ),
      );
  }
}

