// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hummy/pages/themes.dart';

class nivBloc extends StatelessWidget {
  const nivBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/img_30.png"),
                fit: BoxFit.cover),
          ),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                        const SizedBox(height: 191.5),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   // const SizedBox(height: 500),
                    Title(color: Colors.blueAccent, child: const Text(
                      "  Niveau bloqué🔐 ",textAlign: TextAlign.center,style:  TextStyle(fontFamily: 'FredokaOne',fontSize: 38, color:  Color(
                        0xff010158),height: 2.3),)),
                  //  const SizedBox(height: 500),
                    Title(color: Colors.blueAccent, child: const Text(
                      "  Terminer les questions du     niveau precédent pour       débloqué ce niveau",textAlign: TextAlign.center,style:  TextStyle(fontFamily: 'FredokaOne',fontSize: 25.3, color:  Color(
                        0xff010158),height: 2.3),)),
                  ],
                ),
              ),
              Center(
                child:
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    const SizedBox(height: 150),
                    ElevatedButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Themes()),
                    );},
                      child: const Text('Revenir',style: TextStyle(color: Color(
                          0xff010158),fontSize: 40),textAlign: TextAlign.center),
                      style:
                      ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                          animationDuration: const Duration(milliseconds: 100),
                          fixedSize: const Size(240, 80),
                          primary:Colors.white54 ,
                          shadowColor: Colors.black12 ,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(75),

                          ),
                          elevation: 100
                      ),),
                  ],
                ),
              ),
              const SizedBox(height: 41.5),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  //  const SizedBox(height: 110),
                    Expanded(
                      child: Title(color: Colors.blueAccent, child: const Text(
                        "",textAlign: TextAlign.center,style:  TextStyle(fontFamily: 'FredokaOne',fontSize: 25, color:  Color(
                          0xff010158),),)),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
