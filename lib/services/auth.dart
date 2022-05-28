import 'dart:js';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hummy/pages/Avatars.dart';
import 'package:hummy/pages/bienvenue.dart';
import 'package:hummy/pages/principal.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthController extends GetxController {
// sign up text controllers 
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController nameController = TextEditingController();
  int ageController =4 ;
// login text controllers
final TextEditingController loginemailController = TextEditingController();
final TextEditingController loginpasswordController = TextEditingController();

 final FirebaseAuth _auth = FirebaseAuth.instance;


// sign up function
Future<void> SignUp() async{
  final user = await _auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
  final firestore = FirebaseFirestore.instance;
  firestore.collection('users').doc(user.user!.uid).set(
     {"email": emailController.text, "password": passwordController.text, "age":ageController, "nom":nameController.text}
  );
  if(user != null){
    
    print('signed up succesfully !');
     SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.setString("userID", user.user!.uid);
    Get.to( Avatars());
  }else {
    print('error');
  }

}

// sign in function
Future<void> SignIn() async {
  final user = await _auth.signInWithEmailAndPassword(email: loginemailController.text, password: loginpasswordController.text);
  if(user!= null){
    print('signed in succesfully');
     final prefs = await SharedPreferences.getInstance();
     prefs.setString("userID", user.user!.uid);
     Get.to(Bienvenue());
  }else{
     print('error');  
      Fluttertoast.showToast(msg: "Ce compte n'existe pas, vous devez vous inscrire d'abord ! ");
  }
     }


// sign out 
Future<void> SignOut() async{
  await _auth.signOut();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
  Get.offAll(Principal());
}

}