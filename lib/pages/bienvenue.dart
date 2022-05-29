
import 'package:hummy/user.dart';
import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:hummy/pages/espaceParent.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hummy/pages/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Bienvenue extends StatefulWidget {
  const Bienvenue({Key? key}) : super(key: key);

  @override
  State<Bienvenue> createState() => _BienvenueState();
}

class _BienvenueState extends State<Bienvenue> {

     @override
      void initState() {
        super.initState();
         GetName();
      }

  Future<List<User>> fetch (BuildContext context) async {
    final jsonstring = await DefaultAssetBundle.of(context).loadString('users.json');
    return userFromJson(jsonstring);
  }
 
 // ignore: non_constant_identifier_names
 Future<String> GetName() async{
  String nom ='Salim';
  final  prefs = await SharedPreferences.getInstance()  ;
  final token = prefs.getString('userID');
  final firestore = FirebaseFirestore.instance;
  firestore.collection('users').doc('biUDvwQiEXRq5HW6VPlTA1gWQXZ2')
  .get().then((DocumentSnapshot doc){
    print('I entered get then');
    final data = doc.data() as Map<String, dynamic> ;
    nom = data['nom'];
     print('nom:$nom');
    print('ID nom :$token');
   } 
  );
  return nom;
}

 int? groupValue_5 = 0;
  bool click= true;
  bool click2= true;


  @override
  Widget build(BuildContext context) {
     DocumentReference userref = FirebaseFirestore.instance.collection("users").doc('biUDvwQiEXRq5HW6VPlTA1gWQXZ2');
     GetName().then((value){
       print('!!!!!!!!!!!!!!!!!!!!!!!!!!');
       print(value);
       print('!!!!!!!!!!!!!!!!!!!!!!!!!!');
     }).catchError((onError){
       print('0000000000000000000');
       print(onError.toString());
       print('0000000000000000000');
     }
     
     );
     

    return   Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar
      ( backgroundColor: Colors.transparent,
      
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
                      MaterialPageRoute(builder: (context) => const EspcPrent()));//espace parent

                });
              },
              child: Image.asset("assets/img/img_29.png", width: 75),
              hoverChild: Image.asset("assets/img/img_29.png", width: 50),
              selectedChild: Image.asset("assets/img/img_29.png", width: 50),
              hasSpace: false,
              toggleable: true,
              selectedColor: const Color(0xffffc900),
              border: 1.5,

            ),
           // const SizedBox(height: 300),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(
                  fixedSize: const Size( 50,40),
                    primary: Colors.transparent,
                    //shadowColor: Colors,
                  elevation : 0,
                ),
                onPressed: (){setState(() {
                  click= !click;
                });},

                child: Padding(
                    padding:  const EdgeInsets.all(10.0),
                    child: Icon((click==false)? Icons.music_off : Icons.music_note))),
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
           
            // add more IconButton
          ],),
      body: Container(


        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/Bienvenue.png"),
              fit: BoxFit.cover),
        ),
        child:
        
        Center
          (
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 250),
                    Title(
                      color: Colors.blueAccent,
                     child: Text(
                           '\tBienvenue \n \t\t\t $value',
                            style:  const TextStyle(
                              fontFamily: 'FredokaOne',
                              fontSize: 49, 
                              color:  Color( 0xff010158), 
                            ),
                          ),
                    //   FutureBuilder <String?> (
                    //    future: GetName(),
                    //    builder: (context, snapshot) {
                    //       if( snapshot.hasData ){
                    //       String name = snapshot.data!;
                    //       print(' freaking name $name');
                    //       print('Hhhhhhhh Its a joke');
                    //       return Text(
                    //        '\tBienvenue \n \t\t\t $name',
                    //         style:  const TextStyle(
                    //           fontFamily: 'FredokaOne',
                    //           fontSize: 49, 
                    //           color:  Color( 0xff010158), 
                    //         ),
                    //       );
                    //     }
                    //     if(snapshot.hasError){
                    //       return Text('error');
                    //     }
                    //         return Text('Loading...');
                        
                        
                    //    },
                    //  ),
                    //  FutureBuilder(
                    //    future: fetch(context),
                    //    builder:(context, snapshot){
                    //      if(snapshot.hasData){
                    //         return ListView.builder(
                    //           itemCount: 1,
                    //           shrinkWrap:true,
                    //           itemBuilder: (BuildContext context , int index){
                    //             User user = snapshot.data![index];
                    //             return Text(
                    //        '\tBienvenue \n \t\t\t ${user.nom}',
                    //         style:  const TextStyle(
                    //           fontFamily: 'FredokaOne',
                    //           fontSize: 49, 
                    //           color:  Color( 0xff010158), 
                    //         ),
                    //        );
                    //      },


                    //    );
                    //   }
                    //      return const CircularProgressIndicator();
                    //    },
                    //  ),
                    
             
                    //    },
                    //  ),
                    // Text(
                    //      '\tBienvenue \n \t\t\t $GetName()',
                    //     style:  const TextStyle(
                    //         fontFamily: 'FredokaOne',
                    //         fontSize: 49, 
                    //         color:  Color( 0xff010158), 
                    //       ),
                    //   )
                    ),
                  ],
                ),
              
                Center(
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //const SizedBox(height: 200),
                      const SizedBox(height: 200),
                       ElevatedButton(onPressed: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Themes()));//espace parent

                        },
                        child: 
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          width: 280,
                          height:100,
decoration: BoxDecoration(
 //shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(50),
  gradient: const LinearGradient(colors: [Color.fromARGB(237, 241, 239, 102),Color.fromARGB(235, 247, 192, 90),Color.fromARGB(236, 248, 172, 73),Color.fromARGB(179, 255, 145, 0),Color.fromARGB(239, 240, 125, 72),Color.fromARGB(179, 255, 81, 0)  ])
),
         child:  const Text("commençons l'aventure 🦸🏻‍♀️🦸🏻‍♂️",style: TextStyle(color:  Color(
                        0xff010158),fontSize: 30),textAlign: TextAlign.center),
                                    )  ,    style:
                        ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                            animationDuration: const Duration(milliseconds: 100),
                           //fixedSize: const Size(340, 70),
                           
                            primary:   Colors.transparent,
                            shadowColor: Colors.black12 ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ),),

                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}








