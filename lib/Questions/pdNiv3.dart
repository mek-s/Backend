// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Pdn2 extends StatefulWidget {
  const Pdn2({Key? key}) : super(key: key);

  @override
  State<Pdn2> createState() => _Pdn2State();
}

class _Pdn2State extends State<Pdn2> {
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
    List<String> domain1Level2Questions = [
      // we have 4 questions
      "   On me dévore en petit déjeuner,\n  je baigne dans le lait,\n on me mange avec une cuillère, \n Qui suis-je ", //niv3pd
      "     On me prend la matinée,\n          je suis du couleur blanche,   \n    je suis riche en calcium,\nQui suis-je ?",
      "        Je suis le fruit du travail des\n   abeilles, de couleur dorée,\n   et je suis antibactérien ,\nQui suis-je ?",
      "      Mon assiette du petit-déjeuner\n  contient un verre de lait et un \nfruit, que lui faut-il pour être \n    équilibrée ?",
    ];
    List<String> pdn2q0options = [
      "pdn2Im0", // cereal
      "cerise",
      "banane",
      "grapes",
      "djn1Im6", //frites
      "croissant",
    ]; //list of options for the first question
    // d1l2q0options
    //     .shuffle(Random()); //the list of images indices is now shuffled
    List<String> pdn2q1options = [
      "boiledegg",
      "ricebowl",
      "sugar",
      "toast",
      "pdn2Im1", // lait_milk
      "yogurt",
    ]; //list of options for the second question
    pdn2q1options
        .shuffle(Random()); //the list of images indices is now shuffled
    List<String> pdn2q2options = [
      "tea",
      "soupe",
      "pancakes",
      "pdn2Im2", // miel
      "cerise",
      "chocolate",
    ]; //list of options for the third question
    List<String> pdn2q3options = [
      "banane",
      "soupe",
      "orangejuice",
      "pdn2Im3", // rep : croissant
      "radish",
      "butter",
    ]; //list of options for the third question
    pdn2q3options.shuffle(Random());

    List<List> domain1Level2Indices = [
      pdn2q0options, // options de la question 1
      pdn2q1options, // options de la question 2      ///i.e les 4 images///
      pdn2q2options, // options de la question 3
      pdn2q3options, // options de la question 4
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
                    title: const Text(" Les céréales:"),
                    content: const Text(
                        "Nous faisons partie des féculents, produits du blé, Tu nous prend généralement en petit déjeuner avec du lait ( Euum trop bon) , Nous te donnons l'énergie suffisante pour t'amuser toute la journée.",
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
                        "Je suis un produit laitier, produit par les animaux laitiers tel que : les vaches, les brebis, et même les chèvres.. .Je suis riche en calcium et de la vitamine D , Je participe d'une manière assurée à ta croissance et au développement de ton organisme ",
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
                        "Je suis un aliment sucré fabriqué par les abeilles à partir du nectar des fleurs, J'ai la couleur dorée. Sache que je suis un bon aliment pour toi car je t'aide à faire le plein d'énergie le matin , je favorise la croissance et je fortifie ton squelette, et même un excellent médicament.",
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
                        "Pour que ton petit déjeuner soit équilibré, ton assiette doit comprendre : un fruit ( ou jus de fruit ) , un produit laitier comme source de protéine  et un féculent comme source de lipide.",
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
    }

    void checkanswer(String k) {
      if (k == 'Pdn2Im$l') {
        // i.e la reponse est juste
        colortoshow = right;
        //lock++;
        // setInt("lock", lock);
        score = score + 10;
        showfact(l);
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
            Navigator.pushNamed(context, '/pdn3');
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
              '/pdn3');
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
