// ignore_for_file: previtamine C_const_constructors, previtamine C_adjacent_string_concatenation, unused_element, file_names, unused_local_variable, camel_case_types
// ignore_for_file:  non_constant_identifier_names, must_be_immutable,

 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class vitC extends StatefulWidget {
 late Widget? Next;
   late bool? repeat;
   late bool? faite;
   vitC({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  State<vitC> createState() => _vitCState();
}

class _vitCState extends State<vitC> {
 bool insideTarget=false;
 late FruitBox ii;
 late List<FruitBox> items;
  late List<FruitBox> items2;
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
     
       FruitBox('assets/img/FoodetS/milk.png', Colors.transparent,false,false),
       FruitBox('assets/img/DDimg/coffee.png', Colors.transparent,false,false),
        FruitBox('assets/img/DDimg/orange.png', Colors.transparent,true,false),
         FruitBox('assets/img/FoodetS/carrot.png', Colors.transparent,false,false),
          FruitBox('assets/img/FoodetS/eggs.png', Colors.transparent,false,false),
         FruitBox('assets/img/DDimg/kiwi.png', Colors.transparent,true,false),
         FruitBox('assets/img/FoodetS/grapefruit.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/fraise.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/lemon.png', Colors.transparent,true,false),//todo
     
     

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
              //Navigator.push(
             //     context,
         //         MaterialPageRoute(builder: (
            //          context) => const PdNiv2Quest()));
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,

        title:  Text(_tent,style: TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
      
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
                      0xff010158) ,size: 40,) , label: const Text('Je gagne du vitamine C en mangeant',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
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
                        const Image(image : AssetImage('assets/img/DDimg/vitC.png'),)
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
                               content: Text('ça ne me donne pas du vitamine C',style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
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
  
               content: const Text("Je suis l'une des vitamines essentielles à votre corps, je vous apporte assez d'énergie pour penser correctement, calculer et jouer.J’aide ton organisme à lutter contre les maladies et je rends ton humanité de plus en plus forte .Tu me trouves en plusieurs aliments dont : les fruits et les légumes comme : le kiwi,l’orange,la mangue et surtout le poivron rouge   .",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              ////Navigator.of(context).pop();

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
              }else if ((tentative ==2)&&(score==50)) {
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
  
               content: const Text("Je suis l'une des vitamines essentielles à votre corps, je vous apporte assez d'énergie pour penser correctement, calculer et jouer.J’aide ton organisme à lutter contre les maladies et je rends ton humanité de plus en plus forte .Tu me trouves en plusieurs aliments dont : les fruits et les légumes comme : le kiwi,l’orange,la mangue et surtout le poivron rouge   .",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));////Navigator.of(context).pop();
              ////Navigator.of(context).pop();
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
        );  }
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
  
               content: const Text("Je suis l'une des vitamines essentielles à votre corps, je vous apporte assez d'énergie pour penser correctement, calculer et jouer.J’aide ton organisme à lutter contre les maladies et je rends ton humanité de plus en plus forte .Tu me trouves en plusieurs aliments dont : les fruits et les légumes comme : le kiwi,l’orange,la mangue et surtout le poivron rouge   .",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                            Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));////Navigator.of(context).pop();
              ////Navigator.of(context).pop();
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
              }else if((tentative ==1)&&(score==50))
              {
               showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments donnent du vitamine C\n🍋🍊 ",style: TextStyle(color:  Color(
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
//print('object');
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
//print('object');
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
//                       context) => const PdNiv1Quest()));
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
//               image: AssetImage("assets/img/img_31.png"),//to be back later
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//           child:Column(
//             mainAxisAlignment:  MainAxisAlignment.spaceAround,
//             children: [
//               Title(color: Colors.deepOrangeAccent, child: const Text(' \n\n\nje gagne d energie le matin en mangeant',style: const TextStyle(fontSize: 18,color: const Color.fromARGB(255, 124, 38, 12)),)),

//               DragTarget<FruitBox>(builder: (context, candidateData, rejectedData)
//               {
//                 return Container(

//                   width : 200.0,
//                   height :160.0,
//                   color : Colors.transparent,
//                   child :
//                     const Image(image : AssetImage('assets/img/DDimg/vitC.png'),)//vitamine C
//      //FruitBox('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
//                 );
//               },
//               //onwill ccpt to accept the necessary things
//               onAccept: ( emoji)
//               {  
         
          
//                   if((emoji.val==true)&&(emoji.Done==false))
//                     {     
//                       setState(() { emoji.Done=true;
//                          items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
//                          items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                   
//                         // player.play('assets/sounds/true.wav');        
//                   score+=10;
//                   emoji.Done=true;
//                    showDialog(context: context, builder: (context)=>const AlertDialog(
//              shape: CircleBorder(),
//              backgroundColor: Colors.transparent,
//             title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
//              content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
//            )
//            );
//                   });
                 
//           }
//           else if(emoji.val==false) {
//            setState(() {
//             tentative-=1;
//             showDialog(context: context, builder: (context)=>const AlertDialog(
//                                   //shape: CircleBorder(),
//                                 backgroundColor: Colors.transparent,
//                                   title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
//                                  content: Text("ce n'est pas ça qui me donne d'éneregé😔",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
//           ));
//           });}
        
                
        
//                  if ((tentative==3)&&(score==50))
//                 {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Themes()),//indice 
//                         );
//                 }else if ((tentative ==2)&&(score==50)) {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Bienvenue()));//Score
//                 }
//                 else if((tentative ==1)&&(score==50))
//                 {
//                   //liste to return to after
//                 } =50))
//                 {
//                   //liste to return to after
//                 }
//                 else if((tentative ==0)&&(score!=50))
//                 {
//                   //liste to return to after
//                 }
//               },

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
//                         return FruitBox(item.boxIcon,item.boxColor,item.val,item.Done);
                        
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

// class FruitBox extends StatelessWidget {
//  // const FruitBox({ Key? key }) : super(key: key);
// final String boxIcon;
// final Color boxColor;
// final bool val;
// bool Done;
// FruitBox(this.boxIcon,this.boxColor,this.val,this.Done);

 
//    @override
//   Widget build(BuildContext context) {
//     return  Draggable<FruitBox>(
//           data :FruitBox(boxIcon,boxColor,val,Done),
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

























////////////////////////////
 /*// ignore_for_file: previtamine C_const_constructors, previtamine C_adjacent_string_concatenation, unused_element, file_names, unused_local_variable, camel_case_types
// ignore_for_file:  non_constant_identifier_names, must_be_immutable,

 
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class vitC extends StatefulWidget {
 late Widget? Next;
   late bool? repeat;
   late bool? faite;
   vitC({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  State<vitC> createState() => _vitCState();
}

class _vitCState extends State<vitC> {
 bool insideTarget=false;
 late FruitBox ii;
 late List<FruitBox> items;
  late List<FruitBox> items2;
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
     
       FruitBox('assets/img/FoodetS/milk.png', Colors.transparent,false,false),
       FruitBox('assets/img/DDimg/coffee.png', Colors.transparent,false,false),
        FruitBox('assets/img/DDimg/orange.png', Colors.transparent,true,false),
         FruitBox('assets/img/FoodetS/carrot.png', Colors.transparent,false,false),
          FruitBox('assets/img/FoodetS/eggs.png', Colors.transparent,false,false),
         FruitBox('assets/img/DDimg/kiwi.png', Colors.transparent,true,false),
         FruitBox('assets/img/FoodetS/grapefruit.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/fraise.png', Colors.transparent,true,false),
         FruitBox('assets/img/DDimg/lemon.png', Colors.transparent,true,false),//todo
     
     

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
              //Navigator.push(
             //     context,
         //         MaterialPageRoute(builder: (
            //          context) => const PdNiv2Quest()));
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,

        title:  Text(_tent,style: TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
      
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
                      0xff010158) ,size: 40,) , label: const Text('Je gagne du vitamine C en mangeant',style: TextStyle(fontSize: 21,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
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
                        const Image(image : AssetImage('assets/img/DDimg/vitC.png'),)
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
         title: 'Oops...',
          text: 'ça ne me donne pas du vitamine C',
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
  
               content: const Text("Je suis l'une des vitamines essentielles à votre corps, je vous apporte assez d'énergie pour penser correctement, calculer et jouer.J’aide ton organisme à lutter contre les maladies et je rends ton humanité de plus en plus forte .Tu me trouves en plusieurs aliments dont : les fruits et les légumes comme : le kiwi,l’orange,la mangue et surtout le poivron rouge   .",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
              
              ////Navigator.of(context).pop();

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
              }else if ((tentative ==2)&&(score==50)) {
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
  
               content: const Text("Je suis l'une des vitamines essentielles à votre corps, je vous apporte assez d'énergie pour penser correctement, calculer et jouer.J’aide ton organisme à lutter contre les maladies et je rends ton humanité de plus en plus forte .Tu me trouves en plusieurs aliments dont : les fruits et les légumes comme : le kiwi,l’orange,la mangue et surtout le poivron rouge   .",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                           //next question
                             Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));////Navigator.of(context).pop();
              ////Navigator.of(context).pop();
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
        );  }
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
  
               content: const Text("Je suis l'une des vitamines essentielles à votre corps, je vous apporte assez d'énergie pour penser correctement, calculer et jouer.J’aide ton organisme à lutter contre les maladies et je rends ton humanité de plus en plus forte .Tu me trouves en plusieurs aliments dont : les fruits et les légumes comme : le kiwi,l’orange,la mangue et surtout le poivron rouge   .",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                            Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => widget.Next!));////Navigator.of(context).pop();
              ////Navigator.of(context).pop();
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
              }else if((tentative ==1)&&(score==50))
              {
               showDialog(
   
        context: context,
        builder: (BuildContext context) => Container( decoration: const BoxDecoration(
            

          image: DecorationImage(
              image: AssetImage("assets/img/dyk.png"),//to be back later
              fit: BoxFit.cover),
        ),
          child: AlertDialog(
             shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
               content: const Text("Indice :\n Voici quelque aliments donnenat du vitamine C\n🍲🥬🥩🍗 ",style: TextStyle(color:  Color(
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
//print('object');
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
//print('object');
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
//                       context) => const PdNiv1Quest()));
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
//               image: AssetImage("assets/img/img_31.png"),//to be back later
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//           child:Column(
//             mainAxisAlignment:  MainAxisAlignment.spaceAround,
//             children: [
//               Title(color: Colors.deepOrangeAccent, child: const Text(' \n\n\nje gagne d energie le matin en mangeant',style: const TextStyle(fontSize: 18,color: const Color.fromARGB(255, 124, 38, 12)),)),

//               DragTarget<FruitBox>(builder: (context, candidateData, rejectedData)
//               {
//                 return Container(

//                   width : 200.0,
//                   height :160.0,
//                   color : Colors.transparent,
//                   child :
//                     const Image(image : AssetImage('assets/img/DDimg/vitC.png'),)//vitamine C
//      //FruitBox('assets/img/FoodetS/butter.png', Colors.transparent,true,true), /*==''? null : FruitBox(activeEmoji, Colors.cyanAccent)*/
//                 );
//               },
//               //onwill ccpt to accept the necessary things
//               onAccept: ( emoji)
//               {  
         
          
//                   if((emoji.val==true)&&(emoji.Done==false))
//                     {     
//                       setState(() { emoji.Done=true;
//                          items.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
//                          items2.removeWhere((obj) => obj.boxIcon==emoji.boxIcon);
                   
//                         // player.play('assets/sounds/true.wav');        
//                   score+=10;
//                   emoji.Done=true;
//                    showDialog(context: context, builder: (context)=>const AlertDialog(
//              shape: CircleBorder(),
//              backgroundColor: Colors.transparent,
//             title: Text('Bravo 👏🏻',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center,),
//              content: Text('Bien choisi !🤗🎉🎊'+'Salim',style: TextStyle(fontSize: 50,color: Colors.green),textAlign: TextAlign.center)
//            )
//            );
//                   });
                 
//           }
//           else if(emoji.val==false) {
//            setState(() {
//             tentative-=1;
//             showDialog(context: context, builder: (context)=>const AlertDialog(
//                                   //shape: CircleBorder(),
//                                 backgroundColor: Colors.transparent,
//                                   title: Text('Non❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
//                                  content: Text("ce n'est pas ça qui me donne d'éneregé😔",style: TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
//           ));
//           });}
        
                
        
//                  if ((tentative==3)&&(score==50))
//                 {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Themes()),//indice 
//                         );
//                 }else if ((tentative ==2)&&(score==50)) {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) =>  const Bienvenue()));//Score
//                 }
//                 else if((tentative ==1)&&(score==50))
//                 {
//                   //liste to return to after
//                 } =50))
//                 {
//                   //liste to return to after
//                 }
//                 else if((tentative ==0)&&(score!=50))
//                 {
//                   //liste to return to after
//                 }
//               },

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
//                         return FruitBox(item.boxIcon,item.boxColor,item.val,item.Done);
                        
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

// class FruitBox extends StatelessWidget {
//  // const FruitBox({ Key? key }) : super(key: key);
// final String boxIcon;
// final Color boxColor;
// final bool val;
// bool Done;
// FruitBox(this.boxIcon,this.boxColor,this.val,this.Done);

 
//    @override
//   Widget build(BuildContext context) {
//     return  Draggable<FruitBox>(
//           data :FruitBox(boxIcon,boxColor,val,Done),
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