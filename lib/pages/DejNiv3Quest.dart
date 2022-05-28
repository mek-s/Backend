
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:hummy/DDQuest/Dej/q1N3Dej.dart';
import 'package:hummy/DDQuest/Dej/q2N3Dej.dart';
import 'package:hummy/DDQuest/Dej/q3N2Dej.dart';
import 'package:hummy/DDQuest/Dej/q6N1Dej.dart';
import 'package:hummy/DDQuest/Dej/q6N2Dej.dart';
import 'package:hummy/DDQuest/Dej/q6N3Dej.dart';
import 'package:hummy/pages/dejeuner.dart';
import 'package:hummy/pages/questDej.dart';
import 'package:hummy/pages/questDin.dart';
import 'package:hummy/pages/themes.dart';
import 'package:flutter/cupertino.dart';
class DejNiv3Quest extends StatefulWidget {
  const DejNiv3Quest({Key? key}) : super(key: key);

  @override
  State<DejNiv3Quest> createState() => _DejNiv3QuestState();
}

class _DejNiv3QuestState extends State<DejNiv3Quest> {
  int? groupValue_5 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:

      AppBar(
        backgroundColor: Colors.transparent,
      leading: IconButton(
            icon: const Icon(CupertinoIcons.arrowshape_turn_up_left_fill ,color :   Color(
                        0xff010158),size: 50,),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dejeuner()));
            }),
        elevation: 0,),
      body:SingleChildScrollView(
        child: Column(  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(

              width: 720.0,
              height: 1000.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/img_35.png"),
                    fit: BoxFit.cover),
              ),
              child:

              SizedBox(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158),
                                value: 1,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const QuestsDEJ()));
     

                                  });
                                },
                                child: Image.asset("assets/img/img_22.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_22.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_22.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            ],
                          ),
                          const SizedBox(width: 56),
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158),
                                value: 2,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
 Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => RelieEnerg(Next: Dej1(Next: Dej2(Next: Dej3(Next: VitDN2din(Next: FrlegN2Dej(Next: const QuestsDin()),),))))));
     
                                  });
                                },
                                child: Image.asset("assets/img/img_23.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_23.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_23.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158),
                                value: 3,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
                                   Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  Dej1(Next: Dej2(Next: Dej3(Next: VitDN2din(Next: FrlegN2Dej(Next: const QuestsDin()),),)))));
     

                                  });
                                },
                                child: Image.asset("assets/img/img_24.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_24.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_24.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            ],
                          ),
                          const SizedBox(width: 56),
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158),
                                value: 4,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
                                     Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  Dej2(Next: Dej3(Next: VitDN2din(Next: FrlegN2Dej(Next: const QuestsDin()),),))));
     
                                  });
                                },
                                child: Image.asset("assets/img/img_25.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_25.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_25.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(

                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158), 
                                 value: 5,
                              
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Dej3(Next: VitDN2din(Next: FrlegN2Dej(Next: const QuestsDin()),),)));
     
                                  });
                                },
                                child: Image.asset("assets/img/img_26.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_26.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_26.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,



                              ),
                            ],
                          ),
                          const SizedBox(width: 56),
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(
                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158),
                                value: 6,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
                                   Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => VitDN2din(Next: FrlegN2Dej(Next: const QuestsDin()),),));
     
                                  });
                                },
                                child: Image.asset("assets/img/img_27.png", width: 75),
                                hoverChild: Image.asset("assets/img/img_27.png", width: 50),
                                selectedChild: Image.asset("assets/img/img_27.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [

                              const SizedBox(height: 100),
                              FRadio(

                                width: 100,
                                height: 90,
                               normalColor:  const Color(
                        0xff010158), 
                                 value: 7,
                              
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => FrlegN2Dej(Next: const QuestsDin()),),);
     
                                  });
                                },
                                child: Image.asset("assets/img/7.png", width: 75),
                                hoverChild: Image.asset("assets/img/7.png", width: 50),
                                selectedChild: Image.asset("assets/img/7.png", width: 50),
                                hasSpace: false,
                                toggleable: true,
                                selectedColor: const Color(0xffffc900),
                                border: 1.5,
                              )

                            ]
                              ),
                            ],
                          ),
                         
                    ),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
