import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hummy/services/auth.dart';
import 'package:hummy/widgets/palette.dart';
import 'package:hummy/pages/bienvenue.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../services/database.dart';
import '../widgets/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

class Seconnecter extends StatefulWidget {
  const Seconnecter({Key? key}) : super(key: key);

  @override
  State<Seconnecter> createState() => _SeconnecterState();
}

class _SeconnecterState extends State<Seconnecter> {
//import 'package:audioplayers/audioplayers.dart';
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
// instance of  auth controller 
 AuthController authcontroller = AuthController();
//  final TextEditingController  _email= TextEditingController();
//  final TextEditingController  _password= TextEditingController();
 final _loginKey = GlobalKey<FormState>();
//final _auth = FirebaseAuth.instance;

//   Future <User?> signIn( String email,String password) async {
//    final FirebaseAuth _auth = FirebaseAuth.instance;
//     User? user;
//     try{
//       UserCredential usercredential = await _auth.signInWithEmailAndPassword(email : email , password:password ,)
//     .whenComplete((){ 

//                print('Sign in succefuly!');
//                Fluttertoast.showToast(msg: "Account signed in successfully :) ");
//               //  Navigator.pushAndRemoveUntil((context),
//               //         MaterialPageRoute(builder: (context) =>  Bienvenue()), (route) => false);
//                Navigator.pushNamed(context, '/bienvenue');

//             }
//          );
//       user = usercredential.user;
//   } on   FirebaseAuthException catch (e){
//     if (e.code == 'user-not-found'){
//       print('No user found for that email ');
//       Fluttertoast.showToast(msg: "Account not found :) ");
//     }
//     else if(e.code == 'wrong-password'){
//       print('wrong password provided');
//     }
//  }
//  return user;

//  }


  //  Future <void> signIn() async {
  //   await _auth.signInWithEmailAndPassword(email : _email.text.trim(), password: _password.text.trim(),)
  //   .whenComplete((){ 
  //              print('Sign in succefuly!');
              
  //              Fluttertoast.showToast(msg: "Account signed in successfully :) ");

  //                 Navigator.pushAndRemoveUntil((context),
  //                     MaterialPageRoute(builder: (context) => Bienvenue()), (route) => false);
  //           }
  //        ).catchError((e) {
  //        Fluttertoast.showToast(msg: e!.message);
  //       });
  // }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 260,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller : authcontroller.loginemailController,
                                validator : (value) 
                                { if (value!.isEmpty)
                                   { return 'This Field is required! '; }
                                    return null;  },
                                onSaved : (value) {},
                                decoration: InputDecoration(
                                   contentPadding: const EdgeInsets.symmetric(
                                   vertical: 10, horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    hintStyle: nada,
                                  ),
                                 style: nada,
                                  
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: TextFormField(
                                  obscureText: true,
                                  controller: authcontroller.loginpasswordController,
                                  validator : (value) 
                                { if (value!.isEmpty)
                                   { return 'This Field is required! '; }
                                    return null;  },
                                    onSaved: (value) {},
                                   decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Mot de passe',
                                    hintStyle: nada,
                                  ),
                                  style: nada,
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                'Mot de passe oublié?',
                                style: TextStyle(
                                    fontSize: 12.75,
                                    fontFamily: 'com',
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF58763),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: RaisedButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 30.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  color: Color(0xFFF58763),
                                  child: Text(
                                    "Se connecter",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontFamily: 'FredokaOne',
                                    ),
                                  ),
                                  textColor: Colors.white,
                                  onPressed: () {
                                    authcontroller.SignIn();
                                  
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}