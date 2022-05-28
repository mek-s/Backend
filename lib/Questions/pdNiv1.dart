// ignore_for_file: avoid_unnecessary_containers


import 'dart:math';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Pdn1 extends StatefulWidget {
  const Pdn1({Key? key}) : super(key: key);

  @override
  State<Pdn1> createState() => _Pdn1State();
}

class _Pdn1State extends State<Pdn1> {
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
      // we have 3 questions
      " 1 Trouve le fromage, \n   parmi ces aliments",
      " 2 Trouve l'orange, \n    parmi ces fruits ",
      ' 3 Le temps adequat pour\n prendre le petit-déjeuner ',
      " 4 Quelle est la bonne\nhabitude lors du manger",
    ];
    List<String> pdn1q0options = [
      "eggs",
      "baguette",
      "pdn1Im0",
      "djn2Im1",
      "donut",
      "cupcake",
    ]; //list of options for the first question
    pdn1q0options
        .shuffle(Random()); //the list of images indices is now shuffled
    List<String> pdn1q1options = [
      "fraise",
      "pdn1Im1", // orange
      "banane",
      "apple", // apple
      "watermelon",
      "cerise",
    ]; //list of options for the second question
    pdn1q1options
        .shuffle(Random()); //the list of images indices is now shuffled
    List<String> pdn1q2options = [
      "pdn1Im2",
      "din1Im4",
      "sunset",
      "ocean",
      "cloudy",
      "djn1Im2",
    ]; //list of options for the third question
    List<String> pdn1q3options = [
      "tv",
      "read",
      "playtime",
      "laptop",
      "pdn1Im3",
      "basketball",
    ]; //list of options for the seventh question
    pdn1q3options.shuffle(Random());

    List<List> domain1Level2Indices = [
      pdn1q0options, // options de la question 1
      pdn1q1options, // options de la question 2
      pdn1q2options, // options de la question 3
      pdn1q3options, // options de la question 4
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
      if (n == 1) {
        showDialog(
            context: context,
            builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(32.2))),
                    title: const Text("Le saviez Vous :"),
                    content: const Text(
                        "Toute ronde, je t'apporte un air de soleil entière ou en jus, je suis  un agrume délicieux, un peu acide qui est riche en vitamine C, composée de l'eau, je suis équivalente à 100 ml d'eau et même j'apporte à ton corps d'autres vitamines qui l'aide à lutter contre le froid et la fatigue surtout en hiver.",
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

      if (n == 0) {
        showDialog(
            context: context,
            builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(32.2))),
                    title: const Text("Le saviez Vous :"),
                    content: const Text(
                        "Je suis un des produits laitiers le plus varié , obtenu à partir de lait coagulé. Je t'apporte de nombreuses protéines et une grande quantité de calcium qui laisse tes os et dents plus solides, et même je contribue à la croissance et au développement de ton corps",
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
                    content: const Text(
                        "Tu dois prendre le petit déjeuner entre 6h et 8h du matin , après que t'as fait un jeûne de 8h-9h toute la nuit et que ton corps a besoin d'énergie suffisante pour commencer la journée.",
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
        {
          showDialog(
              context: context,
              builder: (BuildContext context) => Container(
                    child: AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.2))),
                      content: const Text(
                          "Quand tu te mets à table , tu te tiens droit et tu évites toutes activités qui t'empêchent de manger, tu laisse ta tablette , ton laptop, tes jouets à la chambre et tu concentres avec ton plat et surtout ne pas le mettre à la fois dans la bouche .",
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
      }
    }

    void checkanswer(String k) {
      if (k == 'pdn1Im$l') {
        // i.e la reponse est juste
        colortoshow = right;
        showfact(l);
        //lock++;
        // setInt("lock", lock);
        score = score + 10;
        // setInt("score", marks);
        setState(() {
          btncolor['lib/img/' + k + '.png'] = colortoshow;
        });
        setState(() {
          if ((l < 3)) {
            //setString("trace", "Domain1Level2Question$l");
            l++;
            // yes = false;
            //setInt('traceD1L2', l + 1);
          } else {
            // i.e il a termine les question goes to next level
            Navigator.pushNamed(context, '/pdn1');
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
              '/pdn1');
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
