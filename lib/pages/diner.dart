import 'package:flutter/material.dart';
import 'package:hummy/Questions/diNiv1.dart';
import 'package:hummy/Questions/diNiv3.dart';
import 'package:hummy/pages/questDin.dart';
// import 'package:hummy/pages/Questions/diNiv1.dart';
// import 'package:hummy/pages/Questions/diNiv3.dart';
// import 'package:hummy/pages/Questions/pdNiv1.dart';
// import 'package:hummy/pages/Questions/pdNiv3.dart';
// import 'package:hummy/pages/Questionsearch/DejNiv3Quest.dart';
// import 'package:hummy/pages/Questionsearch/DinNiv2Quest.dart';

class Diner extends StatefulWidget {
  const Diner({Key? key}) : super(key: key);

  @override
  State<Diner> createState() => _DinerState();
}

class _DinerState extends State<Diner> {
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
          onPressed: () => Navigator.of(context).pop(),//return to themes
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/img/Niveauxdiner.png"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1,
                            offset: Offset(0, 5)),
                        const BoxShadow(offset: Offset(1, -5)),
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
                                  builder: (context) => const DIN1()));
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1,
                            offset: Offset(0, 5)),
                        const BoxShadow(offset: Offset(1, -5)),
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
                                  builder: (context) => const DIN3()));
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 4.0,
                            spreadRadius: 1,
                            offset: Offset(0, 5)),
                        const BoxShadow(offset: Offset(1, -5)),
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
                                  builder: (context) => const QuestsDin()));
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
