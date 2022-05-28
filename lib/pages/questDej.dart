

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names


import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';

import 'package:hummy/DDQuest/Dej/q1N2Dej.dart';
import 'package:hummy/DDQuest/Dej/q1N3Dej.dart';
import 'package:hummy/DDQuest/Dej/q2N3Dej.dart';
import 'package:hummy/DDQuest/Dej/q3N2Dej.dart';
import 'package:hummy/DDQuest/Dej/q6N1Dej.dart';
import 'package:hummy/DDQuest/Dej/q6N2Dej.dart';
import 'package:hummy/DDQuest/Dej/q6N3Dej.dart';
import 'package:hummy/pages/espaceParent.dart';
import 'package:hummy/pages/niveauBloc.dart';
import 'package:hummy/pages/questDin.dart';
import 'package:hummy/pages/themes.dart';

class QuestsDEJ extends StatefulWidget {
  const QuestsDEJ({ Key? key }) : super(key: key);

  @override
  State<QuestsDEJ> createState() => _QuestsDEJState();
}

class _QuestsDEJState extends State<QuestsDEJ> {
   int? groupValue_5 = 0;
 
   late List<Questions>Qsts;
 List<Questions> Qsts2 =[];
late Widget idk;
late Widget n1,n2,n3,n4,n5,n6;
late bool f1,f2,f3,f4,f5,f6;
late bool r1,r2,r3,r4,r5,r6;
  initGame() {
    // Qsts.indexWhere((element) => element.num==1)== 5 ? nivBloc() :Qsts.elementAt(Qsts.indexWhere((element) => element.num==1)+1))
 Qsts = [
     // FerN2Dej(),
     Questions(name: SourcesDej(Next:RelieEnerg(Next: Dej1(Next: Dej2(Next: Dej3(Next: VitDN2din(Next: FrlegN2Dej(Next: Themes()),),),) ,)),), faite: true, repeat: false, num: 1) ,
     ];
 
  }


  @override
  void initState() {
    super.initState();
    initGame();
  }
  @override
  Widget build(BuildContext context) {
 
 if(Qsts.isNotEmpty)
  
   {for (var item in Qsts) {
    // print('cc');
    
   return item.name;
  
 } }
 else{
  
   return nivBloc();
 }
 return EspcPrent();
  
        
  }
}


// ignore: must_be_immutable
class Questions extends StatefulWidget {
final  Widget name;
 bool faite;
 bool repeat;
 final int num;
 Widget? next;
  Questions({
    Key? key,
    required this.name,
    required this.faite,
    required this.repeat,

    required this.num,
    this.next,
  }) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
   late Widget idk;
   int? groupValue_5 = 0;
  @override
  
 Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(

                            child: 
                              FRadio(
                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158),
                                value: widget.num,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                               //   print(value);
                                //  print("the next one is 22"+widget.next.toString()) ;
                                  setState(() {
                                 
                                    groupValue_5 = value as int?;
                                    Navigator.push<Widget>(
                                        context,
                                        MaterialPageRoute(builder: (context) =>   widget.name, ));

                                  });
                                },
                                child: Image.asset("assets/img/img_"+widget.num.toString()+".png", width: 75),
                                hoverChild: Image.asset("assets/img/img_"+widget.num.toString()+".png", width: 75),
                                selectedChild: Image.asset("assets/img/img_"+widget.num.toString()+".png", width: 75),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            
    );
  }
}

