

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, avoid_unnecessary_containers, file_names


import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';

import 'package:hummy/DDQuest/Diner/q2N2Din.dart';
import 'package:hummy/DDQuest/Diner/q3N2Din.dart';
import 'package:hummy/DDQuest/Diner/q4N2Din.dart';
import 'package:hummy/DDQuest/Diner/q5N3Din.dart';
import 'package:hummy/DDQuest/Diner/q6N1Din.dart';
import 'package:hummy/DDQuest/Diner/q6N2Din.dart';
import 'package:hummy/DDQuest/Diner/q6N3Din.dart';
import 'package:hummy/pages/espaceParent.dart';
import 'package:hummy/pages/niveauBloc.dart';
import 'package:hummy/pages/themes.dart';

class QuestsDin extends StatefulWidget {
  const QuestsDin({ Key? key }) : super(key: key);

  @override
  State<QuestsDin> createState() => _QuestsDinState();
}

class _QuestsDinState extends State<QuestsDin> {
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
     
     Questions(name:  SourcesDin(Next: Din1(Next: Din2(Next: Din3(Next: MEG(Next: FerN2Din(Next: proteinN3Din(Next: Themes()),),),) ,)),), faite: true, repeat: false, num: 1) ,
     // vitC(),
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
   
    
   return item.name;
  
 } }
 else{
  
   return nivBloc();
 }
 return EspcPrent();
  
        
  }
}


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

