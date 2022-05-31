// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hummy/pages/Avatars.dart';
import 'package:hummy/widgets//palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hummy/services/auth.dart';
import '../widgets/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

class Inscrire extends StatefulWidget {
  const Inscrire({Key? key}) : super(key: key);

  @override
  State<Inscrire> createState() => _InscrireState();
}

class _InscrireState extends State<Inscrire> {
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
  // instance of auth controller 
   AuthController authcontroller = AuthController();
    // final _auth = FirebaseAuth.instance;
  String? errorMessage;
   final _formKey = GlobalKey<FormState>();
  //final usernameEditingController = new TextEditingController();
  // final emailEditingController = new TextEditingController();
  // final passwordEditingController = new TextEditingController();
   // ignore: non_constant_identifier_names
    // int Age = 4 ;
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
                    height: 250,
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
                                  vertical: 12.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child:TextFormField(
                                 autofocus: false,
                                 controller: authcontroller.nameController,
                                 keyboardType: TextInputType.name,
                                 validator: (value) {
                                     RegExp regex = new RegExp(r'^.{3,}$');
                                      if (value!.isEmpty) {
                                        return ("Name cannot be Empty");
                                       }
                                      if (!regex.hasMatch(value)) {
                                        return ("Enter Valid name(Min. 3 Character)");
                                       }
                                      return null;
                                    },
                                 onSaved: (value) {
                                      authcontroller.nameController.text = value!;
                                    },
                                 textInputAction: TextInputAction.next,
                                 decoration: InputDecoration(
                                     contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                     border: InputBorder.none,
                                     hintText: 'Nom utilisateur',
                                     hintStyle: nada,
                                    ),
                                ),     

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                    child: 
                                    TextFormField(
      
      autofocus: false,
      // controller: Age,
      style: nada,
      keyboardType: TextInputType.text,
     // inputFormatters: <TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Age");

        }
        // reg expression for email validation
        if (!RegExp(r'[2-9]').hasMatch(value)) {
          return ("Please Enter an age between 2 & 9");
        }
        return null;
      },
      onSaved: (value) {
       authcontroller.ageController.text =value!;
      },
      decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: 'Age',
                                    hintStyle: nada,
                                  ),
    ),

                              
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                 child:
     TextFormField(
      style: nada,
      autofocus: false,
      controller: authcontroller.emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) =>
          value != null && EmailValidator.validate(value) ? 'Enter valid email' : null,
      onSaved: (value) {
       authcontroller.emailController.text= value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        border: InputBorder.none,
        hintText: 'Email',
        hintStyle: nada,
      ),
    ),

                          
                          
                              ),
   ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(30)),
                                    child: TextFormField(
      autofocus: false,
      controller: authcontroller.passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        authcontroller.passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        border: InputBorder.none,
        hintText: 'Mot de passe',
        hintStyle: nada,
      ),
    ),
                                
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF58763),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: FlatButton(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 55.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                    color: Color(0xFFF58763),
                                    child: Text(
                                    "S'inscrire",
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontFamily: 'FredokaOne',
                                    ),
                                  ),
                                   textColor: Colors.white,
                                   onPressed: () {
                                    authcontroller.SignUp();
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

// Future<void> signUp(String email, String password) async {
   
//       try {
//         await _auth
//             .createUserWithEmailAndPassword(email: email, password: password)
//             .whenComplete((){ 
//                print('Sign Up succefuly!');
//                DatabaseService().addUser( _auth.currentUser?.uid,usernameEditingController.text, Age, emailEditingController.text,  passwordEditingController.text, 'hehe', 0);
//                Fluttertoast.showToast(msg: "Account created successfully :) ");

//                   Navigator.pushAndRemoveUntil((context),
//                       MaterialPageRoute(builder: (context) => Avatars()), (route) => false);
//             }
//           )
//           .catchError((e) {
//          Fluttertoast.showToast(msg: e!.message);
//         });
//       }on FirebaseAuthException catch (error) {
//         print(error);
//       }
    
//   }



}
