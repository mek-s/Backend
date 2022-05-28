// ignore_for_file: pre_const_constructors, pre_adjacent_string_concatenation, unused_element, file_names, unused_local_variable
// ignore_for_file:  non_constant_identifier_names, must_be_immutable,


 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/PdNiv3Quest.dart';

//to redo
class ChoixPetDej1 extends StatefulWidget {
  late Widget? Next;
   late bool? repeat;
   late bool? faite;
   ChoixPetDej1({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  State<ChoixPetDej1> createState() => _ChoixPetDej1State();
}

class _ChoixPetDej1State extends State<ChoixPetDej1> {
 bool insideTarget=false;
 late Box ii;
 late List<Box> items;
  late List<Box> items2;
  String activeEmoji='🍽';
    
 late bool remove;
   int score=0;
  late bool gameOver;
    int tentative=3;
   late String _tent;
  initGame() {
   _tent='❤❤❤';
   
    gameOver = false;
    score = 0;int tentative=3;
  items = [
     
       Box('assets/img/DDimg/banane.png', Colors.transparent,true),
       Box('assets/img/DDimg/cho.png', Colors.transparent,false),
        Box('assets/img/DDimg/tartiner.png', Colors.transparent,true),
         Box('assets/img/DDimg/lolipopp.png', Colors.transparent,false),
          Box('assets/img/DDimg/hamburger.png', Colors.transparent,false),
         Box('assets/img/DDimg/jam.png', Colors.transparent,true),//todo
      Box('assets/img/DDimg/Fasties.png', Colors.transparent,false),
       Box('assets/img/DDimg/cereal.png', Colors.transparent,true),
        Box('assets/img/DDimg/croissant2.png', Colors.transparent,true),
       

    ];
    items2 = List<Box>.from(items);

    items.shuffle();
    items2.shuffle();
  }

 

  
   
    

  @override
  void initState() {
    super.initState();
    initGame();
  }
 

 
  
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading : IconButton(
            icon: const Icon(CupertinoIcons.arrowshape_turn_up_left_fill ,color :   Color(
                        0xff010158),size: 50,),
            onPressed: () {
              Navigator.push(
                 context,
                 MaterialPageRoute(builder: (
                     context) => const PdNiv3Quest()));
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,

        title:  Text(_tent,style:  const TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
       
              ),
        
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/dejQ.png"),//to be back later
              fit: BoxFit.cover),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 82.5), 
                   ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.volume_up_rounded,color : Color(
                        0xff010158) ,size: 40,) , label: const Text("Choisi les bons et les mauvaises aliments pour le petit-déjeuner",style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
                         style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 0.000000000000005),
                            animationDuration: const Duration(milliseconds: 100),
                                fixedSize: const Size(360, 75),
                            primary:const Color(0xFFFFC38B),
                              //    shadowColor: const Color(0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ),),
                  const SizedBox(height: 38.5), 
             
              Row(
                children: [
                  DragTarget<Box>(builder: (context, candidateData, rejectedData)
                  {
                    return Container(
                               decoration: BoxDecoration(
                         // width : 200.0,
                        // height :170.0,
 color : const Color(0xFFFFC38B),
 borderRadius: BorderRadius.circular(45)
                       ),
                        width : 200.0,
                        height :170.0,
                        // color : const Color(0xFFFFC38B),
                        child :
                               const Image(image : AssetImage('assets/img/DDimg/right.png'),),
   
                   
                   
     //Box('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : Box(activeEmoji, Colors.cyanAccent)*/
                    );
                  },
                  //onwill ccpt to accept the necessary things
                  onAccept: ( emoji)
                  {  
         
          
                      if((emoji.Fruit==true))
                        {     
                          setState(() { 
                             items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                             items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
                            // player.play('assets/sounds/true.wav');        
                      score+=10;
                      
                       showDialog(context: context, builder: (context)=>const AlertDialog(
             shape: CircleBorder(),
             backgroundColor: Colors.transparent,
            title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
             content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
           )
           );
                      });
                     
          }
          else if(emoji.Fruit==false) {
           setState(() {
            tentative-=1;
             if(tentative==2)
                                {
                                  _tent='❤❤';
                                }if(tentative==1)
                                {
                                  _tent='❤';
                                }if(tentative==0)
                                {
                                  _tent='';
                                }
            showDialog(context: context, builder: (context)=>const AlertDialog(
                                      //shape: CircleBorder(),
                                    backgroundColor: Colors.transparent,
                                      title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
                                     content: Text("je ne doit pas manger ça au petit-déjeuner",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
          ));
          });}
        
                    
        
                    if ((tentative==3)&&(score==90))
                {
                 showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              ////////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if ((tentative ==2)&&(score==90)) {
                  showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); }
                else if((tentative ==1)&&(score==90))
                {
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if((tentative ==1)&&(score!=90))
                {
                  //liste to return to after
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments donnenat du petit-dejeuner\n🥞🧇🧈🍞 ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 40),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                        Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );
                }
                else if((tentative ==0)&&(score!=90))
                {showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Reesayer plus tard !',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
////print('object');
// //////Navigator.of(context).pop();
                            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
 
                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Reesayer plus tard !',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
////print('object');
// //////Navigator.of(context).pop();
                            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
 
                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); //liste to return to after
                }
                  },

                  ),
                DragTarget<Box>(builder: (context, candidateData, rejectedData)
                  {
                    return Container(
                    decoration: BoxDecoration(
                         // width : 200.0,
                        // height :170.0,
 color : const Color(0xFFFFC38B),
 borderRadius: BorderRadius.circular(45)
                       ),
                        width : 200.0,
                        height :170.0,
                        // color : const Color(0xFFFFC38B),
                        child :
                               const Image(image : AssetImage('assets/img/DDimg/Wrong.png'),),
   
                   
                     //Box('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : Box(activeEmoji, Colors.cyanAccent)*/
                    );
                  },
                  //onwill ccpt to accept the necessary things
                  onAccept: ( emoji)
                  {  
         
          
                      if((emoji.Fruit==false))
                        {     
                          setState(() { 
                             items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                             items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
                            // player.play('assets/sounds/true.wav');        
                      score+=10;
                     
                       showDialog(context: context, builder: (context)=>const AlertDialog(
             shape: CircleBorder(),
             backgroundColor: Colors.transparent,
            title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
             content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
           )
           );
                      });
                     
          }
          else if(emoji.Fruit==true) {
           setState(() {
            tentative-=1;
             if(tentative==2)
                                {
                                  _tent='❤❤';
                                }if(tentative==1)
                                {
                                  _tent='❤';
                                }if(tentative==0)
                                {
                                  _tent='';
                                }
             if(tentative==2)
                                {
                                  _tent='❤❤';
                                }if(tentative==1)
                                {
                                  _tent='❤';
                                }if(tentative==0)
                                {
                                  _tent='';
                                }
            showDialog(context: context, builder: (context)=>const AlertDialog(
                                      //shape: CircleBorder(),
                                    backgroundColor: Colors.transparent,
                                      title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
                                     content: Text("j'ai besoin de ça au petit-dejeuner😕",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
          ));
          });}
        
                    
           if ((tentative==3)&&(score==90))
                {
                 showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if ((tentative ==2)&&(score==90)) {
                  showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); }
                else if((tentative ==1)&&(score==90))
                {
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if((tentative ==1)&&(score!=90))
                {
                  //liste to return to after
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments donnenat du petit-dejeuner\n🥞🧇🧈🍞 ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 40),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                        Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                                  animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );
                }
                else if((tentative ==0)&&(score!=90))
                {
                  //liste to return to after
                }}

                  ),
                ],
              ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                  decoration: BoxDecoration(
                         // width : 200.0,
                        // height :170.0,
 color : const Color(0xFFFFC38B),
 borderRadius: BorderRadius.circular(45)
                       ),
                 child: GridView.count(
  crossAxisCount: 3,
  childAspectRatio: 1.5,
  //mainAxisSpacing: 0.5,
  shrinkWrap: true,
  padding: const EdgeInsets.only(left: 24, right: 24),
  children: items.map((item) {
    
                          return Box(item.boxIcon,item.boxColor,item.Fruit);
                          
                        }
                        
                            ).toList(),
  
),
               )
              ],
            )
             ],
          )
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
 // const Box({ Key? key }) : super(key: key);
