// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_adjacent_string_concatenation, file_names, unused_local_variable

 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/PdNiv3Quest.dart';


class PetDej3 extends StatefulWidget {
  late Widget? Next;
   late bool? repeat;
   late bool? faite;
   PetDej3({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  State<PetDej3> createState() => _PetDej3State();
}

class _PetDej3State extends State<PetDej3> {
bool insideTarget=false;
late String _tent;
 late FruitBox ii;
 late List<FruitBox> items;
  late List<FruitBox> items2;
  String activeEmoji='🍽';
    
 late bool remove;
   int score=0;
  late bool gameOver;
   int tentative=3;
  initGame() {
   _tent;
    gameOver = false;
    score = 0;int tentative=3;
  items = [
      // ItemModel(value: 'eggs', name: '🐓', img: 'assets/img/FoodetS/dinde.png'),
      FruitBox('assets/img/DDimg/verre-deau.png', Colors.transparent,true,false),
       FruitBox('assets/img/DDimg/pizza.png', Colors.transparent,false,false),
        FruitBox('assets/img/FoodetS/butter.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/softdrinks.png', Colors.transparent,false,false),
         FruitBox('assets/img/DDimg/kebab.png', Colors.transparent,false,false),
         FruitBox('assets/img/DDimg/jam.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/hamburger.png', Colors.transparent,false,false),
          FruitBox('assets/img/DDimg/breadcute.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/fried-egg.png', Colors.transparent,true,false),
       // ItemModel(value: 'orange', name: '🌳', img: 'assets/img/FoodetS/grapes.png'),

    ];
    items2 = List<FruitBox>.from(items);

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

        title: const Text('❤❤❤',style: TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
        
              ),
        
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/pdQ.png"),//to be back later
              fit: BoxFit.cover),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                   const SizedBox(height: 82.5), 
                 ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.volume_up_rounded,color : Color(
                      0xff010158) ,size: 40,) , label: const Text(' Pour le petit-déjeuner, je mange ...',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
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
                const SizedBox(height: 35.5), 
                  DragTarget<FruitBox>(builder: (context, candidateData, rejectedData)
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
                        const Image(image : AssetImage('assets/img/DDimg/breakfast.png'),)
     //FruitBox('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
              );
              },
              //onwill ccpt to accept the necessary things
              onAccept: ( emoji)
              {  
         
          
                if((emoji.val==true)&&(emoji.Done==false))
                  {     
                    setState(() { emoji.Done=true;
                       items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                 
                      // player.play('assets/sounds/true.wav');        
                score+=10;
                emoji.Done=true;
                 showDialog(context: context, builder: (context)=>const AlertDialog(
             shape: CircleBorder(),
             backgroundColor: Colors.transparent,
            title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
             content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
           )
           );
                });
               
          }
          else if(emoji.val==false) {
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
                               content: Text('je ne dois pas manger ça au petit dejeuner il me fait  mal au ventre ',style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
          ));
          });}
        
              
        
               if ((tentative==3)&&(score==50))
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
  
               content: const Text("Bravo 🎈, tu as bien composé ton assiette du petit déjeuner Sache bien qu'au petit déjeuner , tu dois éviter de prendre le junkfood ( ce qui comprend la pizza , les sandwichs les frites …) car il vont te causer des problèmes de santé et un mal au ventre le matin",style: TextStyle(color:  Color(
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
              
              //Navigator.of(context).pop();

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
        );}, child: const Text('Allons-y a savoir',style: TextStyle(color:  Color(
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
        );  }else if ((tentative ==2)&&(score==50)) {
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
  
               content: const Text("Bravo 🎈, tu as bien composé ton assiette du petit déjeunerSache bien qu'au petit déjeuner , tu dois éviter de prendre le junkfood ( ce qui comprend la pizza , les sandwichs les frites …) car il vont te causer des problèmes de santé et un mal au ventre le matin",style: TextStyle(color:  Color(
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
              
              //Navigator.of(context).pop();

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
        );    }
              else if((tentative ==1)&&(score==50))
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
  
               content: const Text("Bravo 🎈, tu as bien composé ton assiette du petit déjeunerSache bien qu'au petit déjeuner , tu dois éviter de prendre le junkfood ( ce qui comprend la pizza , les sandwichs les frites …) car il vont te causer des problèmes de santé et un mal au ventre le matin",style: TextStyle(color:  Color(
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
              
              //Navigator.of(context).pop();

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
              }else if((tentative ==1)&&(score!=50))
              {
                showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             // ignore: unnecessary_const
             shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments du petit-dejeuner\n🍌🧃🥑🍊🥛🍞🧈🥞 ",style: TextStyle(color:  Color(
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
                                  primary:Color.fromARGB(255, 219, 212, 212) ,
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
              else if((tentative ==0)&&(score!=50))
              {
             showDialog(
   
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
        );
              }
              },

              ),
                ]
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
  childAspectRatio: 1.25,
  //mainAxisSpacing: 0.5,
  shrinkWrap: true,
  padding: const EdgeInsets.only(left: 24, right: 24),
  children: items.map((item) {
                        return FruitBox(item.boxIcon,item.boxColor,item.val,item.Done);
                        
                      }
                      
                          ).toList(),
  
),
               )
              ],
           
          ),
            ]
          ),
    ),
      )
    );
  }
}

