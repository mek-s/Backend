// ignore_for_file: file_names


// // ignore_for_file: prefer_const_constructors

// import 'dart:collection';

// import 'package:flutter/material.dart';
// import 'package:fradio_nullsafety/fradio_nullsafety.dart';

// import 'package:hummy/DDQuest/Dej/q1N2Dej.dart';
// import 'package:hummy/DDQuest/Dej/q1N3Dej.dart';
// import 'package:hummy/DDQuest/Dej/q6N1Dej.dart';
// import 'package:hummy/DDQuest/Diner/q2N2Din.dart';
// import 'package:hummy/DDQuest/Diner/q3N2Din.dart';
// import 'package:hummy/DDQuest/Petit-Dej/q1N2Pd.dart';
// import 'package:hummy/DDQuest/Petit-Dej/q2N2Pd.dart';
// import 'package:hummy/DDQuest/Petit-Dej/q5N2Pd.dart';
// import 'package:hummy/pages/Avatars.dart';
// import 'package:hummy/pages/PdNiv1Quest.dart';
// import 'package:hummy/pages/Questions.dart';
// import 'package:hummy/pages/espaceParent.dart';
// import 'package:hummy/pages/niveauBloc.dart';
// import 'package:hummy/pages/themes.dart';

// class QuestsN1 extends StatefulWidget {
//   const QuestsN1({ Key? key }) : super(key: key);

//   @override
//   State<QuestsN1> createState() => _QuestsN1State();
// }

// class _QuestsN1State extends State<QuestsN1> {
//    int? groupValue_5 = 0;
//    late List<Questions>Qsts;
//  List<Questions> Qsts2 =[];
// late Widget idk;
// late Widget n1,n2,n3,n4,n5,n6;
// late bool f1,f2,f3,f4,f5,f6;
// late bool r1,r2,r3,r4,r5,r6;
//   initGame() {
//     // Qsts.indexWhere((element) => element.num==1)== 5 ? nivBloc() :Qsts.elementAt(Qsts.indexWhere((element) => element.num==1)+1))
//  Qsts = [
//      // FerN2Din(),
//      Questions(name: Calcium(Next: VitDN2din(),), faite: true, repeat: false, num: 1) ,
//      // vitC(),
//       Questions(name: VitDN2din(Next: SourcesDin() ,), faite: true, repeat: false, num: 2)  ,
//      // SourcesPd(),
//       Questions(name: SourcesDin(Next: Calcium() ,), faite: true, repeat: false, num: 3)  
//    ];
//     print('cc');
//    // Qsts.shuffle();
//      print('cc');//Calcium(Next: Qsts.indexWhere((element) => element.num==1)== 2 ? nivBloc() :Qsts.elementAt(Qsts.indexWhere((element) => element==Calcium)+1)),
//     // Qsts2.add(Questions(name: Calcium(Next: Qsts.indexWhere((element) => element.num==1)== 2 ? nivBloc() :Qsts.elementAt(Qsts.indexWhere((element) => element==Calcium)+1)), faite: true, repeat: false, num: 1) ,);
//     // Qsts2.add(Questions(name: VitDN2din(Next: Qsts.indexWhere((element) => element.num==2)== 2 ? nivBloc() :Qsts.elementAt(Qsts.indexWhere((element) => element==VitDN2din)+1)), faite: true, repeat: false, num: 2) ,);
//     // Qsts2.add(Questions(name: SourcesDin(Next: Qsts.indexWhere((element) => element.num==3)== 2 ? nivBloc() :Qsts.elementAt(Qsts.indexWhere((element) => element== SourcesDin)+1)), faite: true, repeat: false, num: 3) ,);

//   // Qsts2 = List<Questions>.from(Qsts);
//   //  for (var item in Qsts) {
//   //    if(Qsts.indexOf(item)!=5)
//   //                       {print("the next one is "+  Qsts.elementAt((Qsts.indexOf(item)+1)).name.toString());
//   //                       //Widget idk=Qsts.elementAt((Qsts.indexOf(item)+1)).name;
//   //                       if( item.num == 1)
//   //                                { print("the next one is 11"+  Qsts.elementAt((Qsts.indexOf(item))).name.toString()) ;
//   //                                  FerN2Din(Next:   Qsts.elementAt((Qsts.indexOf(item)+1)).name);
//   //                                  print('Done');

//   //                                // ignore: unrelated_type_equality_checks
//   //                                }else if(item.num == 2)
//   //                                { print("the next one is 11"+  Qsts.elementAt((Qsts.indexOf(item))).name.toString()) ;
//   //                                  Calcium(Next:   Qsts.elementAt((Qsts.indexOf(item)+1)).name);
//   //                                 print('Done');
//   //                                }else
//   //                                // ignore: unrelated_type_equality_checks
//   //                                if( item.num == 3)
//   //                                {print("the next one is 11"+  Qsts.elementAt((Qsts.indexOf(item))).name.toString()) ;
//   //                                  vitC(Next:   Qsts.elementAt((Qsts.indexOf(item)+1)).name );
//   //                                 print('Done');
//   //                                }else
//   //                                // ignore: unrelated_type_equality_checks
//   //                                if( item.num == 4)
//   //                                {print("the next one is 11"+  Qsts.elementAt((Qsts.indexOf(item))).name.toString()) ;
//   //                                  VitDN2din(Next:   Qsts.elementAt((Qsts.indexOf(item)+1)).name);
                                   
