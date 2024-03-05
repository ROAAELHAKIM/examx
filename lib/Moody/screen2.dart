import 'package:exam/Moody/card.dart';
import 'package:exam/Moody/card_model.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'Coulm_rate.dart';
import 'RateModel.dart';
import 'Screen3.dart';

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
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.navigation), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.insert_chart_outlined_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/profile.png"),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello, Jade",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Ready to workout?",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              ),
                            ]),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Screen3.routeName);
                      },
                      child: Row(
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(

                  padding: EdgeInsets.all(8),
                  height: 82,
                  width: 375,
                  decoration: BoxDecoration(
                    color: Color(0xFFEAECF5),
                    border: Border.all(color: Color(0xFFE4E7EC)),
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Coulmn_rate(calc: RateModel(image: "assets/images/heart.png", name: "Heart Rate", rate: "81", type: "BPM")),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                            thickness: 2, width: 10, color: Color(0xFFD9D9D9)),
                      ),
                      Coulmn_rate(calc: RateModel(image: "assets/images/list.png", name: "To-do", rate: "32,5", type: "%")),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                            thickness: 2, width: 10, color: Color(0xFFD9D9D9)),
                      ),
                      Coulmn_rate(calc: RateModel(image: "assets/images/Group.png", name: "Calo", rate: "1000", type: "Cal")),

                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text("Workout Programs",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: "All Type",
                    ),
                    Tab(
                      text: "Full Body",
                    ),
                    Tab(
                      text: "Upper",
                    ),
                    Tab(
                      text: "Lower",
                    ),
                  ],
                ),
                card(
                  cardModel: CardModel(
                      numOfDays: "7 days",
                      practisName: "Morning Yoga",
                      improve: "Improve mental focus.",
                      image: "assets/images/cont1.png"),
                ),
                card(
                  cardModel: CardModel(
                      numOfDays: "3 days",
                      practisName: "Plank Exercise",
                      improve: "Improve posture and stability.",
                      image: "assets/images/cont2.png",),
                ),
                card(
                  cardModel: CardModel(
                      numOfDays: "5 days",
                      practisName: "Morning Yoga",
                      improve: "Improve mental focus.",
                      image: "assets/images/cont1.png"),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
