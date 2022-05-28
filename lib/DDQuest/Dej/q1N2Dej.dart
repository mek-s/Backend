// ignore_for_file: must_be_immutable, non_constant_identifier_names, file_names

 
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/DejNiv3Quest.dart';
//import '../itemModel.dart';

class SourcesDej extends StatefulWidget {
  late Widget? Next;
   late bool? repeat;
   late bool? faite;
   SourcesDej({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  _SourcesDejState createState() => _SourcesDejState();
}

class _SourcesDejState extends State<SourcesDej> {

  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late int tentatives;
  late bool gameRight;
  late bool indice;
  late bool repeat;
 late String Fact;
   int tentative=3;
   late String _tent;
  initGame() {
   _tent='❤❤❤';
    gameRight = false;
     indice=false;
    repeat=false;
    score = 0;
    tentatives=3;
    items = [
      // ItemModel(value: 'eggs', name: '🐓', img: 'assets/img/FoodetS/dinde.png' , fact : "d'origine "),
      ItemModel(value: 'le fromage',
          name: 'assets/img/FoodetS/vache.png',
          img: 'assets/img/FoodetS/fromage.png' , fact : "d'origine animale "),
      ItemModel(value: 'la tomate ',
          name: 'assets/img/FoodetS/tomatoes.png',
          img: 'assets/img/FoodetS/tomato.png' , fact : "d'origine végétale "),
      //ItemModel(value: 'orange', name: '🌳', img: 'assets/img/FoodetS/apple.png' , fact : "d'origine "),
      ItemModel(value: 'la pomme ',
          name: 'assets/img/FoodetS/Appltree.png',
          img: 'assets/img/FoodetS/apple.png' , fact : "d'origine végétale"),
      ItemModel(value: 'yaourt ',
          name: 'assets/img/FoodetS/grapes.png',
          img: 'assets/img/FoodetS/yogurt.png' , fact : "d'origine végétale"),
      ItemModel(value: 'le dinde',
          name: 'assets/img/FoodetS/poulet.png',
          img: 'assets/img/FoodetS/dinde.png' , fact : "d'origine animale "),
      // ItemModel(value: 'orange', name: '🌳', img: 'assets/img/FoodetS/grapes.png' , fact : "d'origine "),

    ];
    items2 = List<ItemModel>.from(items);

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
      body: Container(
        height: 1250,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_35.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    
                    IconButton(
                       icon: const Icon(CupertinoIcons.arrowshape_turn_up_left_fill ,color :   Color(
                        0xff010158),size: 50,),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (
                                  context) => const DejNiv3Quest()));
                        }),
  Text(_tent,style: const TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
      
                   
                  ],
                ),
              ),
                ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.volume_up_rounded,color : Color(
                        0xff010158) ,size: 40,) , label: const Text(' Relie chaque aliment avec sa source.',style: TextStyle(fontSize: 23,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
                         style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 0.000000000000005),
                            animationDuration: const Duration(milliseconds: 100),
                                fixedSize: const Size(560, 95),
                            primary:const Color(0xFFFFC38B),
                              //    shadowColor: const Color(0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ),),
         
  const SizedBox(height: 38.5), 
           
     if (!gameRight)
                Row(
                  children: [
                    const Spacer(),
                  Container(
                  
                      width: 140,
                     decoration:  BoxDecoration(
 //shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(50),
color:  const Color(0xFFFFC38B),

),
                      child: Column(
                        children: items.map((item) {
                          return Container(
                            margin: const EdgeInsets.all(8),
                            child: Draggable<ItemModel>(
                              data: item,
                              childWhenDragging: 
                           CircleAvatar(
                                backgroundColor: const Color(0xFFFDC28B),
                                backgroundImage: AssetImage(item.img),
                                radius: 37,
                              ),
                              feedback: CircleAvatar(
                                backgroundColor: const Color(0xFFFDC28B),
                                backgroundImage: AssetImage(item.img),
                                radius: 35,
                              ),
                              child: 
                              
                              CircleAvatar(
                                backgroundColor: const Color(0xFFFDC28B),
                                backgroundImage: AssetImage(item.img),
                                radius: 32,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const Spacer(flex: 2),
                    Container(
                      width: 190,
                     decoration:  BoxDecoration(

  borderRadius: BorderRadius.circular(50),
color:  const Color(0xFFFFC38B),

),
                      child: Column(
                        children: items2.map((item) {
                          return DragTarget<ItemModel>(
                            onAccept: (receivedItem) {
                              if (item.value == receivedItem.value) {
                                setState(() {
                                  items.remove(receivedItem);
                                  items2.remove(item);
                                });
                                score += 10;
                                item.accepting = false;
                               if ((tentatives==3)&&(score==50))
                        {
                           showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟🌟🌟',style: TextStyle(color:  Color(
                          0xff010158),fontSize: 38),textAlign: TextAlign.center),
          content:  Text('Yay 🎊🎉🎉 Bravoo ✨🎉 \n\n Tu as obtenu $tentatives 🌟 ',style: const TextStyle(color:  Color(
                          0xff010158),fontSize: 25),textAlign: TextAlign.center),
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget.Next!));

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                                0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                    
                                    style:
                                ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                                 fixedSize: const Size(290 ,70),
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
                               fixedSize: const Size(290 ,70),
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
                        }else if ((tentatives ==2)&&(score==50)) {
                        showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('🌟 🌟',style: TextStyle(color:  Color(
                          0xff010158),fontSize: 38),textAlign: TextAlign.center),
          content: Text('Yay 🎊🎉🎉 Bravoo ✨🎉 \n Tu as obtenu $tentatives 🌟',style: const TextStyle(color:  Color(
                          0xff010158),fontSize: 25),textAlign: TextAlign.center),
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                             Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget.Next!));

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                                0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                    
                                    style:
                                ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                                 fixedSize: const Size(290 ,70),
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
                               fixedSize: const Size(290 ,70),
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
        );}
                        else if((tentatives ==1)&&(score==50))
                        {
                         showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text(' 🌟',style: TextStyle(color:  Color(
                          0xff010158),fontSize: 38),textAlign: TextAlign.center),
          content:  Text('Yay 🎊🎉🎉 Bravoo ✨🎉 \n Tu as obtenu $tentatives 🌟',style: const TextStyle(color:  Color(
                          0xff010158),fontSize: 25),textAlign: TextAlign.center),
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
                            0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget.Next!));

                  }, child: const Text('Continuer',style: TextStyle(color:  Color(
                                0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                    
                                    style:
                                ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  //                                animationDuration: const Duration(milliseconds: 100),
                                 fixedSize: const Size(290 ,70),
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
                               fixedSize: const Size(290 ,70),
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
        );}
        
        
       
                               // player.play('assets/sounds/true.wav');
                              } else {
                                setState(() {

                                  tentatives-=1;
                                    if(tentatives==2)
                                  {
                                    _tent='❤❤';
                                  }if(tentatives==1)
                                  {
                                    _tent='❤';
                                  }if(tentatives==0)
                                  {
                                    _tent='';
                                  }

                                  //to copy
if(receivedItem.fact==item.fact)
{
  Fact="C'est un aliment "+receivedItem.fact+"\n mais ce n'est pas ça son origin";
}
else{
  Fact =receivedItem.value+" est  "+receivedItem.fact;
}

                                   CoolAlert.show(
          context: context,
          title : 'NON !',
          type: CoolAlertType.error,
          text: 
          Fact,
        );
        if((tentatives ==1)&&(score<50))
              {              CoolAlert.show(
          context: context,
          title : 'Indice',
          type: CoolAlertType.info,
          text: 
          "\n 🧀🥛-->🐄\n\n🍊🍋🍎🍏-->🌳 \n\n🥚-->🐓🦃\n\n🧅🥕🍠🥔-->🌱",
        );
 
        } else if((tentatives == 0)&&(score<50))
              {
              
                showDialog(
   
        context: context,
        builder: (BuildContext context) => AlertDialog(
           shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
          title: const Text('😣😪',style: TextStyle(color:  Color(
                          0xff010158),fontSize: 28),textAlign: TextAlign.center),
          content: const Text('Reesayer plus tard !',style: TextStyle(color:  Color(
                          0xff010158),fontSize: 25),textAlign: TextAlign.center),
          actions: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                     Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => widget.Next!));
        
        }, child: const Text('Continuer',style: TextStyle(color:  Color(
                              0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
                                  style:
                              ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//                                animationDuration: const Duration(milliseconds: 100),
                               fixedSize: const Size(290 ,70),
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
       
                                  item.accepting = false;
                                 // player.play('assets/sounds/false.wav');
                                });
                              }
                            },
                            onWillAccept: (receivedItem) {
                              setState(() {
                                item.accepting = true;
                              });
                              return true;
                            },
                            onLeave: (receivedItem) {
                              setState(() {
                                item.accepting = false;
                              });
                            },
                            builder: (context, acceptedItems, rejectedItems) =>
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: item.accepting
                                          ? Colors.grey[400]
                                          : Colors.grey[200],
                                    ),
                                    alignment: Alignment.center,
                                    height:
                                    MediaQuery
                                        .of(context)
                                        .size
                                        .width / 6.5,
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width / 3,
                                    margin: const EdgeInsets.all(8),
                                    child:
                                    Image(image: AssetImage(item.name),)
                                
                                ),
                          );
                        }).toList(),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),



      //         if(indice)
      //          const SimpleDialog(
      //                  children: [
      //                      //score + continue in containerr
      //                  ],
      //      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
      //     title: Text('Bravo',style: TextStyle(color:  Color(
      //                   0xff010158),fontSize: 28),textAlign: TextAlign.center),
      //  ), 
      //         if(repeat)
      //         //idk

      //          if (gameRight)
      //                if(tentatives==3)  
      //                 SimpleDialog(
      //                  children: [
      //                     Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [ 
      //           ElevatedButton(onPressed: (){  showDialog(
   
      //   context: context,
      //   builder: (BuildContext context) => Container(
      //               decoration: const BoxDecoration(
            

      //     image: DecorationImage(
      //         image: AssetImage("assets/img/dyk.png"),//to be back later
      //         fit: BoxFit.cover),
      //   ),
      //     child: AlertDialog(
      //        shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
      //          content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition ",style: TextStyle(color:  const Color(
      //                     0xff010158),fontSize: 18),textAlign: TextAlign.center),
      //       actions: [
      //         Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             ElevatedButton(onPressed: (){

      //                      //next question

      //             }, child: const Text('Continuer',style: TextStyle(color:  Color(
      //                         0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
      //                             style:
      //                         ElevatedButton.styleFrom(
      //                             padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      //                             animationDuration: const Duration(milliseconds: 100),
      //                          fixedSize: const Size(300, 70),
      //                             primary:Color.fromARGB(255, 219, 212, 212) ,
      //                             shadowColor: Colors.black87 ,
      //                             shape: RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.circular(75),

      //                             ),
      //                             elevation: 20
      //                         ),
                              
      //                         ),
             
      //           ],
      //         ),
      //       ],
      //     ),
      //   )
      //   );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
      //                       0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
      //                           style:
      //                       ElevatedButton.styleFrom(
      //                           padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      //                           animationDuration: const Duration(milliseconds: 100),
      //                        fixedSize: const Size(300, 70),
      //                           primary:Color.fromARGB(255, 219, 212, 212) ,
      //                           shadowColor: Colors.black87 ,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(75),

      //                           ),
      //                           elevation: 20
      //                       ),
                            
      //                       ),
           
      //         ],
      //       ),    ],
      //      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
      //     title: Text('🌟🌟🌟',style: TextStyle(color:  Color(
      //                   0xff010158),fontSize: 28),textAlign: TextAlign.center),
      //  ), 
                       
      //                if(tentatives==2)  
      //                 SimpleDialog(
                     
      //                  children: [
      //                     Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [ 
      //           ElevatedButton(onPressed: (){  showDialog(
   
      //   context: context,
      //   builder: (BuildContext context) => Container(
      //               decoration: const BoxDecoration(
            

      //     image: DecorationImage(
      //         image: AssetImage("assets/img/dyk.png"),//to be back later
      //         fit: BoxFit.cover),
      //   ),
      //     child: AlertDialog(
      //        shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
      //          content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition .",style: TextStyle(color:  const Color(
      //                     0xff010158),fontSize: 18),textAlign: TextAlign.center),
      //       actions: [
      //         Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             ElevatedButton(onPressed: (){

      //                      //next question

      //             }, child: const Text('Continuer',style: TextStyle(color:  Color(
      //                         0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
      //                             style:
      //                         ElevatedButton.styleFrom(
      //                             padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      //                             animationDuration: const Duration(milliseconds: 100),
      //                          fixedSize: const Size(300, 70),
      //                             primary:Color.fromARGB(255, 219, 212, 212) ,
      //                             shadowColor: Colors.black87 ,
      //                             shape: RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.circular(75),

      //                             ),
      //                             elevation: 20
      //                         ),
                              
      //                         ),
             
      //           ],
      //         ),
      //       ],
      //     ),
      //   )
      //   );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
      //                       0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
      //                           style:
      //                       ElevatedButton.styleFrom(
      //                           padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      //                           animationDuration: const Duration(milliseconds: 100),
      //                        fixedSize: const Size(300, 70),
      //                           primary:Color.fromARGB(255, 219, 212, 212) ,
      //                           shadowColor: Colors.black87 ,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(75),

      //                           ),
      //                           elevation: 20
      //                       ),
                            
      //                       ),
           
      //         ],
      //       ),    ],
      //      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
      //     title: Text('🌟🌟',style: TextStyle(color:  Color(
      //                   0xff010158),fontSize: 28),textAlign: TextAlign.center),
      //  ),
      //                if(tentatives==1) 
      //                 SimpleDialog(
      //                 children: [
      //                     Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [ 
      //           ElevatedButton(onPressed: (){  showDialog(
   
      //   context: context,
      //   builder: (BuildContext context) => Container(
      //               decoration: const BoxDecoration(
            

      //     image: DecorationImage(
      //         image: AssetImage("assets/img/dyk.png"),//to be back later
      //         fit: BoxFit.cover),
      //   ),
      //     child: AlertDialog(
      //        shape:  const RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(32.2))),
  
      //          content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition ",style: TextStyle(color:  const Color(
      //                     0xff010158),fontSize: 18),textAlign: TextAlign.center),
      //       actions: [
      //         Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             ElevatedButton(onPressed: (){

      //                      //next question

      //             }, child: const Text('Continuer',style: TextStyle(color:  Color(
      //                         0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                  
      //                             style:
      //                         ElevatedButton.styleFrom(
      //                             padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      //                             animationDuration: const Duration(milliseconds: 100),
      //                          fixedSize: const Size(300, 70),
      //                             primary:Color.fromARGB(255, 219, 212, 212) ,
      //                             shadowColor: Colors.black87 ,
      //                             shape: RoundedRectangleBorder(
      //                               borderRadius: BorderRadius.circular(75),

      //                             ),
      //                             elevation: 20
      //                         ),
                              
      //                         ),
             
      //           ],
      //         ),
      //       ],
      //     ),
      //   )
      //   );}, child: const Text('Allons-ez a savoir',style: TextStyle(color:  Color(
      //                       0xff010158),fontSize: 18),textAlign: TextAlign.center),
                                
      //                           style:
      //                       ElevatedButton.styleFrom(
      //                           padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      //                           animationDuration: const Duration(milliseconds: 100),
      //                        fixedSize: const Size(300, 70),
      //                           primary:Color.fromARGB(255, 219, 212, 212) ,
      //                           shadowColor: Colors.black87 ,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(75),

      //                           ),
      //                           elevation: 20
      //                       ),
                            
      //                       ),
           
      //         ],
      //       ),    ],
      //                   shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.2))),
  
      //     title: Text('🌟',style: TextStyle(color:  Color(
      //                   0xff010158),fontSize: 28),textAlign: TextAlign.center),
      //  ),
                                       
      //           // Center(
      //           //   child: Column(
      //           //     children: [
      //           //       Padding(
      //           //         padding: const EdgeInsets.all(8.0),
      //           //         child: Text(
      //           //           'Game Over',
      //           //           style: Theme
      //           //               .of(context)
      //           //               .textTheme
      //           //               .headline6!
      //           //               .copyWith(
      //           //               fontWeight: FontWeight.bold, color: Colors.red),
      //           //         ),
      //           //       ),
      //           //       Padding(
      //           //         padding: const EdgeInsets.all(8.0),
      //           //         child: Text(
      //           //           result(),
      //           //           style: Theme
      //           //               .of(context)
      //           //               .textTheme
      //           //               .headline3,
      //           //         ),
      //           //       ),
      //           //     ],
      //           //   ),
      //           // ),
      //         // if (gameRight)
      //         //   Container(
      //         //     height: MediaQuery
      //         //         .of(context)
      //         //         .size
      //         //         .width / 10,
      //         //     decoration: BoxDecoration(
      //         //         color: Colors.teal,
      //         //         borderRadius: BorderRadius.circular(8)),
      //         //     child: TextButton(
      //         //         onPressed: () {
      //         //           setState(() {
      //         //             initGame();
      //         //           });
      //         //         },
      //         //         child: const Text(
      //         //           'New Game',
      //         //           style: TextStyle(color: Colors.white),
      //         //         )),
      //         //   )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  // String result() {
  //   if (score == 70) {
  //     player.play('assets/sounds/success.wav');
  //     return 'Awesome!';
  //   } else {
  //     player.play('assets/sounds/tryAgain.wav');
  //     return 'Play again to get better score';
  //   }
  // }

}
class ItemModel
{
final String name;
final String img;
final String value;
bool accepting;
final String fact;
ItemModel({required this.name,required this.value,required this.img,this.accepting=false,required this.fact});

}
/*// ignore_for_file: must_be_immutable, non_constant_identifier_names, file_names

 ;
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:hummy/pages/DejNiv3Quest.dart';
//import '../itemModel.dart';

class SourcesDej extends StatefulWidget {
  late Widget? Next;
   late bool? repeat;
   late bool? faite;
   SourcesDej({
    Key? key,
      this.Next,
      this.repeat,
      this.faite,
  }) : super(key: key);

  @override
  _SourcesDejState createState() => _SourcesDejState();
}

class _SourcesDejState extends State<SourcesDej> {
   
  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late int tentatives;
  late bool gameRight;
  late bool indice;
  late bool repeat;

   int tentative=3;
   late String _tent;
  initGame() {
   _tent='❤❤❤';
    gameRight = false;
     indice=false;
    repeat=false;
    score = 0;
    tentatives=3;
    items = [
      // ItemModel(value: 'eggs', name: '🐓', img: 'assets/img/FoodetS/dinde.png' , fact : "d'origine "),
      ItemModel(value: 'le fromage',
          name: 'assets/img/FoodetS/vache.png',
          img: 'assets/img/FoodetS/fromage.png' , fact : "d'origine animale "),
      ItemModel(value: 'la tomate ',
          name: 'assets/img/FoodetS/tomatoes.png',
          img: 'assets/img/FoodetS/tomato.png' , fact : "d'origine végétale "),
      //ItemModel(value: 'orange', name: '🌳', img: 'assets/img/FoodetS/apple.png' , fact : "d'origine "),
      ItemModel(value: 'la pomme ',
          name: 'assets/img/FoodetS/Appltree.png',
          img: 'assets/img/FoodetS/apple.png' , fact : "d'origine végétale"),
      ItemModel(value: 'yaourt ',
          name: 'assets/img/FoodetS/grapes.png',
          img: 'assets/img/FoodetS/yogurt.png' , fact : "d'origine végétale"),
      ItemModel(value: 'le dinde',
          name: 'assets/img/FoodetS/poulet.png',
          img: 'assets/img/FoodetS/dinde.png' , fact : "d'origine animale "),
      // ItemModel(value: 'orange', name: '🌳', img: 'assets/img/FoodetS/grapes.png' , fact : "d'origine "),

    ];
    items2 = List<ItemModel>.from(items);

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
      body: Container(
        height: 1250,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_33.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (
                                  context) => const DejNiv3Quest()));
                        }),
                 Text(_tent,style: const TextStyle(fontSize: 28) ,textAlign: TextAlign.end,),
      
                  ],
                ),
              ),
              
          
                ElevatedButton.icon(onPressed: (){
                            //voice

                }, icon:const Icon(Icons.volume_up_rounded,color : Color(
                        0xff010158) ,size: 40,) , label: const Text(' Relie chaque aliment avec sa source.',style: TextStyle(fontSize: 26,color: Color.fromARGB(255, 124, 38, 12),),textAlign : TextAlign.center),
                         style :ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 0.000000000000005),
                            animationDuration: const Duration(milliseconds: 100),
                                fixedSize: const Size(560, 95),
                            primary:const Color(0xFFFFC38B),
                              //    shadowColor: const Color(0xff010158) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(75),

                            ),
                            elevation: 20
                        ),),
  const SizedBox(height: 38.5), 
     if (!gameRight)
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging: 
                         CircleAvatar(
                              backgroundColor: const Color(0xFFFDC28B),
                              backgroundImage: AssetImage(item.img),
                              radius: 37,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: const Color(0xFFFDC28B),
                              backgroundImage: AssetImage(item.img),
                              radius: 35,
                            ),
                            child: 
                            
                            CircleAvatar(
                              backgroundColor: const Color(0xFFFDC28B),
                              backgroundImage: AssetImage(item.img),
                              radius: 32,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const Spacer(flex: 2),
                    Column(
                      children: items2.map((item) {
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem) {
                            if (item.value == receivedItem.value) {
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                              });
                              score += 10;
                              item.accepting = false;
                       if ((tentatives==3)&&(score==50))
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print(widget.Next);
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
                      }else if ((tentatives ==2)&&(score==50)) {
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print(widget.Next);
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
        );}
                      else if((tentatives ==1)&&(score==50))
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
                          0xff010158),fontSize: 18),textAlign: TextAlign.center),
            actions: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(onPressed: (){
               //print(widget.Next);
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
        
        );}else if((tentative ==1)&&(score!=50))
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
  
               content: const Text("Indice :\n 🧀🥛-->🐄\n🍊🍋🍎🍏-->🌳 \n🥚-->🐓🦃\n🧅🥕🍠🥔-->🌱",style: TextStyle(color:  Color(
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
        );}
              else if((tentative ==0)&&(score!=50))
              {
                //liste to return to after
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
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
  
               content: const Text("Tous les aliments que tu consommes régulièrement sont des produits soit d’origine animale ou végétale qui renferment des substances dont ton organisme a besoin pour assurer sa saine nutrition",style: TextStyle(color:  Color(
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
                             // player.play('assets/sounds/true.wav');
                            } else {
                              setState(() {
                                tentatives-=1;
             if(tentatives==2)
                                {
                                  _tent='❤❤';
                                }if(tentatives==1)
                                {
                                  _tent='❤';
                                }if(tentatives==0)
                                {
                                  _tent='';
                                }
                                CoolAlert.show(
          context: context,
          title : 'Indice',
          type: CoolAlertType.info,
          text: receivedItem.value+" est  "+receivedItem.fact,
        );
          //                       showDialog(context: context, builder: (context)=> AlertDialog(
          //                         //shape: CircleBorder(),
          //                         backgroundColor: Colors.transparent,
          //                         title: const Text('Non 😔❌',style: TextStyle(fontSize: 50,color: Colors.red),textAlign: TextAlign.center,),
          //                       content: Text('indice :\n'+receivedItem.value+" est  "+receivedItem.fact,style: const TextStyle(fontSize: 39,color: Colors.red),textAlign: TextAlign.center)
          //  ));
                                item.accepting = false;
                               // player.play('assets/sounds/false.wav');
                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: item.accepting
                                        ? Colors.grey[400]
                                        : Colors.grey[200],
                                  ),
                                  alignment: Alignment.center,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width / 6.5,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 3,
                                  margin: const EdgeInsets.all(8),
                                  child:
                                  Image(image: AssetImage(item.name),)
                              
                              ),
                        );
                      }).toList(),
                    ),
                    const Spacer(),
                  ],
                ),




      
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  

}
class ItemModel
{
final String name;
final String img;
final String value;
bool accepting;
final String fact;
ItemModel({required this.name,required this.value,required this.img,this.accepting=false,required this.fact});

}*/