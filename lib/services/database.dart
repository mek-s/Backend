import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hummy/user.dart';

class DatabaseService{
  //  final String uid;

  // DatabaseService({
  //   required this.uid,
  // });
  // une reference vers la collection des utilisateurs
   final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');


   // modifier l'avatar de l'utilisateur
 Future<void> updateUserAvatar(String? uid ,String avatar) async {
   
    // final User? user =  FirebaseAuth.instance.currentUser; 
    return await usersCollection.doc(uid).update({
      'avatar': avatar,
      // niveau, domaine, question
    });
  }    

String? getUserName(String? uid) {
// final User? user =  FirebaseAuth.instance.currentUser; 
     FutureBuilder<DocumentSnapshot> (
          future: usersCollection.doc(uid).get(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot){
            if(snapshot.hasError){
                 return const  Center(
                   child:Text('Somethig wrong'),
                 );
            } 

            if(snapshot.connectionState == ConnectionState.done){
                Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              return data['nom'];
            }
            return  Center(
              child: Text(
               'Loading....', 
               style:TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
               ),
               ),
            );
          },
     );
} 
Future<void> addUser(String? uid,String nom,int age,String email,String password,String avatar,int score) async {
     final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
    return  usersCollection.doc(uid).set({
        'nom': nom,
        'age': age,
        'email': email,
        'password': password,
        'avatar': avatar,
        'score': score,
     })
     .then((value) => print('User added'))
     .catchError((error)=> print('Failed to add User to Firebase'));
   
   }





}




// String? getUserName(String? uid) {
//  //final User? user =  FirebaseAuth.instance.currentUser; 
//      FutureBuilder<DocumentSnapshot> (
//           future: usersCollection.doc(uid).get(),
//           builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot){
//             if(snapshot.hasError){
//                  return const  Center(
//                    child:Text('Somethig wrong'),
//                  );
//             } 

//             if(snapshot.connectionState == ConnectionState.done){
//                 Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
//               return data['nom'];
//             }
//             return  Center(
//               child: Text(
//                'Loading....', 
//                style:TextStyle(
//                  fontSize: 30,
//                  fontWeight: FontWeight.bold,
//                ),
//                ),
//             );
//           },
//      );
// } 
 
// for testing if auth is really the prblm

// Future<void> addUser(String? uid,String nom,int age,String email,String password,String avatar,int score) async {
//      final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
//     return  usersCollection.doc(uid).set({
//         'nom': nom,
//         'age': age,
//         'email': email,
//         'password': password,
//         'avatar': avatar,
//         'score': score,
//      })
//      .then((value) => print('User added'))
//      .catchError((error)=> print('Failed to add User to Firebase'));
   
//    } 

//   // modifier le nom de l'utilisateur
//   Future<void> updateUserName(String nom) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'nom':nom,})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }


//  // modifier l'age de l'utilisateur
//   Future<void> updateUserAge(int age) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'age':age})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }

//     // modifier l'email de l'utilisateur
//   Future<void> updateUserEmail(String email) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'email':email,})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }

//     // modifier le mot de passe de l'utilisateur
//   Future<void> updateUserPassword(String password) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'password':password,})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }
//     // modifier le score de l'utilisateur
//   Future<void> updateUserScore(int score) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'score':score,})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }

//     // modifier le rang de l'utilisateur
//   Future<void> updateUserRang(int rang) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'rang':rang,})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }
//   // modifier les infos de l'utilisateur
//    Future<void> updateUser(String? uid ,Utilisateur user) async{
//      return usersCollection
//      .doc(uid)
//      .update({
//        'nom':user.nom,
//         'age':user.age,
//         'email': user.email,
//         'password': user.password,
//         'avatar': user.avatar,
//         'score': user.score,})
//      .then((value) => print('data has been updated!'))
//      .catchError((error) => print('Failed to update data'));
//    }

//   //supprimer un utilisateur de la base de donnée 
//    Future<void> deleteUser() async{
//      return usersCollection
//      .doc(uid)
//      .delete()
//      .then((value) => print('user deleted!'))
//      .catchError((error) => print('Failed to delete user'));
//    }
// } 



//   getTrace() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       traces = prefs.getString('trace');
//     });
//   }

//   trace(BuildContext context) {
//     // TextEditingController costumController = TextEditingController();

//     String pic = "";
//     String pic1 = "";
//     String pic2 = "";
//     if (traces.substring(6, 7) == '1') {
//       if (traces.substring(12, 13) == '1') {
//         if (traces.substring(21, 23).compareTo('16') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         } else {
//           pic = 'images/star1.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         }
//       } else if (traces.substring(12, 13) == '2') {
//         if (traces.substring(21, 23).compareTo('22') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star1.png';
//         } else {
//           pic = 'images/star.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         }
//       } else if (traces.substring(12, 13) == '3') {
//         if (traces.substring(21, 23).compareTo('32') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star.png';
//         } else {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star1.png';
//         }
//       }
//     } else if (traces.substring(6, 7) == '2') {
//       if (traces.substring(12, 13) == '1') {
//         if (traces.substring(21, 23).compareTo('7') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         } else {
//           pic = 'images/star1.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         }
//       } else if (traces.substring(12, 13) == '2') {
//         if (traces.substring(21, 23).compareTo('8') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star1.png';
//         } else {
//           pic = 'images/star.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         }
//       } else if (traces.substring(12, 13) == '3') {
//         if (traces.substring(21, 23).compareTo('9') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star.png';
//         } else {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star1.png';
//         }
//       }
//     } else if (traces.substring(6, 7) == '3') {
//       if (traces.substring(12, 13) == '1') {
//         if (traces.substring(21, 23).compareTo('7') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         } else {
//           pic = 'images/star1.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         }
//       } else if (traces.substring(12, 13) == '2') {
//         if (traces.substring(21, 23).compareTo('8') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star1.png';
//         } else {
//           pic = 'images/star.png';
//           pic1 = 'images/star1.png';
//           pic2 = 'images/star1.png';
//         }
//       } else if (traces.substring(12, 13) == '3') {
//         if (traces.substring(21, 23).compareTo('9') >= 0) {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star.png';
//         } else {
//           pic = 'images/star.png';
//           pic1 = 'images/star.png';
//           pic2 = 'images/star1.png';
//         }
//       }
//     }

