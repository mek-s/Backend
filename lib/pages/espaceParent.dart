// ignore_for_file: unnecessary_const, use_full_hex_values_for_flutter_colors, prefer_final_fields, non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/bienvenue.dart';
import 'package:hummy/pages/modifierProfile.dart';
import 'package:hummy/pages/themes.dart';
import 'package:hummy/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EspcPrent extends StatefulWidget {
  const EspcPrent({ Key? key }) : super(key: key);

  @override
  State<EspcPrent> createState() => _EspcPrentState();
}

class _EspcPrentState extends State<EspcPrent> {

  // recuperer le nom de l'utilisateur 
 Future<String> getName() async {
  late String name ='' ;
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
      name = data['name'];
     print('nom:$name');
    print('ID nom :$token');

     return name;
 }


 // recuperer l'avatar de l'utilisateur 
Future<String> getAvatar() async {
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

   // instance of auth controller 
   AuthController authcontroller = AuthController();
  String _themes =' Petit \n dejeuner';
  
  int  _Niv =1;
  int _Quest=3;
  int _Score=40;
  int _rang=2;

@override
  initState() {
    super.initState();
    getName();
    getAvatar();
   // loadMusic();
  }


  @override
  Widget build(BuildContext context) {
    String name='';
    FutureBuilder <String?> (
                       future: getName(),
                       builder: (context, snapshot) {
                          if( snapshot.hasData ){
                          name = snapshot.data!;
                          
                          return Text(name) ;
                          }
                        if(snapshot.hasError){
                          return Text('error');
                       
                         }
                          return Text('Loading...');
                       },
                     );
    String avatar='';
    FutureBuilder<String?> (
              future: getAvatar(),
              builder: (context, snapshot)
              {
                if(snapshot.hasData){
                     avatar = snapshot.data!; 
                      return Image.asset(avatar, width: 75);
                        
                  }
                  if(snapshot.hasError){
                    return Text('error');
                  }
              
                return Image.asset("assets/img/img_19.png", width: 75);
                
              },
            );
   
    return Scaffold(
      extendBodyBehindAppBar: true,
 appBar: AppBar(
 backgroundColor: Colors.transparent,
 elevation: 0,
 actions: [
   IconButton(
            icon: const Icon(CupertinoIcons.exclamationmark_circle ,color :   Color(
                        0xff010158),size: 50,),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bienvenue()));
            }),
 ],
        leading: IconButton(
            icon: const Icon(CupertinoIcons.arrowshape_turn_up_left_fill ,color :   Color(
                        0xff010158),size: 50,),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Themes()));
            }),


 ),
