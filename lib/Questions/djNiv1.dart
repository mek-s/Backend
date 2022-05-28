// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Djn1 extends StatefulWidget {
  const Djn1({Key? key}) : super(key: key);

  @override
  State<Djn1> createState() => _Djn1State();
}

class _Djn1State extends State<Djn1> {
  bool yes = false;
  Color colortoshow = Colors.white;
  Color right = Colors.green;
  Color wrong = Colors.red;
  static int l = 0;
  //late int marks;
  int tentative = 3;
  int score = 0;
  //late String trace;
  late int lock;
  @override
  Widget build(BuildContext context) {
    List<String> djNiv1 = [
      // we have 4 questions
      "0Trouve le Brocoli\n   parmi ces aliments",
      "1Trouve la volaille\n  parmi ces aliments",
      "2Trouve la tomate, \n   parmi ces aliments",
      "3le temps adequat pour\n  prendre mon dejeuner",
      "4combien de proteines\n doit-tu consomer par jour",
      "5 Quel est l'aliment\n que je dois éviter au déjeuner ",
    ];

    List<String> djn1q0options = [
      "djn1Im0", // brocoli
      "radish",
      "onion",
      "apple",
      "kiwi",
      "potato",
    ]; //list of options for the fourth question
    List<String> djn1q1options = [
      "djn1Im1", // la volaille
      "boiledegg",
      "deadfish",
      "bifteck",
      "cheeseburger",
      "pdn1Im0", // fromage
    ]; //list of options for the fifth question

    List<String> djn1q2options = [
      "djn1Im2", //tomato
      "din1Im2", //carrota
      "avocado",
      "salade",
      "potato",
      "jelbana",
    ]; //list of options for the seventh question
    List<String> djn1q3options = [
      "pdn1Im2", // sunrise
      "din1Im4", //night
      "sunset",
      "ocean",
      "djn1Im3", // sunny _dejeuner
      "cloudy",
    ]; //list of options for the seventh question
    List<String> djn1q4options = [
      "1",
      "djn1Im4", // 2
      "3",
      "4",
      "Image11", // number5
      "6",
    ]; //list of options for the seventh question

    List<String> djn1q5options = [
      "fish", // fish in the plate
      "fruits",
      "din1Im0", // water
      "pdn1Im1", //formage
      "salade",
      "djn1Im5", // frites
    ]; //list of options for the seventh question

    List<List> domain1Level2Indices = [
      djn1q0options,
      djn1q1options,
      djn1q2options,
      djn1q3options,
      djn1q4options,
      djn1q5options,
    ];
    Map<String, Color> btncolor = {
      "a": colortoshow,
    };

    // setInt(String key, int value) async {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.setInt(key, value);
    // }

    // setString(String key, String value) async {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.setString(key, value);
    // }
    void showfact(int n) {
      if (n == 0) {
        showDialog(
            context: context,
            builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(32.2))),
                    title: const Text(" Le brocoli :"),
                    content: const Text(
                        "Je suis un légume à la jolie couleur verte , j'appartient à la famille des crucifères, qui regroupe des plantes dont la fleur est composée de 4 pétales séparés en forme de croix et qui est créée à partir du chou sauvage. Je t'apporte de la vitamine C et de la vitamine B9 qui participent à te protéger des maladies et même je participe à tes apports en fibres qui participent à la bonne digestion",
                        style: TextStyle(
                            color: Color(0xff010158), fontSize: 18),
                        textAlign: TextAlign.center),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              yes = true;
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('Continuer',
                                style: TextStyle(
                                    color: Color(0xff010158), fontSize: 18),
                                textAlign: TextAlign.center),
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 20),
                                //animationDuration:
                                // const Duration(milliseconds: 100),
                                fixedSize: const Size(120, 60),
                                primary: const Color.fromARGB(255, 219, 212, 212),
                                shadowColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),
                                ),
                                elevation: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
      }

      if (n == 1) {
        showDialog(
            context: context,
            builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(32.2))),
                    title: const Text(" Le lait :"),
                    content: const Text(
                        "Je suis un oiseau domestique,on m'abat puis m'utilise pour des recettes en plusieurs façons. Je suis naturellement riche en protéines animales de bonne qualité. Et un bon pourvoyeur de vitamines et minéraux nécessaire au bon fonctionnement de ton organisme.",
                        style: TextStyle(
                            color: Color(0xff010158), fontSize: 18),
                        textAlign: TextAlign.center),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              yes = true;
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('Continuer',
                                style: TextStyle(
                                    color: Color(0xff010158), fontSize: 18),
                                textAlign: TextAlign.center),
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 20),
                                //animationDuration:
                                // const Duration(milliseconds: 100),
                                fixedSize: const Size(120, 60),
                                primary: const Color.fromARGB(255, 219, 212, 212),
                                shadowColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),
                                ),
                                elevation: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
      }
      if (n == 2) {
        showDialog(
            context: context,
            builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(32.2))),
                    title: const Text(" Le lait :"),
                    content: const Text(
                        "Je suis un fruit appelé aussi `Pomme d'amour` ou `Pomme d'or`. Je suis composée à 95% d'eau . Malgré que je t'apporte peu d'énergie, mais je participe à tes apports en vitamine C, vitamine A et en vitamine B aussi.Je suis utilisée pour réaliser tes délicieux coulis qu'ils te pourra servir pour tes pizzas ou avec la salade aussi .",
                        style: TextStyle(
                            color: Color(0xff010158), fontSize: 18),
                        textAlign: TextAlign.center),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pop(false);
                                yes = true;
                              });
                            },
                            child: const Text('Continuer',
                                style: TextStyle(
                                    color: Color(0xff010158), fontSize: 18),
                                textAlign: TextAlign.center),
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 20),
                                //animationDuration:
                                // const Duration(milliseconds: 100),
                                fixedSize: const Size(120, 60),
                                primary:
                                    const Color.fromARGB(255, 219, 212, 212),
                                shadowColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),
                                ),
                                elevation: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
      }
      if (n == 3) {
        showDialog(
            context: context,
            builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(32.2))),
                    title: const Text(" Pour un plat équilibré:"),
                    content: const Text(
                        "Tu dois prendre ton déjeuner au moins 5 ou 6 heures après le petit déjeuner, et généralement il a lieu entre 12h et 14h",
                        style: TextStyle(
                            color: Color(0xff010158), fontSize: 18),
                        textAlign: TextAlign.center),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              yes = true;
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('Continuer',
                                style: TextStyle(
                                    color: Color(0xff010158), fontSize: 18),
                                textAlign: TextAlign.center),
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 20),
                                //animationDuration:
                                // const Duration(milliseconds: 100),
                                fixedSize: const Size(120, 60),
                                primary: const Color.fromARGB(255, 219, 212, 212),
                                shadowColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),
                                ),
                                elevation: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
      }
      if (n == 4) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Pour être en pleine énergie et en bonne santé, il est recommandé de manger des aliments qui contiennent de la protéine comme (la viande, le poisson, les œufs) de 1-2 fois par jour, car les protéines sont essentielles pour ton corps , mais elles doivent cependant être limitées pour toi comme un petit-enfant .",
                          style: TextStyle(
                              color: Color(0xff010158), fontSize: 18),
                          textAlign: TextAlign.center),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Continuer',
                                  style: TextStyle(
                                      color: Color(0xff010158), fontSize: 18),
                                  textAlign: TextAlign.center),
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 42, vertical: 20),
                                  //animationDuration:
                                  // const Duration(milliseconds: 100),
                                  fixedSize: const Size(120, 60),
                                  primary: const Color.fromARGB(255, 219, 212, 212),
                                  shadowColor: Colors.black87,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                  elevation: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
        }
      }
      if (n == 5) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Au déjeuner, et vu son importance sur ton corps , tu dois apprendre à former ton assiette équilibrée en évitant ce qui pose problème à ta santé et surtout les fritures car ils contiennent trop de gras , le fast-food, et les boissons gazeuses",
                          style: TextStyle(
                              color: Color(0xff010158), fontSize: 18),
                          textAlign: TextAlign.center),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Continuer',
                                  style: TextStyle(
                                      color: Color(0xff010158), fontSize: 18),
                                  textAlign: TextAlign.center),
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 42, vertical: 20),
                                  //animationDuration:
                                  // const Duration(milliseconds: 100),
                                  fixedSize: const Size(120, 60),
                                  primary: const Color.fromARGB(255, 219, 212, 212),
                                  shadowColor: Colors.black87,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),
                                  ),
                                  elevation: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
        }
      }
    }

    void checkanswer(String k) {
      if (k == 'djn1Im$l') {
        // i.e la reponse est juste
        colortoshow = right;
        //lock++;
        // setInt("lock", lock);
        score = score + 10;
        // setInt("score", marks);
        setState(() {
          showfact(l);
          btncolor['lib/img/' + k + '.png'] = colortoshow;
        });
        setState(() {
          if (l < 4) {
            // parcourir la liste of 3 questions
            //setString("trace", "Domain1Level2Question$l");
            l++;
            //setInt('traceD1L2', l + 1);
          } else {
            // i.e il a termine les question goes to next level
            Navigator.pushNamed(context, '/Djn1');
            // trés util pour la fin du niveau//
          }
        });
      } else {
        // i.e la reponse est fausse//
        colortoshow = wrong;
        tentative--;
        //setInt("tentative", tentative);
        if (tentative == 0) {
          Navigator.pushNamed(
              //Navigator.pushNamed
              context,
              '/Djn1');
        }
        setState(() {
          btncolor['lib/img/' + k + '.png'] = colortoshow;
        });
      }
    }

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFF010158),
                size: 35,
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/img/Trouver2.png"),
                      fit: BoxFit.fill)),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //SizedBox(height: 0.07440476 * screenHeight),
                  Container(
                    padding: const EdgeInsets.only(left: 70, top: 99),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: GestureDetector(
                            child: Icon(
                              Icons.volume_up_rounded,
                              size: 0.035952381 * screenHeight,
                            ),
                            onTap: () => {
                              // changedLanguage(),
                              //_onChange(djNiv1[l]),
                              //speak()
                            },
                            onDoubleTap: () => {}, //_stop()},
                          ),
                        ),
                        Text(
                          djNiv1[l],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'FredokaOne',
                            fontSize: 0.052 * screenWidth,
                            color: const Color(0xFF010158),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () =>
                                        checkanswer(domain1Level2Indices[l][0]),
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][0] +
                                          '.png',
                                      width: 0.44444 * screenWidth,
                                      height: 0.1238095 * screenHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () =>
                                        checkanswer(domain1Level2Indices[l][1]),
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][1] +
                                          '.png',
                                      width: 0.44444 * screenWidth,
                                      height: 0.1238095 * screenHeight,
                                    ),
                                  ),
                                ),
                              ]),
                          //  top: 0.777777381 * screenHeight,

                          // SizedBox(height: 0.04488095 * screenHeight),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () =>
                                        checkanswer(domain1Level2Indices[l][2]),
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][2] +
                                          '.png',
                                      width: 0.44444 * screenWidth,
                                      height: 0.1238095 * screenHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () =>
                                        checkanswer(domain1Level2Indices[l][3]),
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][3] +
                                          '.png',
                                      width: 0.44444 * screenWidth,
                                      height: 0.1238095 * screenHeight,
                                    ),
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () =>
                                        checkanswer(domain1Level2Indices[l][4]),
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][4] +
                                          '.png',
                                      width: 0.44444 * screenWidth,
                                      height: 0.1238095 * screenHeight,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () =>
                                        checkanswer(domain1Level2Indices[l][5]),
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][5] +
                                          '.png',
                                      width: 0.44444 * screenWidth,
                                      height: 0.1238095 * screenHeight,
                                    ),
                                  ),
                                ),
                              ]),
                        ]),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