//     if (traces.substring(6, 7) == '1') {
//       domaine = "manières";
//     } else if (traces.substring(6, 7) == '2') {
//       domaine = "vegs";
//     } else if (traces.substring(6, 7) == '3') {
//       domaine = "animaux";
//     }

//     level = traces.substring(12, 13);
//     question = traces.substring(21, 23);
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             titlePadding: EdgeInsets.fromLTRB(50, 10, 50, 0),
//             actionsPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//             scrollable: true,
//             backgroundColor: Color.fromARGB(255, 202, 238, 249),
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//             title: BorderedText(
//               strokeColor: Color.fromARGB(255, 45, 12, 87),
//               strokeWidth: 3,
//               child: Text(
//                 'Progression',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontFamily: 'Boogaloo',
//                   fontSize: 30,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       // bottomLeft
//                       offset: Offset(1, 1),
//                     ),
//                     Shadow(
//                       // bottomRight
//                       offset: Offset(1, 1),
//                     ),
//                     Shadow(
//                       // topRight
//                       offset: Offset(0, 0),
//                     ),
//                     Shadow(
//                       // topLeft
//                       offset: Offset(0, 0),
//                       color: Colors.grey,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             actions: [
//               Column(children: [
//                 Stack(children: [
//                   Container(
//                     margin: EdgeInsets.fromLTRB(0, 0, 180, 10),
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 40,
//                       child: Image.asset(
//                         avatarpref,
//                         width: 58,
//                         height: 58,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 10,
//                     left: 30,
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(60, 0, 75, 0),
//                       child: Text(nom ?? '',
//                           style: TextStyle(
//                             fontFamily: 'Boogaloo',
//                             fontSize: 25.0,
//                             color: Colors.black,
//                           )),
//                     ),
//                   ),
//                   Positioned(
//                     left: 93,
//                     top: 60,
//                     child: Row(children: [
//                       Image(
//                         image: AssetImage(pic),
//                         height: 20,
//                         width: 20,
//                       ),
//                       Image(
//                         image: AssetImage(pic1),
//                         height: 20,
//                         width: 20,
//                       ),
//                       Image(
//                         image: AssetImage(pic2),
//                         height: 20,
//                         width: 20,
//                       )
//                     ]),
//                   ),
//                 ]),
//                 SizedBox(height: 10),
//                 Stack(children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         borderRadius: BorderRadiusDirectional.circular(20),
//                         color: Color.fromARGB(230, 125, 151, 159)),
//                     padding: EdgeInsets.fromLTRB(150, 50, 150, 50),
//                   ),
//                   Positioned(
//                       top: 15,
//                       left: 17,
//                       child: Row(
//                         children: [
//                           Column(children: [
//                             Text('Domaine',
//                                 style: TextStyle(
//                                   fontFamily: 'Boogaloo',
//                                   fontSize: 20.0,
//                                   color: Colors.white,
//                                 )),
//                             SizedBox(height: 10),
//                             Text(domaine,
//                                 style: TextStyle(
//                                   fontFamily: 'Boogaloo',
//                                   fontSize: 22.0,
//                                   color: Color.fromARGB(210, 192, 51, 194),
//                                 )),
//                           ]),
//                           SizedBox(width: 15),
//                           Column(children: [
//                             Text('Niveau',
//                                 style: TextStyle(
//                                   fontFamily: 'Boogaloo',
//                                   fontSize: 20.0,
//                                   color: Colors.white,
//                                 )),
//                             SizedBox(height: 10),
//                             Text(level,
//                                 style: TextStyle(
//                                   fontFamily: 'Boogaloo',
//                                   fontSize: 22.0,
//                                   color: Color.fromARGB(200, 59, 242, 67),
//                                 )),
//                           ]),
//                           SizedBox(width: 15),
//                           Column(children: [
//                             Text('Question',
//                                 style: TextStyle(
//                                   fontFamily: 'Boogaloo',
//                                   fontSize: 20.0,
//                                   color: Colors.white,
//                                 )),
//                             SizedBox(height: 10),
//                             Text(question,
//                                 style: TextStyle(
//                                   fontFamily: 'Boogaloo',
//                                   fontSize: 22.0,
//                                   color: Color.fromARGB(205, 251, 226, 0),
//                                 )),
//                           ]),
//                         ],
//                       )),
//                 ])
//               ]),
//             ],
//           );
//         });
//   }
 
 