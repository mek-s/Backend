// ignore_for_file: file_names

// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fradio_nullsafety/fradio_nullsafety.dart';
// import 'package:try1/DDQuest/Dej/q1N2Dej.dart';
// import 'package:try1/DDQuest/Dej/q1N3Dej.dart';

// import 'package:try1/DDQuest/Dej/q6N1Dej.dart';
// import 'package:try1/DDQuest/Diner/q2N2Din.dart';
// import 'package:try1/DDQuest/Diner/q3N2Din.dart';
// import 'package:try1/DDQuest/Petit-Dej/q2N2Pd.dart';
// import 'package:try1/DDQuest/Petit-Dej/q5N2Pd.dart';
// import 'package:try1/pages/Avatars.dart';
// import 'package:try1/pages/Questions.dart';
// import 'package:try1/pages/themes.dart';

// class DejNiv1Quest extends StatefulWidget {
//   const DejNiv1Quest({Key? key}) : super(key: key);

//   @override
//   State<DejNiv1Quest> createState() => _DejNiv1QuestState();
// }

// class _DejNiv1QuestState extends State<DejNiv1Quest> {
//   int? groupValue_5 = 0;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar:

//       AppBar(
//         backgroundColor: Colors.transparent,
//          leading: IconButton(
//             icon: const Icon(CupertinoIcons.arrowshape_turn_up_left_fill ,color :   Color(
//                         0xff010158),size: 50,),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Themes()));
//             }),
      
//         elevation: 0,),
//       body:SingleChildScrollView(
//         child: Column(  
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
            
//             Container(
                     

//               width: 720.0,
//               height: 1000.0,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/img/img_35.png"),
//                     fit: BoxFit.cover),
//               ),
//               child:

//               SizedBox(
//                 height: 80,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Center(
//                       child:
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [

//                               const SizedBox(height: 100),
//                               FRadio(
                                
//                                 width: 100,
//                                 height: 90,
//                                 normalColor:  Color(
//                         0xff010158),
                               
//                                 value: 1,
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     groupValue_5 = value as int?;
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(builder: (context) => const Avatars()));

//                                   });
//                                 },
//                                 child: Image.asset("assets/repeat/img_22.png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_22.png", width: 50),
//                                 selectedChild: Image.asset("assets/img/img_22.png", width: 50),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 2.5,

//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 56),
//                           Column(
//                             children: [

//                               const SizedBox(height: 100),
//                               FRadio(
//                                  width: 100,
//                                 height: 90,
//                                normalColor:  Color(
//                         0xff010158),
//                                 value: 2,
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     groupValue_5 = value as int?;

//                                   });
//                                 },
//                                 child: Image.asset("assets/img/img_23.png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_23.png", width: 50),
//                                 selectedChild: Image.asset("assets/img/img_23.png", width: 50),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 2.5,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Center(
//                       child:
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [

//                               const SizedBox(height: 100),
//                               FRadio(
//                                 width: 100,
//                                 height: 90,
//                                normalColor:  Color(
//                         0xff010158),
//                                 value: 3,
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     groupValue_5 = value as int?;
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(builder: (context) => const Avatars()));


//                                   });
//                                 },
//                                 child: Image.asset("assets/img/img_24.png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_24.png", width: 50),
//                                 selectedChild: Image.asset("assets/img/img_24.png", width: 50),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 2.5,

//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 56),
//                           Column(
//                             children: [

//                               const SizedBox(height: 100),
//                               FRadio(
//                                 width: 100,
//                                 height: 90,
//                                normalColor:  Color(
//                         0xff010158),
//                                 value: 4,
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     groupValue_5 = value as int?;

//                                   });
//                                 },
//                                 child: Image.asset("assets/img/img_25.png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_25.png", width: 50),
//                                 selectedChild: Image.asset("assets/img/img_25.png", width: 50),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 2.5,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Center(
//                       child:
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [

//                               const SizedBox(height: 100),
//                               FRadio(

//                                 width: 100,
//                                 height: 90,
//                                 value: 5,
//                                normalColor:  Color(
//                         0xff010158),
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     groupValue_5 = value as int?;

//                                   });
//                                 },
//                                 child: Image.asset("assets/img/img_26.png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_26.png", width: 50),
//                                 selectedChild: Image.asset("assets/img/img_26.png", width: 50),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 2.5,



//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 56),
//                           Column(
//                             children: [

//                               const SizedBox(height: 100),
//                               FRadio(
//                                 width: 100,
//                                 height: 90,
//                                normalColor:  Color(
//                         0xff010158),
//                                 value: 6,
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     groupValue_5 = value as int?;
//                                     Navigator.push( context,MaterialPageRoute(builder: (context) => const Dej1()));
//                                   });
//                                 },
//                                 child: Image.asset("assets/img/img_27.png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_27.png", width: 50),
//                                 selectedChild: Image.asset("assets/img/img_27.png", width: 50),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 2.5,

//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],

//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),

//     );
//   }
// }
// class FruitBox extends StatelessWidget {
//  // const FruitBox({ Key? key }) : super(key: key);
// final String boxIcon;
// final Color boxColor;
// final bool val;
// bool Done;
// FruitBox(this.boxIcon,this.boxColor,this.val,this.Done);

 
//    @override
//   Widget build(BuildContext context) {
//     return  Draggable<FruitBox>(
//           data :FruitBox(boxIcon,boxColor,val,Done),
//          child: Container(
//             height :120.0,
//           width : 120.0,
//           color: boxColor,
//            child:  Image.asset(boxIcon),
          
//     //          child : Center(
//     //             child :  CircleAvatar(
//     //            backgroundColor: const Color(0xFFFDC28B),
//     // backgroundImage: AssetImage(boxIcon),
//     // radius: 38,
//     // ), ),
//     ),
//               feedback: Material(
//             child: Container( 
//               height :120.0,
//             width : 120.0,
//             color: const Color(0xFFFDC28B),
//             child:  Image.asset(boxIcon),
//     //         child :  CircleAvatar(
//     // backgroundColor: const Color(0xFFFDC28B),
//     // backgroundImage: AssetImage(boxIcon),
//     // radius: 38, ), 
//     )
//             ),

//           childWhenDragging:Container( 
//             height :120.0,
//           width : 120.0,
//           color: const Color(0xFFFDC28B),) ,
//         );
//   }
// }




