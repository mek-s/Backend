
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fradio_nullsafety/fradio_nullsafety.dart';
import 'package:hummy/DDQuest/Petit-Dej/q2N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q3N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q3N3Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q5N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q6N1Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q6N2Pd.dart';
import 'package:hummy/DDQuest/Petit-Dej/q6N3Pd.dart';
import 'package:hummy/pages/petitdejeuner.dart';
import 'package:hummy/pages/questDej.dart';
import 'package:hummy/pages/questPd.dart';
import 'package:hummy/pages/themes.dart';
import 'package:flutter/cupertino.dart';
class PdNiv3Quest extends StatefulWidget {
  const PdNiv3Quest({Key? key}) : super(key: key);

  @override
  State<PdNiv3Quest> createState() => _PdNiv3QuestState();
}

class _PdNiv3QuestState extends State<PdNiv3Quest> {
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
                  MaterialPageRoute(builder: (context) => const PetitDejeuner()));
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
                    image: AssetImage("assets/img/img_28.png"),
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
                                        MaterialPageRoute(builder: (context) =>  const QuestsPd()));

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
                                        MaterialPageRoute(builder: (context) => PetDej1(Next: PetDej2(Next: ChoixPetDej1(Next: PetDej3(Next: vitC(Next: Prodlait(Next: Calcium(Next: const QuestsDEJ()),),)),)))));

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
                                        MaterialPageRoute(builder: (context) => PetDej2(Next: ChoixPetDej1(Next: PetDej3(Next: vitC(Next: Prodlait(Next: Calcium(Next: const QuestsDEJ()),),)),))));


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
                                        MaterialPageRoute(builder: (context) =>  ChoixPetDej1(Next: PetDej3(Next: vitC(Next: Prodlait(Next: Calcium(Next: const QuestsDEJ()),),)),)));

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
                                        MaterialPageRoute(builder: (context) =>PetDej3(Next: vitC(Next: Prodlait(Next: Calcium(Next: const QuestsDEJ()),),)),));

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
                                        MaterialPageRoute(builder: (context) => vitC(Next: Prodlait(Next: Calcium(Next: const QuestsDEJ()),),)));
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
                                        MaterialPageRoute(builder: (context) =>Prodlait(Next: Calcium(Next: const QuestsDEJ()),),));

                                  });
                                },
                               child: Image.asset("assets/img/7.png", width: 75),
                                hoverChild: Image.asset("assets/img/7.png", width: 50),
                                selectedChild: Image.asset("assets/img/7.png", width: 50),
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
                                value: 8,
                                groupValue: groupValue_5,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue_5 = value as int?;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>Calcium(Next: const QuestsDEJ()),));

                                  });
                                },
                               child: Image.asset("assets/img/8.png", width: 75),
                                hoverChild: Image.asset("assets/img/8.png", width: 50),
                                selectedChild: Image.asset("assets/img/8.png", width: 50),
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
