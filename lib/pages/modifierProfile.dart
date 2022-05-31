// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/Avatars.dart';
import 'package:hummy/pages/espaceParent.dart';
import 'package:hummy/pages/principal.dart'; // normalement l'aide
import 'package:hummy/widgets/palette.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';

class Modifier extends StatefulWidget {
  const Modifier({Key? key}) : super(key: key);

  @override
  State<Modifier> createState() => _ModifierState();
}

class _ModifierState extends State<Modifier> {


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
// recuperer l'age de l'utilisateur 
Future<String> getAge() async {
  late String age='' ;
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
      age= data['age'];
     print('age:$age');
    print('ID nom :$token');

     return age;
 }
// recuperer l'email de lutilisateur 
Future<String> getEmail() async {
  late String email='' ;
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
     email = data['email'];
     print('email:$email');
    print('ID nom :$token');

     return email;
 }
// recuperer la mot de passe de l'utilisateur
Future<String> getPassword() async {
  late String password ='' ;
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
    password = data['password'];
     print('password:$password');
    print('ID nom :$token');

     return password;
 }


// modifier le nom de l'utilisateur 
  Future<void> setName(String nom) async{
     final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
     final  prefs = await SharedPreferences.getInstance()  ;
     final uid = prefs.getString('userID');
     return usersCollection
     .doc(uid)
     .update({'nom':nom,})
     .then((value) => print('data has been updated!'))
     .catchError((error) => print('Failed to update data'));
   }

 // modifier l'age de l'utilisateur
  Future<void> setAge(String age) async{
     final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
     final  prefs = await SharedPreferences.getInstance()  ;
     final uid = prefs.getString('userID');
     return usersCollection
     .doc(uid)
     .update({
       'age':age})
     .then((value) => print('data has been updated!'))
     .catchError((error) => print('Failed to update data'));
   }

// modifier l'email de l'utilisateur
  Future<void> setEmail(String email) async{
    final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
     final  prefs = await SharedPreferences.getInstance()  ;
     final uid = prefs.getString('userID');
     return usersCollection
     .doc(uid)
     .update({
       'email':email,})
     .then((value) => print('data has been updated!'))
     .catchError((error) => print('Failed to update data'));
   }
// modifier le mot de passe de l'utilisateur
  Future<void> setPassword(String password) async{
     final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
     final  prefs = await SharedPreferences.getInstance()  ;
     final uid = prefs.getString('userID');
     return usersCollection
     .doc(uid)
     .update({
       'password':password,})
     .then((value) => print('data has been updated!'))
     .catchError((error) => print('Failed to update data'));
   }



  int? groupValue_5 = 0;
  bool click = true;
  bool click2 = true;

