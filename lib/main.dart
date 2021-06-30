import 'dart:async';
import 'dart:io';
import 'dart:ui';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:firebase_admob/firebase_admob.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/data.dart';
// import 'package:flutter_carousel_slider/carousel_slider.dart';
// import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
// import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_test/rec.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';
import 'Second.dart';
import 'entities/models/note.dart';

void main() =>
    runApp(ChangeNotifierProvider(create: (context) => Data(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//     // return MaterialApp(
//     //   debugShowCheckedModeBanner: false,
//     //   home: Scaffold(
//     //     appBar: AppBar(title: Text("Home Screen"),
//     //     centerTitle: true,
//     //     leading: Icon(Icons.message),
//     //     actions: [
//     //       IconButton(icon: Icon(Icons.add_a_photo), onPressed: null)
//     //     ],
//     //     ),
//     //
//     //     body: Center(
//     //
//     //       child: Text("this is my first text", style: TextStyle(fontSize: 20),)
//     //       // mainAxisAlignment: MainAxisAlignment.center,
//     //       // children: [
//     //       //   Text("This is first ap"),
//     //       //   RaisedButton(child: Text("tep me "), onPressed: (){Text("Pressed");}),
//     //       // ],
//     //     ),
//     //   ),
//     //
//     // );
//
//     //tutorial 6 safearea
//
//     // return MaterialApp(
//     //   debugShowCheckedModeBanner: false,
//     //
//     //   home: SafeArea(
//     //     child: Scaffold(
//     //       appBar: AppBar(title: Text("title"),),
//     //       body: ListView(
//     //         children: [
//     //
//     //            Column(
//     //             children: [
//     //               Container(
//     //                 height: 200,
//     //                 width: 150,
//     //                 color: Colors.amber,
//     //               ),
//     //               SizedBox(height: 10,),
//     //               Container(
//     //                 height: 200,
//     //                 width: 150,
//     //                 color: Colors.amber,
//     //               ),
//     //               SizedBox(height: 10,),
//     //               Container(
//     //                 height: 200,
//     //                 width: 150,
//     //                 color: Colors.amber,
//     //               )
//     //             ],
//     //           ),
//     //
//     //         ],
//     //
//     //       ),
//     //     ),
//     //   )
//     //
//     // );
//
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     var screenheigth = MediaQuery.of(context).size.height/5;
//     var screenwigth =screenheigth / 5;
//     return Container(
//       child: Scaffold(
//         body: Center(
//           child: Container(
//             height: screenheigth,
//             width: screenwigth,
//             color: Colors.amber,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: ListView(
//           children: [
//             ListTile(
//               title: Text("easy expleane"),
//               subtitle: Text("leranr every da "),
//               leading: CircleAvatar(child: Icon(Icons.message),),
//               trailing: Icon(Icons.add),
//             ),
//             ListTile(
//               title: Text("easy expleane"),
//               subtitle: Text("leranr every da "),
//               leading: CircleAvatar(child: Icon(Icons.message),),
//               trailing: Icon(Icons.add),
//             ),
//             ListTile(
//               title: Text("easy expleane"),
//               subtitle: Text("leranr every da "),
//               leading: CircleAvatar(child: Icon(Icons.message),),
//               trailing: Icon(Icons.add),
//             ),
//           ],
//
//         ),
//
//       )
//
//     );
//
//
//   }
// }

//

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Image.asset("images/unnamed.png"),
//           //child: Image.network("https://www.google.com/search?q=image&client=firefox-b-d&sxsrf=ALeKk00Z7NqqYzEAUIQgTVDbiJUlDrUB1A:1624261552224&tbm=isch&source=iu&ictx=1&fir=gxFxsvFBmxeZ9M%252C0JWe7yDOKrVFAM%252C_&vet=1&usg=AI4_-kReDzFRmzDAOj_DsRSOvMu2NwesqQ&sa=X&ved=2ahUKEwiPmd7mnajxAhWhIaYKHWrRDSgQ9QF6BAgREAE#imgrc=gxFxsvFBmxeZ9M"),
//
//         ),
//       ),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final pages = [
//     Container(color: Colors.amber,),
//       Container(color: Colors.green,),
//       Container(color: Colors.blue,),
//       Container(color: Colors.red,),
//
//     ];
//
//     return MaterialApp(
//       home: Scaffold(
//         body: LiquidSwipe(pages: pages) ,
//       ),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView.count(
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10,
//             // child: Card(
//             //   elevation: 10,
//             //   shape: RoundedRectangleBorder(
//             //     //borderRadius: BorderRadius.all(Radius.circular(10))
//             //     borderRadius: BorderRadius.all(Radius.circular(10))
//             //   ),
//             //   child: Container(
//             //     height: 200,
//             //     width: 200,
//             //   ),
//             // ),
//
//
//             crossAxisCount: 2,
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.cyan,
//
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.cyan,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.cyan,
//               )
//
//             ],
//
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               flex: 2,
//                 child: Container(color: Colors.cyan,)),
//             Expanded(
//               flex: 1,
//                 child: Container(color: Colors.redAccent,)),
//             Expanded(
//               flex: 1,
//                 child: Container(color: Colors.blue,)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   PageController _controller = PageController(
//     initialPage: 0,
//   );
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: PageView(
//           scrollDirection: Axis.vertical,
//           controller: _controller,
//           children: [
//             Page1(),
//             Page2(),
//             Page3(),
//             Page4(),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircleAvatar(
//           radius: 50,
//
//           child: GestureDetector(
//             child:Hero(
//               tag: "add",
//               child: Icon(Icons.add_a_photo, size: 50,),
//
//             ),
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => Second()));
//             },
//
//     ),
//
//
//         ),
//
//
//       ),
//     );
//   }
// }

//bottom navigation ver in flutter

// class Homepage extends StatefulWidget {
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var _currentindex = 0;
//   final pages = [
//     Page1(),
//     Page2(),
//     Page3(),
//     Page4(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.yellowAccent,
//           currentIndex: _currentindex,
//           items: [
//         BottomNavigationBarItem(
//           backgroundColor: Colors.red,
//           icon: Icon((Icons.message)),
//           title: Text("Message"),
//
//
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.red,
//           icon: Icon((Icons.message)),
//           title: Text("Message"),
//
//
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.red,
//           icon: Icon((Icons.message)),
//           title: Text("Message"),
//
//
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.red,
//           icon: Icon((Icons.message)),
//           title: Text("Message"),
//
//
//         ),
//         BottomNavigationBarItem(
//           backgroundColor: Colors.red,
//           icon: Icon((Icons.message)),
//           title: Text("Message"),
//
//
//         ),
//
//
//       ],
//           onTap: (index){
//             setState((){
//               _currentindex = index;
//
//             });
//           }
//
//       ),
//       body: pages[_currentindex],
//     );
//   }
// }

//Taber in flutter

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(title: Text("TabBer"),
//             bottom: TabBar(tabs: [
//               Tab(icon: Icon(Icons.pages),),
//               Tab(icon: Icon(Icons.pages),),
//               Tab(icon: Icon(Icons.pages),),
//             ],),
//           ),
//           body: TabBarView(
//             children: [
//               Page1(),
//               Page2(),
//               Page3()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//SliverAppBar==================================

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: CustomScrollView(
//             slivers: [
//               SliverAppBar(
//                 expandedHeight: 200,
//                 pinned: true,
//                 backgroundColor: Colors.red,
//                 flexibleSpace: FlexibleSpaceBar(
//                   title: new Padding(
//                     padding: const EdgeInsets.only(left: 0.0),
//                     child: new Text("SliverAppBar"),
//                   ),
//                 ),
//               ),
//               SliverList(delegate: SliverChildListDelegate([
//                 addDetails("one", "this is one"),
//                 addDetails("two", "this is two"),
//                 addDetails("three", "this is three"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//                 addDetails("one", "this is one"),
//               ]))
//             ],
//           ),
//       ),
//     );
//   }
// }

// Widget addDetails(
//   String name,
//   String description,
// ){
//   return ListTile(
//     title: Text(name),
//     subtitle: Text(description),
//     leading: CircleAvatar(
//       child: Text(name[0]),
//   )
//
//   );
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           flexibleSpace:Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.center,
//                     end: Alignment.bottomCenter,
//                     tileMode: TileMode.repeated,
//                     colors: [Colors.pink, Colors.white]
//                 )
//             ),
//           ),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.center,
//               end: Alignment.bottomCenter,
//               tileMode: TileMode.repeated,
//               colors: [Colors.pink, Colors.white]
//             )
//           ),
//         ),
//       ),
//     );
//   }
// }

//provider send data one page to another page

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   // int value = 0;
//   // ince(){
//   //   setState(() {
//   //     value++;
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     final providerdata = Provider.of<Data>(context);
//     return SafeArea(
//         child: Scaffold(
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(providerdata.value.toString(), style: TextStyle(fontSize: 25),),
//                   RaisedButton(child: Icon(Icons.add),onPressed: providerdata.Increment(),),
//                   RaisedButton(
//
//                     onPressed: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Rec()));
//                     },
//                   ),
//                 ],
//               ),
//             ),
//         )
//     );
//   }
// }

//pick image gallery and camera

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   File _image;
//   Future CameraImage() async{
//     var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       _image = image;
//
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return SafeArea(child: Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 500,
//             width: double.infinity,
//             color: Colors.pink,
//             child: _image==null?Text("no selected"):Image.file(_image),
//           ),
//           Divider(),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FloatingActionButton(onPressed: (){CameraImage();})
//             ],
//           )
//         ],
//       ),
//     ));
//   }
// }

//bottom menu ==================================================
//
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           onPressed: (){
//             showModalBottomSheet(context: context, builder: (context) {
//               return Container(
//                 height: 250,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       title: Text("One"),
//                       subtitle: Text("this is one"),
//                       trailing: Icon(Icons.access_alarm),
//                     ),
//                     ListTile(
//                       title: Text("One"),
//                       subtitle: Text("this is one"),
//                       trailing: Icon(Icons.access_alarm),
//                     ),
//                     ListTile(
//                       title: Text("One"),
//                       subtitle: Text("this is one"),
//                       trailing: Icon(Icons.access_alarm),
//                     ),
//
//                   ],
//                 ),
//
//               );
//
//             });
//           },
//         ),
//       ),
//     );
//   }
// }

//curve bottom navigation
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           onPressed: (){
//             showDialog(context: context,
//             builder: (context){
//               return AlertDialog(
//                 title: Text("Alart"),
//                 content: Text("This is Alert"),
//                 actions: [
//                   RaisedButton(onPressed:() { Navigator.pop(context);}, child: Text("Ok"),)
//                 ],
//               );
//             });
//
//           },
//         ),
//       ),
//     );
//   }
// }

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var _page = 0;
//   final pages = [Page1(), Page2(), Page3(), Page4()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//           index: 0,
//           color: Colors.white,
//           backgroundColor: Colors.pink,
//           buttonBackgroundColor: Colors.yellow,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//         onTap: (index){
//             setState(() {
//               _page = index;
//             });
//
//         },
//
//         items: [
//
//           Icon(Icons.camera),
//           Icon(Icons.add),
//           Icon(Icons.featured_video_outlined),
//           Icon(Icons.add_chart),
//           Icon(Icons.cached_outlined),
//
//         ],
//       ),
//       body: pages [_page],
//
//     );
//   }
// }

//custom dialog

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             showDialog(
//                 context: context,
//                 builder: (context) {
//                   return Dialog(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20))
//                     ),
//                     child: Stack(
//                       alignment: Alignment.topCenter,
//                       overflow: Overflow.visible,
//                       children: [
//                         Container(
//                           height: 320,
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               children: [
//                                 SizedBox(
//                                   height: 50,
//                                 ),
//                                 Text(
//                                   "Alart Dialog",
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                                 Text(
//                                     "details of alart dialog of sfddfsdfdsf  df sd  fds f who am i? am an android developrr flutter "),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: -50,
//                             child: CircleAvatar(
//                           radius: 50,
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.all(Radius.circular(50)),
//                               child: Image.asset("images/unnamed.png"),
//                             )
//
//                         ))
//                       ],
//                     ),
//                   );
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }

//snackber =================================================
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Builder(
//           builder: (BuildContext con){
//             return RaisedButton(
//
//               onPressed: (){
//                 Scaffold.of(con).showSnackBar(SnackBar(content: Text("I am andco"),
//                   duration: Duration(seconds: 5),
//                   action: SnackBarAction(label: "ok", onPressed: (){
//
//
//                   },),
//                 ));
//               },
//               child: Text("Click"),
//             );
//           }
//
//         ),
//       ),
//     );
//   }
// }

//toast ===========================================================

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           onPressed: (){
//             Fluttertoast.showToast(msg: "This is toast", toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.BOTTOM);
//           },
//         ),
//       ),
//     );
//   }
// }

//

// class Homepage extends StatefulWidget {
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var _value = 10.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("paractice flutter", style: TextStyle(fontSize: _value),),
//           Slider(
//             min: 10,
//             max: 50,
//             value: _value, onChanged: (value){
//               setState(() {
//                 _value = value;
//                 print(_value);
//
//               });
//           }
//           )
//         ],
//       ),
//     );
//   }
// }

//Rich tech color

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RichText(
//           text: TextSpan(
//             text: "Easy Show", style: TextStyle(fontSize: 20, color: Colors.green),
//               children: [
//                 TextSpan(
//                   text: "Sub", style: TextStyle(fontSize: 25, color: Colors.yellow)
//                 )
//               ]
//           ),
//         ),
//       ),
//     );
//   }
// }

//DropdownButton

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var selected = "Choose";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(selected, style: TextStyle(fontSize: 60),),
//             DropdownButton(items: [
//               DropdownMenuItem(value: "Exx ",child: Text("one")),
//               DropdownMenuItem(value: "Exx fdff",child: Text("two"))
//             ], onChanged:(val){
//               setState(() {
//                 selected = val;
//               });
//             } )
//           ],
//         ),
//       ),
//     );
//   }
// }

//swip button
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Dismissible(
//           key: ValueKey("abc"),
//           background: Container(
//             color: Colors.green,
//             child: Icon(Icons.delete, size: 40,),
//           ),
//           child: ListTile(
//             title: Text("Easy"),
//             subtitle: Text("this is sub title "),
//             trailing: Icon(Icons.delete),
//           ),
//         ),
//       ),
//     );
//   }
// }

//checkbox

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var value = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(value == false? "Unchecked": "Checked"),
//             Checkbox(value: value, onChanged: (bool val){
//               setState(() {
//                 value = val;
//                 print(value);
//               });
//
//             })
//
//           ],
//         ),
//       ),
//     );
//   }
// }

//sign in
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var _chack = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: AnimatedCrossFade(firstChild: Container(
//               height: 300,
//               color: Colors.green,
//               child: RaisedButton(
//                 onPressed: (){
//
//                   setState(() {
//                     _chack = false;
//                   });
//                 }),
//
//
//             ), secondChild: Text("Great", style: TextStyle(fontSize: 20),),
//               crossFadeState: _chack?CrossFadeState.showFirst: CrossFadeState.showSecond,
//               duration: Duration(seconds: 5),
//
//
//               ),
//           )
//         ],
//       ),
//     );
//   }
// }

//switch

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var value = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: value == false? Colors.green:Colors.lime,
//       body: Center(
//         child: Switch(value: value,
//           onChanged: (val){
//               setState(() {
//                 value = val;
//                 print(value);
//               });
//           },
//         ),
//       ),
//     );
//   }
// }

//Animated Content
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   bool value = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(onPressed: (){
//           setState(() {
//             value =! value;
//           });
//         },),
//         body: Center(
//           child: AnimatedContainer(
//             height:value == false? 150:350,
//             width: value == false? 150:300,
//             color: Colors.lime,
//           ),
//         ),
//       ),
//     );
//   }
// }

//expand listtile

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             ExpansionTile(
//                 title: Text("One"),
//                 subtitle: Text("This is one "),
//                 trailing: Icon(Icons.arrow_back),
//
//             children: [
//               Container(
//                 height: 200,
//                 color: Colors.purple,
//               )
//             ],
//
//
//             ),
//             ExpansionTile(
//               title: Text("One"),
//               subtitle: Text("This is one "),
//               trailing: Icon(Icons.arrow_back),
//
//               children: [
//                 Container(
//                   height: 200,
//                   color: Colors.purple,
//                 )
//               ],
//
//
//             ),
//             ExpansionTile(
//               title: Text("One"),
//               subtitle: Text("This is one "),
//               trailing: Icon(Icons.arrow_back),
//
//               children: [
//                 Container(
//                   height: 200,
//                   color: Colors.purple,
//                 )
//               ],
//
//
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

//Tooltip

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Tooltip(
//             message: "sfdsfsd",
//             child: Container(
//               height: 300,
//               color: Colors.purple,
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }

//list tile

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: Center(
//         child: Stack(
//           children: [
//             Container(
//               height: 200,
//               color: Colors.purple,
//
//             ),
//             BackdropFilter(filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), child: Container(
//               color: Colors.purple.withOpacity(0.3),
//             ),)
//           ],
//         ),
//       ),
//     ));
//   }
// }

//date time piccker
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   DateTime _dateTime;
//   TimeOfDay _timeOfDay;
//   getDate() async{
//     DateTime date = await showDatePicker(
//         context: context,
//         initialDate: DateTime(DateTime.now().year),
//         firstDate: DateTime(DateTime.now().year-20),
//         lastDate: DateTime(DateTime.now().year+2));
//
//     setState(() {
//       _dateTime = date;
//     });
//   }
//
//   getTime()async{
//     TimeOfDay time = await showTimePicker(context:context,
//         initialTime: TimeOfDay.now());
//     setState(() {
//       _timeOfDay = time;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _dateTime == null? Text("Chooose date"):Text("date ${_dateTime.year}, ${_dateTime.month}, "),
//             RaisedButton(onPressed: (){
//               getDate();
//             }),
//             _timeOfDay == null? Text("Choose time"): Text("time ${_timeOfDay.hour}, ${_timeOfDay.minute}"),
//             RaisedButton(onPressed: (){
//
//               getTime();
//
//             }),
//           ],
//         ),
//       ),
//     ));
//   }
// }

//container bg roted

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: Center(
//         child: Transform.translate(
//             offset:Offset(50,100),
//
//         child: Container(
//             height: 150,
//             width: 150,
//             color: Colors.pink,
//         ),
//         ),
//         ),
//     ));
//   }
// }

//parse a http get request from server ====================================
//https://apps.bncodeing.com/api/dress/post
//=========================================================================
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   List<Note> _notes = List<Note>();
//
//   Future<List<Note>> getDate() async {
//     var url = "https://apps.bncodeing.com/api/dress/post";
//     var response = await http.get(url);
//
//     var notes = List<Note>();
//
//     if (response.statusCode == 200) {
//       var notesJson = json.decode(response.body);
//       for (var noteJson in notesJson) {
//         notes.add(Note.fromJson(noteJson));
//       }
//     }
//     return notes;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Json data parse GET request"),
//         ),
//         body: ListView.builder(
//           itemBuilder: (context, index) {
//             return Card(
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     top: 32.0, bottom: 32, left: 16.0, right: 16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       _notes[index].dressName.toString(),
//                       style:
//                           TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                     ),
//                     //Text(_notes[index].dressDetails.toString()),
//                     //Html(data: _notes[index].dressDetails.toString()),
//
//                     SizedBox(height: 5),
//                     Text('Size. ${_notes[index].dressSize.toString()}', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
//                     SizedBox(height: 25),
//                     FadeInImage.assetNetwork(
//                       placeholder: 'assets/loading.gif',
//                       image: _notes[index].dressImageUrl,
//                     ),
//                     //Html(data: _notes[index].dressDetails.toString()),
//
//                   ],
//                 ),
//               ),
//             );
//           },
//           itemCount: _notes.length,
//         ));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getDate().then((value) {
//       setState(() {
//         _notes.addAll(value);
//       });
//     });
//   }
// }
//parse a http get request from server ====================================
//https://apps.bncodeing.com/api/dress/post
//=========================================================================

//splash screen ===========================================================
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   Future getImageFromFirebase ()async{
//     var firestore = Firestore.instance;
//     QuerySnapshot qn = await firestore.collection("firebase connect link").getDocuments();
//     return qn.documents;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 200,
//             child: FutureBuilder(
//               future: getImageFromFirebase(),
//               builder: (_, snapshot){
//                 return CarouselSlider.builder(
//                 slideBuilder:(index){
//                   DocumentSnapshot sliderimage = snapshot.data[index];
//                   return Container(
//                     child: Image.network("image name id"),
//                   );
//                 },
//
//                 slideTransform: CubeTransform(
//                   rotationAngle: 0,
//
//                 ),
//                     slideIndicator: CircularSlideIndicator(
//                       indicatorBackgroundColor: Colors.pink,
//                       currentIndicatorColor: Colors.purple
//                     ),
//
//                     itemCount: snapshot.data.lenght,);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//intro Screen
// class Homepage extends StatefulWidget {
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//         pages: [
//           PageViewModel(
//             title: "first",
//             body: "this is second ",
//             image: Image.asset("", width: 350,),
//           ),
//           PageViewModel(
//             title: "first",
//             body: "this is second ",
//             image: Image.asset("images/unnamed.png", width: 350,),
//           ),
//           PageViewModel(
//             title: "first",
//             body: "this is second ",
//             image: Image.asset("", width: 350,),
//           ),
//           PageViewModel(
//             title: "first",
//             body: "this is second ",
//             image: Image.asset("", width: 350,),
//           ),
//
//         ],
//         onDone: (){
//           Navigator.push(context, CupertinoPageRoute(builder: (context) => Page1()));
//         },
//         done: Text("Done"),
//         skip: Text("skip"),
//         dotsDecorator: DotsDecorator(
//           size: Size(10.0, 10.0),
//           color: Colors.green,
//           activeSize: Size(22.0, 10.0),
//           activeShape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(20))
//           )
//         ),
//     );
//   }
// }

//shareprefarance in flutter

// class Homepage extends StatefulWidget {
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   int counter = 0;
//   loadCounter()async{
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     setState(() {
//       counter = pref.getInt("counter")??0;
//     });
//   }
//
//   increment() async{
//     counter++;
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     setState(() {
//       pref.setInt("counter", counter);
//     });
//   }
//
//   @override
//   void initState() {
//     loadCounter();
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center ,
//           children: [
//               Text("you have clicked $counter ", style: TextStyle(fontSize: 30, ),)
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:
//         increment,
//         tooltip: "increment",
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

//input box ba textfield

// class Homepage extends StatefulWidget {
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   final formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key:formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             validator: (value){
//               if(value.isEmpty){
//                 return "enter your name";
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             validator: (value){
//               if(value.isEmpty){
//                 return "enter your name";
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             validator: (value){
//               if(value.isEmpty){
//                 return "enter your name";
//               }
//               return null;
//             },
//           ),
//
//           RaisedButton(onPressed: (){
//             if(formKey.currentState.validate()){
//               return Navigator.push(context, CupertinoPageRoute(builder: (context)=>Page1() ));
//             }
//           })
//         ],
//       ),
//     );
//   }
// }


//admob flutter
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   InterstitialAd myInterstitial;
//   final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//
//     MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//       keywords: <String>['flutterio', 'beautiful apps'],
//       contentUrl: 'https://flutter.io',
//       birthday: DateTime.now(),
//       childDirected: false,
//       designedForFamilies: false,
//       gender: MobileAdGender
//           .male, // or MobileAdGender.female, MobileAdGender.unknown
//       testDevices: <String>[], // Android emulators are considered test devices
//     );
//
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     InterstitialAd myInterstitial = InterstitialAd(
//       // Replace the testAdUnitId with an ad unit id from the AdMob dash.
//       // https://developers.google.com/admob/android/test-ads
//       // https://developers.google.com/admob/ios/test-ads
//       adUnitId: InterstitialAd.testAdUnitId,
//       listener: (MobileAdEvent event) {
//         print("InterstitialAd event is $event");
//       },
//     );
//
//     myInterstitial
//       ..load()
//       ..show(
//         anchorType: AnchorType.bottom,
//         anchorOffset: 0.0,
//         horizontalCenterOffset: 0.0,
//       );
//
//
//     return Scaffold(
//       key: globalKey,
//       drawer: Drawer(),
//       appBar: AppBar(
//         title: Text("hello"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_forward_ios),
//           onPressed: () {
//             globalKey.currentState.openDrawer();
//           },
//         ),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             globalKey.currentState.openDrawer();
//           },
//         ),
//       ),
//     );
//   }
// }


class Homepage extends StatefulWidget {


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Future checkConnectvity() async{
    var connectvityResult = await(Connectivity().checkConnectivity());

    if(connectvityResult == ConnectivityResult.mobile ){
      Fluttertoast.showToast(msg: "connected with mobile");
    }
    if(connectvityResult == ConnectivityResult.wifi ){
      Fluttertoast.showToast(msg: "connected with Wifi");
    }else{
      Fluttertoast.showToast(msg: "Not Connected");
    }
  }
  StreamSubscription subscription;


  @override
  void initState() {
    // TODO: implement initState
    subscription = Connectivity().onConnectivityChanged.listen((event) {checkConnectvity();});

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: OutlineButton(
          onPressed: checkConnectvity,
          child: Text("Check connnectonh;"),
        ),
      ),
    );
  }
}
