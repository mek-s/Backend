
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_adjacent_string_concatenation, avoid_unnecessary_containers, file_names




import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';

import 'package:hummy/DDQuest/Petit-Dej/q1N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q2N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q3N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q3N3Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q5N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q6N1Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q6N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q6N3Pd.dart';
import 'package:hummy/pages/espaceParent.dart';
import 'package:hummy/pages/niveauBloc.dart';
import 'package:hummy/pages/questDej.dart';
import 'package:hummy/pages/themes.dart';

class QuestsPd extends StatefulWidget {
  const QuestsPd({ Key? key }) : super(key: key);

  @override
  State<QuestsPd> createState() => _QuestsPdState();
}

class _QuestsPdState extends State<QuestsPd> {
   int? groupValue_5 = 0;
   late List<Questions>Qsts;
 List<Questions> Qsts2 =[];

  initGame() {
  
 Qsts = [
     // FerN2Din(),
     //
     Questions(name: SourcesPd(Next: PetDej1(Next: PetDej2(Next: ChoixPetDej1(Next: PetDej3(Next: vitC(Next: Prodlait(Next: Calcium(Next: Themes()),),)),)) ,),), faite: true, repeat: false, num: 1) ,
    //  // vitC(),                                                                                                            // congrats theme done
    //   Questions(name: VitDN2din(Next: SourcesDin() ,), faite: true, repeat: false, num: 2)  ,
    //  // SourcesPd(),
    //   Questions(name: SourcesDin(Next: Calcium() ,), faite: true, repeat: false, num: 3)  
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
     //print('cc');
    
   return item.name;
  
 } }
 else{
   //print('cc');
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
                                  //print(value);
                                //  //print("the next one is 22"+widget.next.toString()) ;
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