final String boxIcon;
final Color boxColor;
final bool Fruit;

const Box(this.boxIcon,this.boxColor,this.Fruit, {Key? key}) : super(key: key);

 
   @override
  Widget build(BuildContext context) {
    return  Draggable<Box>(
          data :Box(boxIcon,boxColor,Fruit),
          child: Container(
            height :120.0,
          width : 120.0,
          color: boxColor,
           child:  Image.asset(boxIcon),
          
    //          child : Center(
    //             child :  CircleAvatar(
    //            backgroundColor: const Color(0xFFFDC28B),
    // backgroundImage: AssetImage(boxIcon),
    // radius: 38,
    // ), ),
    ),
              feedback: Material(
            child: Container( 
              height :120.0,
            width : 120.0,
            color: const Color(0xFFFDC28B),
            child:  Image.asset(boxIcon),
    //         child :  CircleAvatar(
    // backgroundColor: const Color(0xFFFDC28B),
    // backgroundImage: AssetImage(boxIcon),
    // radius: 38, ), 
    )
            ),

          childWhenDragging:Container( 
            height :120.0,
          width : 120.0,
          color: const Color(0xFFFDC28B),) ,
        );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         leading : IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (
//                       context) => const PdNiv2Quest()));
//             }),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Score: ',
//                         style: Theme.of(context).textTheme.subtitle1,
//                       ),
//                       TextSpan(
//                         text: '$score',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline2
                            
//                             ?.copyWith(color: Colors.teal),
//                       ),
//                       TextSpan(
//                         text: 'tentative: ',
//                         style: Theme.of(context).textTheme.subtitle1,
//                       ),
//                       TextSpan(
//                         text: '$tentative',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline2
//                             ?.copyWith(color: Colors.teal),
//                       ),
                      
//                     ],
//                   ),
//                 ),
//               ),
        
      
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/img/img_32.png"),//to be back later
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//           child:Column(
//             mainAxisAlignment:  MainAxisAlignment.spaceAround,
//             children: [
//               Title(color: Colors.deepOrangeAccent, child: const Text(" \n\n \n Rangez ces elements selon qu'est mangeable ou pas dans le petit-déjeuner",style: const TextStyle(fontSize: 20,color: const Color.fromARGB(255, 124, 38, 12)),textAlign: TextAlign.center,)),

//               Row(
//                 children: [
//                   DragTarget<Box>(builder: (context, candidateData, rejectedData)
//                   {
//                     return Container(

//                       width : 200.0,
//                       height :160.0,
//                       color : Colors.transparent,
//                       child :
//                         const CircleAvatar(
//     backgroundColor: Color(0xFFFDC28B),
//     backgroundImage: AssetImage('assets/img/DDimg/right.png'),
//     radius: 32,
//     ),
//                      );
//                   },
//                    onAccept: ( emoji)
//                   {  
//            if((emoji.Fruit==true))
//                         {     
//                           setState(() { 
//                              items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
//                              items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
//                             // player.play('assets/sounds/true.wav');        
//                       score+=10;
                      
//                        showDialog(context: context, builder: (context)=>const AlertDialog(
//              shape: CircleBorder(),
//              backgroundColor: Colors.transparent,
//             title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
//              content: Text('Bien choisi !🤗🎉🎊'+'username',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
//            )
//            );
//                       });
                     
//           }
//           else if(emoji.Fruit==false) {
//            setState(() {
//             tentative-=1;
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
//             showDialog(context: context, builder: (context)=>const AlertDialog(
//                                      // shape: CircleBorder(side =BorderSide.merge(1, 2)),
//                                       backgroundColor: Colors.transparent,
//                                       title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
//                                      content: Text(" je ne doit pas manger ça au petit-dejeuner😔😔",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
//           ));
//           });}
        
                    
        
//                     if ((tentative==3)&&(score==90))
//                 {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Themes()),//indice 
//                         );
//                 }else if ((tentative ==2)&&(score==90)) {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Bienvenue()));//Score
//                 }
//                 else if((tentative ==1)&&(score==90))
//                 {
//                   //liste to return to after
//                 } =90))
//                 {
//                   //liste to return to after
//                 }
//                 else if((tentative ==0)&&(score!=90))
//                 {
//                   //liste to return to after
//                 }
//                   },

//                   ),
//                 DragTarget<Box>(builder: (context, candidateData, rejectedData)
//                   {
//                     return Container(

//                       width : 200.0,
//                       height :160.0,
//                       color : Colors.transparent,
//                       child :
//                          const CircleAvatar(
//     backgroundColor: Color(0xFFFDC28B),
//     backgroundImage: AssetImage('assets/img/DDimg/Wrong.png'),
//     radius: 38,
//     // const Image(image : AssetImage('assets/img/DDimg/Wrong.png'),)//
//      //Box('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : Box(activeEmoji, Colors.cyanAccent)*/
//                     ));
//                   },
//                   //onwill ccpt to accept the necessary things
//                   onAccept: ( emoji)
//                   {  
         
          
//                       if((emoji.Fruit==false))
//                         {     
//                           setState(() { 
//                              items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
//                              items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
//                             // player.play('assets/sounds/true.wav');        
//                       score+=10;
                     
//                        showDialog(context: context, builder: (context)=>const AlertDialog(
//              shape: CircleBorder(),
//              backgroundColor: Colors.transparent,
//             title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
//              content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
//            )
//            );
//                       });
                     
//           }
//           else if(emoji.Fruit==true) {
//            setState(() {
//             tentative-=1;
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
//             showDialog(context: context, builder: (context)=>const AlertDialog(
//                                       //shape: CircleBorder(),
//                                      backgroundColor: Colors.transparent,
//                                       title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
//                                      content: Text("j'ai besoin de ça au petit-dejeuner😕",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
//           ));
//           });}
        
                    
        
//                      if ((tentative==3)&&(score==90))
//                 {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Themes()),//indice 
//                         );
//                 }else if ((tentative ==2)&&(score==90)) {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Bienvenue()));//Score
//                 }
//                 else if((tentative ==1)&&(score==90))
//                 {
//                   //liste to return to after
//                 } =90))
//                 {
//                   //liste to return to after
//                 }
//                 else if((tentative ==0)&&(score!=90))
//                 {
//                   //liste to return to after
//                 }
//                   },

//                   ),
//                 ],
//               ),
//             Column(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                GridView.count(
//   crossAxisCount: 3,
//   childAspectRatio: 1.8,
//   //mainAxisSpacing: 0.5,
//   shrinkWrap: true,
//   padding: const EdgeInsets.only(left: 24, right: 24),
//   children: items.map((item) {
//                         return Box(item.boxIcon,item.boxColor,item.Fruit);
                        
//                       }
                      
//                           ).toList(),
  
// )
//               ],
//             )
//              ],
//           )
//         ),
//       ),
//     );
//   }
// }

// class Box extends StatelessWidget {
//  // const Box({ Key? key }) : super(key: key);
// final String boxIcon;
// final Color boxColor;
// final bool Fruit;

// Box(this.boxIcon,this.boxColor,this.Fruit);

 
//    @override
//   Widget build(BuildContext context) {
//     return  Draggable<Box>(
//           data :Box(boxIcon,boxColor,Fruit),
//           child: Container(
//             height :120.0,
//           width : 120.0,
//           color: boxColor,
//            child:  Image.asset(boxIcon),
          
//     //          child : Center(
//     //             child :  CircleAvatar(
//     //            backgroundColor: const Color(0xFFFDC28B),
//     // backgroundImage: AssetImage(boxIcon),
//     // radius: 38,
//     // ), ),
//     ),
//               feedback: Material(
//             child: Container( 
//               height :120.0,
//             width : 120.0,
//             color: const Color(0xFFFDC28B),
//             child:  Image.asset(boxIcon),
//     //         child :  CircleAvatar(
//     // backgroundColor: const Color(0xFFFDC28B),
//     // backgroundImage: AssetImage(boxIcon),
//     // radius: 38, ), 
//     )
//             ),

//           childWhenDragging:Container( 
//             height :120.0,
//           width : 120.0,
//           color: const Color(0xFFFDC28B),) ,
//         );
//   }
// }
//////////////////////////////

/*// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation, unused_element, file_names, unused_local_variable
// ignore_for_file:  non_constant_identifier_names, must_be_immutable,


 
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/PdNiv3Quest.dart';

//to redo
class ChoixPetDej1 extends StatefulWidget {
  late Widget? Next;
   late bool? repeat;
   late bool? faite;
   ChoixPetDej1({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  State<ChoixPetDej1> createState() => _ChoixPetDej1State();
}

class _ChoixPetDej1State extends State<ChoixPetDej1> {
 bool insideTarget=false;
 late Box ii;
 late List<Box> items;
  late List<Box> items2;
  String activeEmoji='🍽';
    
 late bool remove;
   int score=0;
  late bool gameOver;
    int tentative=3;
   late String _tent;
  initGame() {
   _tent='❤❤❤';
   
    gameOver = false;
    score = 0;int tentative=3;
  items = [
     
       Box('assets/img/DDimg/banane.png', Colors.transparent,true),
       Box('assets/img/DDimg/cho.png', Colors.transparent,false),
        Box('assets/img/DDimg/tartiner.png', Colors.transparent,true),
         Box('assets/img/DDimg/lolipopp.png', Colors.transparent,false),
          Box('assets/img/DDimg/hamburger.png', Colors.transparent,false),
         Box('assets/img/DDimg/jam.png', Colors.transparent,true),//todo
      Box('assets/img/DDimg/Fasties.png', Colors.transparent,false),
       Box('assets/img/DDimg/cereal.png', Colors.transparent,true),
        Box('assets/img/DDimg/croissant2.png', Colors.transparent,true),
       

    ];
    items2 = List<Box>.from(items);

    items.shuffle();
    items2.shuffle();
  }

 

  
   
    

  @override
  void initState() {
    super.initState();
    initGame();
  }
 

 
  
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading : IconButton(
            icon: const Icon(CupertinoIcons.arrowshape_turn_up_left_fill ,color :   Color(
                        0xff010158),size: 50,),
            onPressed: () {
              Navigator.push(
                 context,
                 MaterialPageRoute(builder: (
                     context) => const PdNiv3Quest()));
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,

        title:  Text(_tent,style:  const TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
       
              ),
        
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/dejQ.png"),//to be back later
              fit: BoxFit.cover),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 82.5), 
                   ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.volume_up_rounded,color : Color(
                        0xff010158) ,size: 40,) , label: const Text("Choisi les bons et les mauvaises aliments pour le petit-déjeuner",style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
                         style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 0.000000000000005),
                            animationDuration: const Duration(milliseconds: 100),
                                fixedSize: const Size(360, 75),
                            primary:const Color(0xFFFFC38B),
                              //    shadowColor: const Color(0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ),),
                  const SizedBox(height: 38.5), 
             
              Row(
                children: [
                  DragTarget<Box>(builder: (context, candidateData, rejectedData)
                  {
                    return Container(
                               decoration: BoxDecoration(
                         // width : 200.0,
                        // height :170.0,
 color : const Color(0xFFFFC38B),
 borderRadius: BorderRadius.circular(45)
                       ),
                        width : 200.0,
                        height :170.0,
                        // color : const Color(0xFFFFC38B),
                        child :
                               const Image(image : AssetImage('assets/img/DDimg/right.png'),),
   
                   
                   
     //Box('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : Box(activeEmoji, Colors.cyanAccent)*/
                    );
                  },
                  //onwill ccpt to accept the necessary things
                  onAccept: ( emoji)
                  {  
         
          
                      if((emoji.Fruit==true))
                        {     
                          setState(() { 
                             items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                             items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
                            // player.play('assets/sounds/true.wav');        
                      score+=10;
                      
                     CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: ' Bien choisi 🎉🤗',
          autoCloseDuration: Duration(seconds: 2),
          
        );
                      });
                     
          }
          else if(emoji.Fruit==false) {
           setState(() {
            tentative-=1;
             if(tentative==2)
                                {
                                  _tent='❤❤';
                                }if(tentative==1)
                                {
                                  _tent='❤';
                                }if(tentative==0)
                                {
                                  _tent='';
                                }
                                   CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
         title: 'Oops...',
          text: 'je ne doit pas manger ça au petit-déjeuner',
            autoCloseDuration: Duration(seconds: 3),
        );
           
          });}
        
                    
        
                    if ((tentative==3)&&(score==90))
                {
                 showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              ////////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if ((tentative ==2)&&(score==90)) {
                  showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); }
                else if((tentative ==1)&&(score==90))
                {
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if((tentative ==1)&&(score!=90))
                {
                  //liste to return to after
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments  du fer\n🍲🥬🥩🍗 ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 40),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                        Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );
                }
                else if((tentative ==0)&&(score!=90))
                {showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Reesayer plus tard !',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
////print('object');
// //////Navigator.of(context).pop();
                            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
 
                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Reesayer plus tard !',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
////print('object');
// //////Navigator.of(context).pop();
                            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
 
                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); //liste to return to after
                }
                  },

                  ),
                DragTarget<Box>(builder: (context, candidateData, rejectedData)
                  {
                    return Container(
                    decoration: BoxDecoration(
                         // width : 200.0,
                        // height :170.0,
 color : const Color(0xFFFFC38B),
 borderRadius: BorderRadius.circular(45)
                       ),
                        width : 200.0,
                        height :170.0,
                        // color : const Color(0xFFFFC38B),
                        child :
                               const Image(image : AssetImage('assets/img/DDimg/Wrong.png'),),
   
                   
                     //Box('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : Box(activeEmoji, Colors.cyanAccent)*/
                    );
                  },
                  //onwill ccpt to accept the necessary things
                  onAccept: ( emoji)
                  {  
         
          
                      if((emoji.Fruit==false))
                        {     
                          setState(() { 
                             items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                             items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
                            // player.play('assets/sounds/true.wav');        
                      score+=10;
                         CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: ' Bien choisi 🎉🤗',
          autoCloseDuration: Duration(seconds: 2),
          
        );
                      });
                     
          }
          else if(emoji.Fruit==true) {
           setState(() {
            tentative-=1;
             if(tentative==2)
                                {
                                  _tent='❤❤';
                                }if(tentative==1)
                                {
                                  _tent='❤';
                                }if(tentative==0)
                                {
                                  _tent='';
                                }
             if(tentative==2)
                                {
                                  _tent='❤❤';
                                }if(tentative==1)
                                {
                                  _tent='❤';
                                }if(tentative==0)
                                {
                                  _tent='';
                                }
                                    CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
         title: 'Oops...',
          text: "j'ai besoin de ça au petit-dejeuner😕",
            autoCloseDuration: Duration(seconds: 3),
        );
           
          });}
        
                    
           if ((tentative==3)&&(score==90))
                {
                 showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if ((tentative ==2)&&(score==90)) {
                  showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        ); }
                else if((tentative ==1)&&(score==90))
                {
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Yay 🎊🎉🎉 Bravoo ✨🎉',style: TextStyle(color:  Color(
                        0xff010158),fontSize: 18),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog( shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Au petit déjeuner, tu dois vraiment choisir avec soin ce que tu manges vu qu’il est le plus important de tous les repas , donc tu dois éviter tout ce qui est trop gras , trop sucré et tu optes pour des aliments qui apportent de l’énergie et des vitamines à ton organisme . ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print('Done');////print(widget.Next);
                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              //////////////////////Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
                                style:
                            ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                             fixedSize: const Size(300, 70),
                                primary:const Color.fromARGB(255, 219, 212, 212) ,
                                shadowColor: Colors.black87 ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(75),

                                ),
                                elevation: 20
                            ),
                            
                            ),
           
              ],
            ),
          ],
        )
        );
                }else if((tentative ==1)&&(score!=90))
                {
                  //liste to return to after
                   showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments donnenat du petit-dejeuner\n🍲🥬🥩🍗 ",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 40),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                        Navigator.of(context).pop();

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(300, 70),
                                  primary:const Color.fromARGB(255, 219, 212, 212) ,
                                  shadowColor: Colors.black87 ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(75),

                                  ),
                                  elevation: 20
                              ),
                              
                              ),
             
                ],
              ),
            ],
          ),
        )
        );
                }
                else if((tentative ==0)&&(score!=90))
                {
                  //liste to return to after
                }}

                  ),
                ],
              ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                  decoration: BoxDecoration(
                         // width : 200.0,
                        // height :170.0,
 color : const Color(0xFFFFC38B),
 borderRadius: BorderRadius.circular(45)
                       ),
                 child: GridView.count(
  crossAxisCount: 3,
  childAspectRatio: 1.5,
  //mainAxisSpacing: 0.5,
  shrinkWrap: true,
  padding: const EdgeInsets.only(left: 24, right: 24),
  children: items.map((item) {
    
                          return Box(item.boxIcon,item.boxColor,item.Fruit);
                          
                        }
                        
                            ).toList(),
  
),
               )
              ],
            )
             ],
          )
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
 // const Box({ Key? key }) : super(key: key);
