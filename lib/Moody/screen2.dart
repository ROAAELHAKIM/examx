import 'package:exam/Moody/card.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  static const String routeName = "Screen2";

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
        initialIndex: 1,
        length: 4,
     child: Scaffold(
       bottomNavigationBar: BottomNavigationBar(
           currentIndex: index,
           onTap: (value) {
             index = value;
             setState(() {});
           },

           backgroundColor: Color(0xffFFFFFF),
           type: BottomNavigationBarType.fixed,
           selectedItemColor: Color(0xFF363F72),
           unselectedItemColor: Color(0xFF667085),
           showSelectedLabels: false,
           iconSize: 25,
           showUnselectedLabels: false,
           items: [
             BottomNavigationBarItem(
                 icon: Icon(Icons.home_filled),
                 label: ""),
             BottomNavigationBarItem(
                 icon: Icon(Icons.navigation),
                 label: ""),
             BottomNavigationBarItem(
                 icon: Icon(Icons.insert_chart_outlined_outlined),
                 label: ""),
             BottomNavigationBarItem(
                 icon: Icon(Icons.person),
                 label: ""),
           ]),


       body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                    radius: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Hello, Jade",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Ready to workout?",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ]),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: badges.Badge(
                          badgeContent: Text(
                            ' ',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(Icons.notifications_none_outlined),
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
            
              Container(
                color: Color(0xFFF8F9FC),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/heart.png"),
                            Text(
                              "Heart Rate",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text("81",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Text("BPM",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                        ]),
                      ],
                    ),
            
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                          thickness: 2, width: 50,color: Color(0xFFD9D9D9)),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/list.png"),
                            Text(
                              "To-do",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text("32,5",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Text("%",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                          thickness: 2, width: 50,color: Color(0xFFD9D9D9)),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Group.png"),
                            Text(
                              "Calo",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text("1000",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Text("Cal",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
            
              Row(children: [Text("Workout Programs" ,style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600))],),
              SizedBox(height: 25,),
              TabBar(
                tabs: <Widget>[
                  Tab(
                   text: "All Type",
                  ),
                  Tab(
                    text: "Full Body",                ),
                  Tab(
                    text: "Upper",                ),
                  Tab(
                    text: "Lower",                ),
                ],
              ),
              card(),
              card(),
              card(),
            ]),
          ),
        ),
      ),
    ),);
  }
}