class FruitBox extends StatelessWidget {
 // const FruitBox({ Key? key }) : super(key: key);
final String boxIcon;
final Color boxColor;
final bool val;
bool Done;
FruitBox(this.boxIcon,this.boxColor,this.val,this.Done, {Key? key}) : super(key: key);

 
   @override
  Widget build(BuildContext context) {
    return  Draggable<FruitBox>(
          data :FruitBox(boxIcon,boxColor,val,Done),
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













/////////////////////////////////
/*// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_adjacent_string_concatenation, file_names, unused_local_variable

 
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/PdNiv3Quest.dart';


class PetDej3 extends StatefulWidget {
  late Widget? Next;
   late bool? repeat;
   late bool? faite;
   PetDej3({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  State<PetDej3> createState() => _PetDej3State();
}

class _PetDej3State extends State<PetDej3> {
bool insideTarget=false;
late String _tent;
 late FruitBox ii;
 late List<FruitBox> items;
  late List<FruitBox> items2;
  String activeEmoji='🍽';
    
 late bool remove;
   int score=0;
  late bool gameOver;
   int tentative=3;
  initGame() {
   _tent;
    gameOver = false;
    score = 0;int tentative=3;
  items = [
      // ItemModel(value: 'eggs', name: '🐓', img: 'assets/img/FoodetS/dinde.png'),
      FruitBox('assets/img/DDimg/verre-deau.png', Colors.transparent,true,false),
       FruitBox('assets/img/DDimg/pizza.png', Colors.transparent,false,false),
        FruitBox('assets/img/FoodetS/butter.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/softdrinks.png', Colors.transparent,false,false),
         FruitBox('assets/img/DDimg/kebab.png', Colors.transparent,false,false),
         FruitBox('assets/img/DDimg/jam.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/hamburger.png', Colors.transparent,false,false),
          FruitBox('assets/img/DDimg/breadcute.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/fried-egg.png', Colors.transparent,true,false),
       // ItemModel(value: 'orange', name: '🌳', img: 'assets/img/FoodetS/grapes.png'),

    ];
    items2 = List<FruitBox>.from(items);

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

        title: const Text('❤❤❤',style: TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
        
              ),
        
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/pdQ.png"),//to be back later
              fit: BoxFit.cover),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment:  MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                   const SizedBox(height: 82.5), 
                 ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.volume_up_rounded,color : Color(
                      0xff010158) ,size: 40,) , label: const Text(' Pour le petit-déjeuner, je mange ...',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
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
                const SizedBox(height: 35.5), 
                  DragTarget<FruitBox>(builder: (context, candidateData, rejectedData)
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
                        const Image(image : AssetImage('assets/img/DDimg/breakfast.png'),)
     //FruitBox('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
              );
              },
              //onwill ccpt to accept the necessary things
              onAccept: ( emoji)
              {  
         
          
                if((emoji.val==true)&&(emoji.Done==false))
                  {     
                    setState(() { emoji.Done=true;
                       items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                       items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                 
                      // player.play('assets/sounds/true.wav');        
                score+=10;
                emoji.Done=true;
                CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: ' Bien choisi 🎉🤗',
          autoCloseDuration: Duration(seconds: 2),
          
        );
                });
               
          }
          else if(emoji.val==false) {
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
         title: 'Non ❌',
          text: 'il me fait mal au ventre le matin',
            autoCloseDuration: Duration(seconds: 3),
        );
          });}
        
              
        
               if ((tentative==3)&&(score==50))
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
  
               content: const Text("Bravo 🎈, tu as bien composé ton assiette du petit déjeuner Sache bien qu'au petit déjeuner , tu dois éviter de prendre le junkfood ( ce qui comprend la pizza , les sandwichs les frites …) car il vont te causer des problèmes de santé et un mal au ventre le matin",style: TextStyle(color:  Color(
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
              
              //Navigator.of(context).pop();

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
        );}, child: const Text('Allons-y a savoir',style: TextStyle(color:  Color(
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
        );  }else if ((tentative ==2)&&(score==50)) {
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
  
               content: const Text("Bravo 🎈, tu as bien composé ton assiette du petit déjeunerSache bien qu'au petit déjeuner , tu dois éviter de prendre le junkfood ( ce qui comprend la pizza , les sandwichs les frites …) car il vont te causer des problèmes de santé et un mal au ventre le matin",style: TextStyle(color:  Color(
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
              
              //Navigator.of(context).pop();

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
        );    }
              else if((tentative ==1)&&(score==50))
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
  
               content: const Text("Bravo 🎈, tu as bien composé ton assiette du petit déjeunerSache bien qu'au petit déjeuner , tu dois éviter de prendre le junkfood ( ce qui comprend la pizza , les sandwichs les frites …) car il vont te causer des problèmes de santé et un mal au ventre le matin",style: TextStyle(color:  Color(
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
              
              //Navigator.of(context).pop();

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
              }else if((tentative ==1)&&(score!=50))
              {
                showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             // ignore: unnecessary_const
             shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments du petit-dejeuner\n🍌🧃🥑🍊🥛🍞🧈🥞 ",style: TextStyle(color:  Color(
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
                                  primary:Color.fromARGB(255, 219, 212, 212) ,
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
              else if((tentative ==0)&&(score!=50))
              {
             showDialog(
   
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
        );
              }
              },

              ),
                ]
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
  childAspectRatio: 1.25,
  //mainAxisSpacing: 0.5,
  shrinkWrap: true,
  padding: const EdgeInsets.only(left: 24, right: 24),
  children: items.map((item) {
                        return FruitBox(item.boxIcon,item.boxColor,item.val,item.Done);
                        
                      }
                      
                          ).toList(),
  
),
               )
              ],
           
          ),
            ]
          ),
    ),
      )
    );
  }
}

class FruitBox extends StatelessWidget {
 // const FruitBox({ Key? key }) : super(key: key);
final String boxIcon;
final Color boxColor;
final bool val;
bool Done;
FruitBox(this.boxIcon,this.boxColor,this.val,this.Done, {Key? key}) : super(key: key);

 
   @override
  Widget build(BuildContext context) {
    return  Draggable<FruitBox>(
          data :FruitBox(boxIcon,boxColor,val,Done),
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
}*/