final String boxIcon;
final Color boxColor;
final bool Fruit;

const Box(this.boxIcon,this.boxColor,this.Fruit, {Key? key}) : super(key: key);

 
   @override
  Widget build(BuildContext context) {
    return  Draggable<Box>(
          data :Box(boxIcon,boxColor,Fruit),
          child: Container(
            height :120.0,
          width : 120.0,
          color: boxColor,
           child:  Image.asset(boxIcon),
          
    //          child : Center(
    //             child :  CircleAvatar(
    //            backgroundColor: const Color(0xFFFDC28B),
    // backgroundImage: AssetImage(boxIcon),
    // radius: 38,
    // ), ),
    ),
              feedback: Material(
            child: Container( 
              height :120.0,
            width : 120.0,
            color: const Color(0xFFFDC28B),
            child:  Image.asset(boxIcon),
    //         child :  CircleAvatar(
    // backgroundColor: const Color(0xFFFDC28B),
    // backgroundImage: AssetImage(boxIcon),
    // radius: 38, ), 
    )
            ),

          childWhenDragging:Container( 
            height :120.0,
          width : 120.0,
          color: const Color(0xFFFDC28B),) ,
        );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         leading : IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (
//                       context) => const PdNiv2Quest()));
//             }),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Score: ',
//                         style: Theme.of(context).textTheme.subtitle1,
//                       ),
//                       TextSpan(
//                         text: '$score',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline2
                            
//                             ?.copyWith(color: Colors.teal),
//                       ),
//                       TextSpan(
//                         text: 'tentative: ',
//                         style: Theme.of(context).textTheme.subtitle1,
//                       ),
//                       TextSpan(
//                         text: '$tentative',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline2
//                             ?.copyWith(color: Colors.teal),
//                       ),
                      
//                     ],
//                   ),
//                 ),
//               ),
        
      
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/img/img_32.png"),//to be back later
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//           child:Column(
//             mainAxisAlignment:  MainAxisAlignment.spaceAround,
//             children: [
//               Title(color: Colors.deepOrangeAccent, child: const Text(" \n\n \n Rangez ces elements selon qu'est mangeable ou pas dans le petit-déjeuner",style: const TextStyle(fontSize: 20,color: const Color.fromARGB(255, 124, 38, 12)),textAlign: TextAlign.center,)),

//               Row(
//                 children: [
//                   DragTarget<Box>(builder: (context, candidateData, rejectedData)
//                   {
//                     return Container(

//                       width : 200.0,
//                       height :160.0,
//                       color : Colors.transparent,
//                       child :
//                         const CircleAvatar(
//     backgroundColor: Color(0xFFFDC28B),
//     backgroundImage: AssetImage('assets/img/DDimg/right.png'),
//     radius: 32,
//     ),
//                      );
//                   },
//                    onAccept: ( emoji)
//                   {  
//            if((emoji.Fruit==true))
//                         {     
//                           setState(() { 
//                              items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
//                              items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
//                             // player.play('assets/sounds/true.wav');        
//                       score+=10;
                      
//                        showDialog(context: context, builder: (context)=>const AlertDialog(
//              shape: CircleBorder(),
//              backgroundColor: Colors.transparent,
//             title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
//              content: Text('Bien choisi !🤗🎉🎊'+'username',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
//            )
//            );
//                       });
                     
//           }
//           else if(emoji.Fruit==false) {
//            setState(() {
//             tentative-=1;
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
//             showDialog(context: context, builder: (context)=>const AlertDialog(
//                                      // shape: CircleBorder(side =BorderSide.merge(1, 2)),
//                                       backgroundColor: Colors.transparent,
//                                       title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
//                                      content: Text(" je ne doit pas manger ça au petit-dejeuner😔😔",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
//           ));
//           });}
        
                    
        
//                     if ((tentative==3)&&(score==90))
//                 {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Themes()),//indice 
//                         );
//                 }else if ((tentative ==2)&&(score==90)) {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Bienvenue()));//Score
//                 }
//                 else if((tentative ==1)&&(score==90))
//                 {
//                   //liste to return to after
//                 } =90))
//                 {
//                   //liste to return to after
//                 }
//                 else if((tentative ==0)&&(score!=90))
//                 {
//                   //liste to return to after
//                 }
//                   },

//                   ),
//                 DragTarget<Box>(builder: (context, candidateData, rejectedData)
//                   {
//                     return Container(

//                       width : 200.0,
//                       height :160.0,
//                       color : Colors.transparent,
//                       child :
//                          const CircleAvatar(
//     backgroundColor: Color(0xFFFDC28B),
//     backgroundImage: AssetImage('assets/img/DDimg/Wrong.png'),
//     radius: 38,
//     // const Image(image : AssetImage('assets/img/DDimg/Wrong.png'),)//
//      //Box('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : Box(activeEmoji, Colors.cyanAccent)*/
//                     ));
//                   },
//                   //onwill ccpt to accept the necessary things
//                   onAccept: ( emoji)
//                   {  
         
          
//                       if((emoji.Fruit==false))
//                         {     
//                           setState(() { 
//                              items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
//                              items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       
//                             // player.play('assets/sounds/true.wav');        
//                       score+=10;
                     
//                        showDialog(context: context, builder: (context)=>const AlertDialog(
//              shape: CircleBorder(),
//              backgroundColor: Colors.transparent,
//             title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
//              content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
//            )
//            );
//                       });
                     
//           }
//           else if(emoji.Fruit==true) {
//            setState(() {
//             tentative-=1;
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
            //  if(tentative==2)
            //                     {
            //                       _tent='❤❤';
            //                     }if(tentative==1)
            //                     {
            //                       _tent='❤';
            //                     }if(tentative==0)
            //                     {
            //                       _tent='';
            //                     }
//             showDialog(context: context, builder: (context)=>const AlertDialog(
//                                       //shape: CircleBorder(),
//                                      backgroundColor: Colors.transparent,
//                                       title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
//                                      content: Text("j'ai besoin de ça au petit-dejeuner😕",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
//           ));
//           });}
        
                    
        
//                      if ((tentative==3)&&(score==90))
//                 {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Themes()),//indice 
//                         );
//                 }else if ((tentative ==2)&&(score==90)) {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Bienvenue()));//Score
//                 }
//                 else if((tentative ==1)&&(score==90))
//                 {
//                   //liste to return to after
//                 } =90))
//                 {
//                   //liste to return to after
//                 }
//                 else if((tentative ==0)&&(score!=90))
//                 {
//                   //liste to return to after
//                 }
//                   },

//                   ),
//                 ],
//               ),
//             Column(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                GridView.count(
//   crossAxisCount: 3,
//   childAspectRatio: 1.8,
//   //mainAxisSpacing: 0.5,
//   shrinkWrap: true,
//   padding: const EdgeInsets.only(left: 24, right: 24),
//   children: items.map((item) {
//                         return Box(item.boxIcon,item.boxColor,item.Fruit);
                        
//                       }
                      
//                           ).toList(),
  
// )
//               ],
//             )
//              ],
//           )
//         ),
//       ),
//     );
//   }
// }

// class Box extends StatelessWidget {
//  // const Box({ Key? key }) : super(key: key);
// final String boxIcon;
// final Color boxColor;
// final bool Fruit;

// Box(this.boxIcon,this.boxColor,this.Fruit);

 
//    @override
//   Widget build(BuildContext context) {
//     return  Draggable<Box>(
//           data :Box(boxIcon,boxColor,Fruit),
//           child: Container(
//             height :120.0,
//           width : 120.0,
//           color: boxColor,
//            child:  Image.asset(boxIcon),
          
//     //          child : Center(
//     //             child :  CircleAvatar(
//     //            backgroundColor: const Color(0xFFFDC28B),
//     // backgroundImage: AssetImage(boxIcon),
//     // radius: 38,
//     // ), ),
//     ),
//               feedback: Material(
//             child: Container( 
//               height :120.0,
//             width : 120.0,
//             color: const Color(0xFFFDC28B),
//             child:  Image.asset(boxIcon),
//     //         child :  CircleAvatar(
//     // backgroundColor: const Color(0xFFFDC28B),
//     // backgroundImage: AssetImage(boxIcon),
//     // radius: 38, ), 
//     )
//             ),

//           childWhenDragging:Container( 
//             height :120.0,
//           width : 120.0,
//           color: const Color(0xFFFDC28B),) ,
//         );
//   }
// }*/