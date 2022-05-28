import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:hummy/Questions/djNiv1.dart';
import 'package:hummy/Questions/djNiv3.dart';
import 'package:hummy/pages/questDej.dart';
// import 'package:hummy/pages/Questions/djNiv1.dart';
// import 'package:hummy/pages/Questions/djNiv3.dart';
// import 'package:hummy/pages/Questionsearch/DejNiv1Quest.dart';
// import 'package:hummy/pages/Questionsearch/DejNiv2Quest.dart';
// import 'package:hummy/pages/Questionsearch/DejNiv3Quest.dart';

class Dejeuner extends StatefulWidget {
  const Dejeuner({Key? key}) : super(key: key);

  @override
  State<Dejeuner> createState() => _DejeunerState();
}

class _DejeunerState extends State<Dejeuner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage("lib/img/Niveauxdejeuner.png"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 175,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1,
                            offset: Offset(0, 5)),
                        BoxShadow(offset: Offset(1, -5)),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 55.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                          onPrimary: const Color.fromARGB(255, 219, 82, 82),
                        ),
                        child: const Text(
                          "Niveau 01",
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'FredokaOne',
                            color: Color.fromARGB(255, 17, 17, 78),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Djn1()));
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1,
                            offset: Offset(0, 5)),
                        BoxShadow(offset: Offset(1, -5)),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 55.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                          onPrimary: const Color.fromARGB(255, 219, 82, 82),
                        ),
                        child: const Text(
                          "Niveau 02",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'FredokaOne',
                            color: Color.fromARGB(255, 17, 17, 78),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Djn3()));
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1,
                            offset: Offset(0, 5)),
                        BoxShadow(offset: Offset(1, -5)),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 55.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                          onPrimary: const Color.fromARGB(255, 219, 82, 82),
                        ),
                        child: const Text(
                          "Niveau 03",
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'FredokaOne',
                            color: Color.fromARGB(255, 17, 17, 78),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestsDEJ()));
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
