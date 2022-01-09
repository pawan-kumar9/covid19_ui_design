//ignore_for_file: prefer_const_constructors,avoid_unnecessary_containers,prefer_const_literals_to_create_immutables,sized_box_for_whitespace,

import 'package:covid19_ui/dropDown.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              height: 330,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                  color: Colors.indigo.shade900),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Covid-19",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      ),
                      DropDownBtn(),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Are you feeling sick?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "If you feel sick with any of the Covid-19 symptoms please call or SMS us immediately for help.",
                    style: TextStyle(
                        color: Colors.white30,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child:
                            buttonWidget(Icons.phone, "Call Now", Colors.red),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: buttonWidget(Icons.chat_bubble, "Send SMS",
                            Colors.blue.shade700),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prevention",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/img1.png"),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/img2.png"),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/img4.png"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          child: Text(
                            "Avoid close contact",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          child: Text(
                            "Clean your hands often",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          child: Text(
                            "Wear a facemask",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple.shade400,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          children: [
                            Image.asset("assets/doctor.png"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Do your own test!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Follow the instructions to \n do your own test.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13.0),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Portfolios',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.bar_chart_sharp),
                    label: 'Price',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book_rounded),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.info),
                    label: 'Card',
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

Widget buttonWidget(IconData icon, String text, Color color) {
  return Container(
    width: 160,
    height: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: color,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
