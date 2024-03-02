import 'package:exam/Moody/screen2.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
   HomePage({super.key});

  static const String routeName = "home page";

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          "Moody",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        actionsIconTheme: IconThemeData(size: 25),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: badges.Badge(
                  badgeContent: Text(
                    ' ',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Screen2.routeName);
                      },
                      child: Icon(Icons.notifications_none_outlined)),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },

          backgroundColor: Color(0xffFFFFFF),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF027A48),
          unselectedItemColor: Color(0xFF667085),
          showSelectedLabels: false,
          iconSize: 25,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ""),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Column(
              children: [
                // SizedBox(
                //   height: 24,
                // ),
                Row(children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),
                Row(children: [
                  Text(
                    "How are you feeling today ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ]),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
        
                    children: [
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/images/love.png",height: 60,width: 60,) ,
                      backgroundColor: Color(0xFFE4E7EC),
        
        
                    ),
                    Text("love",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  ]),
                  SizedBox(width: 30,),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/images/cool.png",height: 60,width: 60,) ,
                      backgroundColor: Color(0xFFE4E7EC),
        
        
                    ),
                    Text("Cool",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  ]),
                  SizedBox(width: 30,),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/images/happy.png",height: 60,width: 60,) ,
                      backgroundColor: Color(0xFFE4E7EC),
        
        
                    ),
                    Text("Happy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  ]),
                  SizedBox(width: 30,),
                  Column(children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/images/sad.png",height: 60,width: 60,) ,
                      backgroundColor: Color(0xFFE4E7EC),
        
        
                    ),
                    Text("Sad",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  ]),
                ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text("Feature",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                  InkWell(
                    child: Row(children: [Text("See more",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFF027A48)),),
                    Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color(0xFF027A48))
                    ]),
                  ),
                ]),
        
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/slider.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
        
                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/slider.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
        
                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/slider.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
        
                    ],
        
                    //Slider Container properties
                    options: CarouselOptions(
        
        
                      height: 200.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                SizedBox(height: 30,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exercise",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                      InkWell(
                        child: Row(children: [Text("See more",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFF027A48)),),
                          Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color(0xFF027A48))
                        ]),
                      ),
                    ]),
        
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4/2,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFF9F5FF),
                        child:Row(children: [
                          Image.asset("assets/images/Relaxation.png"),
                          SizedBox(width: 15,),
        
                          Text("Relaxation"),
                        ]),
                      ),
                      Container(
        
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFFDF2FA),
                        child:Row(children: [
                          Image.asset("assets/images/Meditation.png"),
                          SizedBox(width: 15,),
        
                          Text("Meditation"),
                        ]),
                      ),
                      Container(
                        width: 326,
                        height: 156,
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFFFFAF5),
                        child:Row(children: [
                          Image.asset("assets/images/Beathing.png"),
                          SizedBox(width: 15,),
        
                          Text("Beathing"),
                        ]),
                      ),
                      Container(
        
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFF0F9FF),
                        child:Row(children: [
                          Image.asset("assets/images/Yoga.png"),
                          SizedBox(width: 15,),
                          Text("Yoga"),
                        ]),
                      ),
        
        
                    ],
                  ),
                ),
        
        
        
        
        
        
        
        
        
        
              ],
            ),
          ]),
        ),
      ),
    );
  }

}
