// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Djn3 extends StatefulWidget {
  const Djn3({Key? key}) : super(key: key);

  @override
  State<Djn3> createState() => _Djn3State();
}

class _Djn3State extends State<Djn3> {
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
    List<String> domain1Level2Questions = [
      // we have 4 questions
      "Je suis un plat,\nJ'ai une texture liquide,\n   généralement servis en premier\nQui-suis-je ?",
      "Je suis un légume sec,\n riche en fer et protéine,\n je donne de la force et de l'énergie,\n Qui suis-je ?",
      "Je suis un argume à l'écorce, \njaune et riche en vitamine C,\n j'accompagne le poisson, \n Qui suis-je?",
      "Mon assiette du déjeuner\n contient du riz et un plat de Légumes,\n que lui faut-il pour être équilibrée ?",
    ];
    List<String> djn3q0options = [
      "djn3Im0", // REP: soupe
      "pdn3Im1", // lait
      "cheesy",
      "chickenbreast",
      "din1Im3",
      "ricebowl",
    ]; //list of options for the first question
    // d1l2q0options
    //     .shuffle(Random()); //the list of images indices is now shuffled
    List<String> djn3q1options = [
      "sala",
      "pdn1Im1", // orange
      "djn1Im0", // brocoli
      "jelbana",
      "watermelon",
      "djn3Im1", // rep : l3dass
    ]; //list of options for the second question
    djn3q1options
        .shuffle(Random()); //the list of images indices is now shuffled
    List<String> djn3q2options = [
      "pdn1Im0", // fromage
      "kiwi",
      "potato",
      "banane",
      "pdn1Im1", // orange
      "djn3Im2", // rep: lemon
    ]; //list of options for the third question

    List<String> djn3q3options = [
      "sala",
      "baguette",
      "potato",
      "djn3Im3", // fruits
      "cho",
      "candies",
    ]; //list of options for the third question
    List<List> domain1Level2Indices = [
      djn3q0options, // options de la question 1
      djn3q1options, // options de la question 2      ///i.e les 4 images///
      djn3q2options, // options de la question 3
      djn3q3options, // options de la question 4
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
    showfact(int n) {
      if (n == 0) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Je suis l'entrée ou la soupe , une source de vitamines et minéraux. Je viens en plusieurs types : soupe des légumes, des poissons ,de carotte, du choux….Je favorise la digestion car je suis légère et pauvre en calories et je contribue à l’hydratation de ton organisme, c’est pour ça qu’il est parfaitement sain de me prendre en dîner .",
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
      if (n == 1) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Je suis l'entrée ou la soupe , une source de vitamines et minéraux. Je viens en plusieurs types : soupe des légumes, des poissons ,de carotte, du choux….Je favorise la digestion car je suis légère et pauvre en calories et je contribue à l’hydratation de ton organisme, c’est pour ça qu’il est parfaitement sain de me prendre en dîner .",
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
      if (n == 2) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Je suis un des agrumes,un peu acide, de la couleur jaune et parfois vert, j'appartiens à la famille des fruits, Je t'apporte de la vitamine C qui te protège des maladies et du froid surtout en hiver.Mais me consommer quotidiennement peut provoquer plusieurs problèmes de santé .",
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
      if (n == 3) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Pour avoir une assiette équilibrée en déjeuner , il faut qu'elle comprenne : Légumes (50%) Un féculent qui peut être le pain , la pomme de terre, le riz …(20%)Protéines : animales ou végétales (30%) Lait et substituts, fruits ..",
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
      if (k == 'djn3Im$l') {
        // i.e la reponse est juste
        colortoshow = right;
        //lock++;
        // setInt("lock", lock);
        score = score + 10;
        // setInt("score", marks);
        setState(() {
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
            Navigator.pushNamed(context, '/Djn3');
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
              '/Djn3');
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
                      image: AssetImage("lib/img/Quisuis.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  //  SizedBox(height: 0.07440476 * screenHeight),
                  Container(
                    padding: const EdgeInsets.only(top: 116),
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
                              //_onChange(domain1Level2Questions[l]),
                              //_speak()
                            },
                            onDoubleTap: () => {}, //_stop()},
                          ),
                        ),
                        Text(
                          domain1Level2Questions[l],
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
                  SizedBox(height: 0.169999999 * screenHeight),
                  Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 0.01499095 * screenHeight),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    width: 0.22 * screenWidth,
                                    height: 0.12 * screenHeight,
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
                                    width: 0.22 * screenWidth,
                                    height: 0.12 * screenHeight,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () =>
                                      checkanswer(domain1Level2Indices[l][2]),
                                  child: Expanded(
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][2] +
                                          '.png',
                                      width: 0.22 * screenWidth,
                                      height: 0.12 * screenHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () =>
                                      checkanswer(domain1Level2Indices[l][3]),
                                  child: Image.asset(
                                    'lib/img/' +
                                        domain1Level2Indices[l][3] +
                                        '.png',
                                    width: 0.22 * screenWidth,
                                    height: 0.12 * screenHeight,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () =>
                                      checkanswer(domain1Level2Indices[l][4]),
                                  child: Image.asset(
                                    'lib/img/' +
                                        domain1Level2Indices[l][4] +
                                        '.png',
                                    width: 0.22 * screenWidth,
                                    height: 0.12 * screenHeight,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () =>
                                      checkanswer(domain1Level2Indices[l][5]),
                                  child: Expanded(
                                    child: Image.asset(
                                      'lib/img/' +
                                          domain1Level2Indices[l][5] +
                                          '.png',
                                      width: 0.22 * screenWidth,
                                      height: 0.12 * screenHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ]),
                ],
              )),
        ),
      ),
    );
  }
}