 @override
  initState() {
    super.initState();
    getName();
    getAge();
    getEmail();
    getPassword();
    getAvatar();
   // loadMusic();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    // double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF010158),
                    size: 35,
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                IconButton(
                    icon: const Icon(
                      CupertinoIcons.exclamationmark_circle,
                      color: Color(0xff010158),
                      size: 33,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Principal())); // l'aide
                    }),
              ],
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/img/modifier.png"),
                      fit: BoxFit.fill)),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 0.15 * screenHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 0.20 * screenHeight,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.0),
                          )),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Avatars()));
                        },
                        child:FutureBuilder<String?> (
                           future: getAvatar(),
                        builder: (context, snapshot) {
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
                      )
                    ],
                  ),
                  Column(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // set name
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30)),
                          child: FutureBuilder<String?> (
                                  future: getName(),
                                  builder: (context, snapshot) {
                                 if(snapshot.hasData){
                                   String name = snapshot.data!; 
                                   return TextFormField(
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
                                     setName(value!);
                                    },
                                  decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                                   border: InputBorder.none,
                                   hintText: name,
                              
                                  hintStyle: nada,
                                 ),
                                  style: nada,
                                 keyboardType: TextInputType.text,
                                 textInputAction: TextInputAction.next,
                                );
                        
                               }
    
                                return  TextFormField(
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
                                     setName(value!);
                                    },
                                  decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                                   border: InputBorder.none,
                                   hintText: 'Nom d''utilisateur',
                              
                                  hintStyle: nada,
                                 ),
                                  style: nada,
                                 keyboardType: TextInputType.text,
                                 textInputAction: TextInputAction.next,
                                );
                
                                },
                             ),
                         
                        ),
                      ),
                      // set age
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30)),
                          child:FutureBuilder<String?> (
                                  future: getAge(),
                                  builder: (context, snapshot) {
                                 if(snapshot.hasData){
                                   String age = snapshot.data!; 
                                   return TextFormField(
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
                                     setAge(value!);
                                   },
                                  decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                                   border: InputBorder.none,
                                   hintText: age,
                              
                                  hintStyle: nada,
                                 ),
                                  style: nada,
                                 keyboardType: TextInputType.text,
                                 textInputAction: TextInputAction.next,
                                );
                        
                                  }
    
                                return TextFormField(
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
                                     setAge(value!);
                                   },
                                  decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                                   border: InputBorder.none,
                                   hintText: 'Age',
                              
                                  hintStyle: nada,
                                 ),
                                  style: nada,
                                 keyboardType: TextInputType.text,
                                 textInputAction: TextInputAction.next,
                                );
                                },
                             ),
                         
                        ),
                      ),
                     // set email
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30)),
                          child: 
                          FutureBuilder<String?> (
                                  future: getEmail(),
                                  builder: (context, snapshot) {
                                 if(snapshot.hasData){
                                   String email = snapshot.data!; 
                                   return TextFormField(
                                     validator: (value) =>
                                     value != null && EmailValidator.validate(value) ? 'Enter valid email' : null,
                                    onSaved: (value) {
                                       setEmail(value!);
                                    },
                                 
                            
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: InputBorder.none,
                              hintText: email,
                              hintStyle: nada,
                            ),
                            style: nada,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          );
                        
                        }
    
                                return  TextFormField(
                                     validator: (value) =>
                                     value != null && EmailValidator.validate(value) ? 'Enter valid email' : null,
                                    onSaved: (value) {
                                       setEmail(value!);
                                    },
                                 
                            
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: nada,
                            ),
                            style: nada,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          );
                
                        },
                        ),
                          
                        ),
                      ),
                      // set password       
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30)),
                          child: 
                           FutureBuilder<String?> (
                                  future: getPassword(),
                                  builder: (context, snapshot) {
                                 if(snapshot.hasData){
                                   String password = snapshot.data!; 
                                   return 
                             TextFormField(
                                validator: (value) {
                                RegExp regex = new RegExp(r'^.{6,}$');
                                if (value!.isEmpty) {
                                return ("Password is required");
                               }
                              if (!regex.hasMatch(value)) {
                                  return ("Enter Valid Password(Min. 6 Character)");
                                }
                              },
                          onSaved: (value) {
                              setPassword(value!) ;
                           },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: InputBorder.none,
                              hintText: password,
                              hintStyle: nada,
                            ),
                            obscureText: true,
                            style: nada,
                            textInputAction: TextInputAction.done,
                         
                         );
                                  }
                                  return 
                                   TextFormField(
                                validator: (value) {
                                RegExp regex = new RegExp(r'^.{6,}$');
                                if (value!.isEmpty) {
                                return ("Password is required");
                               }
                              if (!regex.hasMatch(value)) {
                                  return ("Enter Valid Password(Min. 6 Character)");
                                }
                              },
                          onSaved: (value) {
                              setPassword(value!) ;
                           },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              border: InputBorder.none,
                              hintText: 'Mot de passe',
                              hintStyle: nada,
                            ),
                            obscureText: true,
                            style: nada,
                            textInputAction: TextInputAction.done,
                         
                         );
                        },
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 48.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45.0)),
                            color: Color(0xFFF58763),
                            child: Text(
                              "Enregistrer",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'FredokaOne',
                              ),
                            ),
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const EspcPrent()));
                            }),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
