// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class DIN3 extends StatefulWidget {
  const DIN3({Key? key}) : super(key: key);

  @override
  State<DIN3> createState() => _DIN3State();
}

class _DIN3State extends State<DIN3> {
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
      " Je suis un fruit sucré,\n je peux avoir plusieurs couleurs,\n je pousse sur un arbre \n Qui suis-je?",
      "J'ai des écailles,\nl'homme me chasse et me mange grillé ou cuit,\n Qui suis-je ",
      "Mon assiette du dîner\n contient < pain, fruit, légumes >, \n que lui faut-il pour être équilibrée",
      "// another question for later"
    ];
    List<String> din3q0options = [
      "cerise",
      "pdn1Im1", // orange
      "banane",
      "din3Im0", // rep apple
      "watermelon",
      "fraise",
    ]; //list of options for the first question
    // d1l2q0options
    //     .shuffle(Random()); //the list of images indices is now shuffled
    List<String> din3q1options = [
      "boiledeggs",
      "jerry",
      "eggplant",
      "din3Im1", // rep :fish on the plat
      "watermelon",
      "djn1Im1", // volaille
    ]; //list of options for the second question
    din3q1options
        .shuffle(Random()); //the list of images indices is now shuffled
    List<String> din3q2options = [
      "leg",
      "din1Im2", // carrote
      "kiwi",
      "jam",
      "cola",
      "din3Im2", // rep :poulet leg
    ]; //list of options for the third question
    List<String> din3q3options = [
      "leg",
      "din1Im2", // carrote
      "kiwi", // ENIGME FOR LATER
      "jam",
      "cola",
      "din3Im2", //poulet leg
    ]; //list of options for the third question

    List<List> domain1Level2Indices = [
      din3q0options, // options de la question 1
      din3q1options, // options de la question 2
      din3q2options, // options de la question 3
      din3q3options, // options de la question 4
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
                          "Je suis la pomme, un fruit qui peut se déguiser en trois couleurs : le vert,le jaune ou le rouge . Je t’apporte de l’énergie en quantité modérée et même je contribue à tes apports en vitamines: C , B et E qui sont concentrés dans ma peau.Et je suis le deuxième fruit le plus consommé sur la planète.",
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
                          "Nous sommes la grande famille des poissons, d’origine marine.Nous contribuons à tes apports en protéines  avec grande quantité. de même, nos graisses présentent une richesse en oméga 3 qui te protège des maladies cardio-vasculaires et règle le taux de cholestérol dans ton corps.",
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
                          "Pour avoir une assiette équilibrée en dîner, il faut qu’elle comprenne des aliments faciles à digérer par l'estomac et faibles en calories tels que : des légumes, une soupe, de la viande blanche, des fruits et une tisane pour faciliter la digestion.",
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
      if (k == 'din3Im$l') {
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
            Navigator.pushNamed(context, '/din3');
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
              '/din3');
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