//   //                                  print('Done');
//   //                                }else
//   //                                // ignore: unrelated_type_equality_checks
//   //                                if( item.num == 5)
//   //                                {print("the next one is 11"+  Qsts.elementAt((Qsts.indexOf(item))).name.toString()) ;
//   //                                  SourcesPd(Next:   Qsts.elementAt((Qsts.indexOf(item)+1)).name);
//   //                                  print('Done');
//   //                                }else
//   //                                // ignore: unrelated_type_equality_checks
//   //                                if( item.num == 6)
//   //                                {print("the next one is 11"+  Qsts.elementAt((Qsts.indexOf(item))).name.toString()) ;
//   //                                  SourcesDin(Next:   Qsts.elementAt((Qsts.indexOf(item)+1)).name);
//   //                                 print('Done');
//   //                                }
//   //                          //print( Qsts.elementAt(Qsts.indexOf(item))+1);
//   //                       }
//   //                       else{
//   //                        // print( Qsts.elementAt(Qsts.indexOf(item)).name);
//   //                        if( item.num==1)
//   //                                { print("the next one is"+  Qsts.elementAt((Qsts.indexOf(item)+1)).name.toString()) ;
//   //                                  FerN2Din(Next:   nivBloc(),faite:  item.faite,repeat:   item.repeat,);
//   //                                  print('Done');

//   //                                }else if(item.num==2)
//   //                                {
//   //                                  Calcium(Next:   nivBloc(),faite:  item.faite,repeat:   item.repeat,);
//   //                                 print('Done');
//   //                                }else
//   //                                if(item.num==3)
//   //                                {
//   //                                  vitC(Next:   nivBloc() , faite:  item.faite,repeat:   item.repeat,);
//   //                                 print('Done');
//   //                                }else
//   //                                if( item.num==4)
//   //                                {
//   //                                  VitDN2din(Next:   nivBloc(),faite:  item.faite,repeat:   item.repeat,);
//   //                                  print('Done');
//   //                                }else
//   //                                if( item.num==5)
//   //                                {
//   //                                  SourcesPd(Next:   nivBloc(),faite:  item.faite,repeat:   item.repeat,);
//   //                                  print('Done');
//   //                                }else
//   //                                if( item.num==6)
//   //                                {
//   //                                  SourcesDin(Next:   nivBloc(),faite:  item.faite,repeat:   item.repeat,);
//   //                                 print('Done');
//   //                                }
   

                        
//   //                       }} 
   
//     //Qsts.shuffle();
//     //Iterator<Questions> it = Qsts.iterator;
       
//       // Qsts2=Qsts.addAll(iterable);
    
    
//   }


//   @override
//   void initState() {
//     super.initState();
//     initGame();
//   }
//   @override
//   Widget build(BuildContext context) {
 
//  if(Qsts.isNotEmpty)
  
//    {for (var item in Qsts) {
//      print('cc');
    
//    return item.name;
  
//  } }
//  else{
//    print('cc');
//    return nivBloc();
//  }
//  return EspcPrent();
  
        
//   }
// }


// class Questions extends StatefulWidget {
// final  Widget name;
//  bool faite;
//  bool repeat;
//  final int num;
//  Widget? next;
//   Questions({
//     Key? key,
//     required this.name,
//     required this.faite,
//     required this.repeat,

//     required this.num,
//     this.next,
//   }) : super(key: key);

//   @override
//   State<Questions> createState() => _QuestionsState();
// }

// class _QuestionsState extends State<Questions> {
//    late Widget idk;
//    int? groupValue_5 = 0;
//   @override
  
//  Widget build(BuildContext context) {
//     return Container(

//                             child: 
//                               FRadio(
//                                 width: 100,
//                                 height: 90,
//                                normalColor:  const Color(
//                         0xff010158),
//                                 value: widget.num,
//                                 groupValue: groupValue_5,
//                                 onChanged: (value) {
//                                   print(value);
//                                 //  print("the next one is 22"+widget.next.toString()) ;
//                                   setState(() {
                                 
//                                     groupValue_5 = value as int?;
//                                     Navigator.push<Widget>(
//                                         context,
//                                         MaterialPageRoute(builder: (context) =>   widget.name, ));

//                                   });
//                                 },
//                                 child: Image.asset("assets/img/img_"+widget.num.toString()+".png", width: 75),
//                                 hoverChild: Image.asset("assets/img/img_"+widget.num.toString()+".png", width: 75),
//                                 selectedChild: Image.asset("assets/img/img_"+widget.num.toString()+".png", width: 75),
//                                 hasSpace: false,
//                                 toggleable: true,
//                                 selectedColor: const Color(0xffffc900),
//                                 border: 1.5,

//                               ),
                            
//     );
//   }
// }

