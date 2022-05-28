// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class DIN1 extends StatefulWidget {
  const DIN1({Key? key}) : super(key: key);

  @override
  State<DIN1> createState() => _DIN1State();
}

class _DIN1State extends State<DIN1> {
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
      // 5 questions
      " 1 Le seul boisson permis\n pour chaque repas",
      " 2  Trouve les haricots, \n  parmi ces aliments",
      " 3 Trouve la carotte   \n     parmi ces aliments",
      " 4 Trouve la Salade \n     parmi ces plats ",
      ' 5 le temps adequat pour\nprendre mon diner',
      " 6 Quel est le boisson \n   à eviter le soir",
      " 7 Que ce que je fais après que j'ai pris mon dîner",
    ];
    List<String> din1q0options = [
      "din1Im0", //aka water
      "din2Im0", // coffee
      "orangejuice2",
      "applejuice",
      "tea",
      "cola",
    ]; //list of options for the sixth question

    List<String> din1q1options = [
      "din1Im1", // les haricots
      "sala",
      "fraise",
      "djn1Im3", // tomate
      "kiwi",
      "legume",
    ]; //list of options for the seventh question
    List<String> din1q2options = [
      "S0",
      "ricebowl",
      "din1Im2", // carrote
      "fastfood",
      "kebab",
      "leg",
    ]; //list of options for the seventh question
    List<String> din1q3options = [
      "S0",
      "ricebowl",
      "din1Im3",
      "fastfood",
      "kebab",
      "leg",
    ]; //list of options for the seventh question
    List<String> din1q4options = [
      "pdn1Im2", // sunrise
      "din1Im4", //night
      "sunset",
      "ocean",
      "cloudy",
      "djn1Im2", // sunny _dejeuner
    ]; //list of options for the seventh question
    List<String> din1q5options = [
      "applejuice",
      "orangejuice",
      "lait",
      "tea",
      "din2Im0",
      "din1Im5",
    ]; //list of options for the seventh question

    List<String> din1q6options = [
      "basketball",
      "playtime",
      "read",
      "laptop",
      "tv",
      "din1Im6",
    ]; //list of options for the seventh question

    List<List> domain1Level2Indices = [
      din1q0options,
      din1q1options,
      din1q2options,
      din1q3options,
      din1q4options,
      din1q5options,
      din1q6options,
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
                          "Le seul boisson permis pour chaque repas est l'eau, cette dernière est vraiment indispensable à l'ensemble des processus vitaux! . Boire de l'eau est assez essentiel pour toi , car elle représente 60% de ton poids.Donc il est important de boire au moins 1.3 l d'eau par jour.",
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
                          "Nous sommes les haricots verts , nous appartenons à la famille des légumes, nous sommes très importants pour toi, car nous sommes riches en fibres intéressantes pour le développement de ton organisme, et même nous contiendront des différentes vitamines et même de nombreux sels minéraux et oligo-éléments pour toi .",
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
                          "Je suis la carotte, de la couleur orange ,j'appartiens à la famille des légumes , je t’apporte peu d’énergie mais je suis riche en fibres qui participent à la bonne digestion , c’est pour ça que je suis un bon aliment pour le dîner et même je suis riche en carotène qui se transforme en vitamine A dans ton corps. ",
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
                          "Je suis un plat constitué de légumes , une mine de vitamines et minéraux,notamment de la vitamine B9.Je suis riche en fibres qui aident à la bonne digestion, et il est fortement recommandé et parfaitement sain de me prendre le soir pour mes bienfaits sur ton corps .",
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
                          "Tu dois prendre ton dîner le soir , entre 19h et 20h et celà pour laisser le temps à ton corps de digérer convenablement . Et sache bien qu'il ne faut pas sauter le dîner et dormir directement vu son nécessité. ",
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
                          "Le soir , tu dois éviter de boire du café ou du thé car ce sont des excitants qui contiennent de la caféine ou de la théine qui freinent ton endormissement. Donc pour bien dormir, il faut éviter de les consommer après 17h. et attention aux sodas aussi .",
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
      if (n == 6) {
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Suivre une routine aide à apprendre les bonnes habitudes seul , donc après que t'as pris ton diner en famille, tu dois se brosser les dents et te laver les mains d'abord , mais tu ne dois pas aller se coucher le ventre plein donc il vaut mieux faire quelques activités calmes et relaxantes puis l'heure de coucher Arrive ",
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
      if (k == 'din1Im$l') {
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
          if (l < 5) {
            // parcourir la liste of 3 questions
            //setString("trace", "Domain1Level2Question$l");
            l++;
            //setInt('traceD1L2', l + 1);
          } else {
            // i.e il a termine les question goes to next level
            Navigator.pushNamed(context, '/Din1');
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
              '/Din1');
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
                              //_onChange(domain1Level2Questions[l]),
                              //speak()
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