body: Container(
  height: 750,
  width: 800,
   decoration: const BoxDecoration(
      

          image: DecorationImage(
              image: AssetImage("assets/img/EspP.png"),
              fit: BoxFit.cover),
        ),
  child : 
  Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
const SizedBox(height: 40),
  Column(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:  [ 
   
      CircleAvatar(
                          radius :52,
                          backgroundImage: AssetImage(avatar),
                 ),
      const SizedBox(height: 15), 
        
        Text(name,style: TextStyle(color:  Color(
                        0xff010158),fontSize: 35),textAlign: TextAlign.center),
            
        const SizedBox(height: 15), 
   Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children : [  Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
               const Text('Score',style: const TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center),
                      Container(
                        height: 40, width:60,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2.1),
                        borderRadius: BorderRadius.circular(10)),
                        child: Text('$_Score',style: const TextStyle(color: const Color(
                        0xff010158) ,fontSize: 28),textAlign: TextAlign.center)),
                        
                        
            ],
          ),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
               const Text('Rang',style: const TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.center),
                      Container(
                        height: 40, width:60,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 2.1),
                        borderRadius: BorderRadius.circular(10)),
                        child: Text('$_rang',style: const TextStyle(color: const Color(
                        0xff010158) ,fontSize: 28),textAlign: TextAlign.center)),
                        
                        
            ],
          ),]
    )
    ],
  ),
   const SizedBox(height: 25), 
   ElevatedButton.icon(onPressed: (){
 showDialog(context: context, builder: (context)=> AlertDialog(
   shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
                                 // shape: CircleBorder(side: BorderSide.merge(BorderSide., BorderSide.none)),
                                backgroundColor: Colors.transparent,
                                 // title: const Text('Progrès',style: TextStyle(fontSize: 50,color: Color.fromARGB(255, 54, 39, 38)),textAlign: TextAlign.center,),
                                 content: Container(
                                  height: 350,  width: 1500,                                      
                         decoration: BoxDecoration(
                              image: const DecorationImage(
              image: AssetImage("assets/img/Progrés.png"),
              fit: BoxFit.cover),
        
 //shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(50),
  gradient: const LinearGradient(colors: [Color.fromARGB(255, 248, 252, 253),const Color.fromARGB(179, 253, 192, 163),const Color.fromARGB(239, 240, 125, 72),const Color.fromARGB(179, 255, 81, 0)  ])
),
                        child:        Column(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
   children:  [
  //  const Text('Progrés',style: const TextStyle(color:  const Color(
  //                       0xff010158),fontSize: 45),textAlign: TextAlign.center),
            const SizedBox(height: 140),        
     Row(mainAxisAlignment:MainAxisAlignment.spaceBetween, 
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
               const Text('Thème',style: const TextStyle(color:  const Color(
                        0xff010158),fontSize: 25),textAlign: TextAlign.center),
                      Text(_themes,style: const TextStyle(color: Color.fromARGB(179, 255, 81, 0) ,fontSize: 20),textAlign: TextAlign.center),
                        
                        
            ],
          ),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
               const Text('Niveau',style: const TextStyle(color:  const Color(
                        0xff010158),fontSize: 23),textAlign: TextAlign.center),
                      Text('$_Niv',style: const TextStyle(color:  Color.fromARGB(179, 255, 81, 0) ,fontSize: 20),textAlign: TextAlign.center),
                        
                        
            ],
          ),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
               const Text('Question',style: const TextStyle(color:  const Color(
                        0xff010158),fontSize: 20),textAlign: TextAlign.center),
                      Text('$_Quest',style: const TextStyle(color:  Color.fromARGB(179, 255, 81, 0) ,fontSize: 20),textAlign: TextAlign.center),
                        
                        
            ],
          ),
        ],
     ),
      const SizedBox(height: 0.000000000005), 
     ElevatedButton(onPressed: (){Navigator.of(context).pop();
                }, child: const Text('Revenir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                            // fixedSize: const Size(150, 60),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
   ],
 )
                                 )   ));

      }, icon:const Icon(Icons.add_chart,color : Colors.black,size: 50,), label: const Text('Progrés',style: TextStyle(color:  Color(
                            // ignore: duplicate_ignore
                            0xff010158),fontSize: 28),textAlign: TextAlign.start), style :ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                                            fixedSize: const Size(385, 75),
                              
                                primary:const Color(0xffffff4d7),
                                     shadowColor: const Color(
                        0xff010158) ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ), ),
 const SizedBox(height: 11.5), 
   ElevatedButton.icon(onPressed: (){  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Modifier()));//espace parent
}, icon:const Icon(CupertinoIcons.pencil_ellipsis_rectangle,color : Colors.black,size: 50,), label: const Text('Modifier le profil',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 26),textAlign: TextAlign.center), style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                            animationDuration: const Duration(milliseconds: 100),
                                 fixedSize: const Size(385, 75),
                            primary:const Color(0xffffff4d7),
                                  shadowColor: const Color(
                        0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ), ),
                         
                         const SizedBox(height: 11.5),
 ElevatedButton.icon(onPressed: (){  showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('Déconnexion',style: TextStyle(color:  const Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Voulez vous vraiment déconnecter ?',style: TextStyle(color:  const Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){ authcontroller.SignOut(); },
                 child: const Text('Oui',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(120, 60),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: const Text('Non',style: TextStyle(color:  Colors.white,fontSize: 18),textAlign: TextAlign.center),
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(120, 60),
                                primary:const Color(
                            0xff010158),
                                shadowColor:  Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),),
              ],
            ),
          ],
        )
        );
        
        }, icon:const Icon(CupertinoIcons.square_arrow_left,color : Colors.black,size: 40,), label: const Text(' Se déconnecter',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 26),textAlign: TextAlign.start), style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                            animationDuration: const Duration(milliseconds: 100),
                                         fixedSize: const Size(385, 75),
                            primary:const Color(0xffffff4d7),
                                 shadowColor: const Color(
                        0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ), ),
                        
                        //'Voulez vous vraiment supprimer votre compte ?\n vous allez perdre votre progrés
                        const SizedBox(height: 11.5),
                           //Color(0xFFFFFC38C),
                           ElevatedButton.icon(onPressed: (){
                          showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('Suppression',style: TextStyle(color:  const Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Voulez vous vraiment supprimer votre compte ?\n vous allez perdre votre progrés ',style: TextStyle(color:  const Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){authcontroller.Supprimer();}, child: const Text('Oui',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(120, 60),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: const Text('Non',style: TextStyle(color:  Colors.white,fontSize: 18),textAlign: TextAlign.center),
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(120, 60),
                                primary:const Color(
                            0xff010158),
                                shadowColor:  Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),),
              ],
            ),
          ],
        ));
                           }, icon:const Icon(CupertinoIcons.trash,color : Colors.black,size: 40,), label: const Text('Supprimer le compte',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 24.2),textAlign: TextAlign.center),
                         style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                            animationDuration: const Duration(milliseconds: 100),
                                // fixedSize: const Size(385, 75),
                            primary:const Color(0xffffff4d7),
                            shadowColor: const Color(
                        0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ), )
                   

    , const SizedBox(height: 16),
],
  )

),

);
  }
}
