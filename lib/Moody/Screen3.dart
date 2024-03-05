import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  static const String routeName = "Screen3";

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int index=0;
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;
  bool ch4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logoScreen3.png"),
            Text(
              "AliceCare",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },

          backgroundColor: Color(0xffFFFFFF),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF6941C6),
          unselectedItemColor: Color(0xFF667085),
          showSelectedLabels: true,
          iconSize: 25,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined),
                label: "Insights"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: "Chat"),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              prefixIcon: Icon(Icons.search),
              hintText: "Articles, Video, Audio and More,...",
              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ChoiceChip(
                  label: Text(
                    "Discover",
                    style: TextStyle(
                        color: Color(0xFF667085),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  selected: ch1,
                  backgroundColor: Color(0xFFE4E7EC),
                  selectedColor: Color(0xFFD6BBFB),
                  shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFE4E7EC)),
                      borderRadius:  BorderRadius.circular(20)),
                  onSelected: (newBoolValue) {
                    setState(() {
                      ch1 = newBoolValue;
                    });
                  },
                ),
              ),
              Expanded(
                child: ChoiceChip(
                  label: Text(
                    "News",
                    style: TextStyle(
                        color: Color(0xFF667085),                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  selected: ch2,
                  backgroundColor: Color(0xFFE4E7EC),
                  selectedColor: Color(0xFFD6BBFB),

                  shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFE4E7EC)),
                      borderRadius:  BorderRadius.circular(20)),
                  onSelected: (newBoolValue) {
                    setState(() {
                      ch2 = newBoolValue;
                    });
                  },
                ),
              ),
              Expanded(
                child: ChoiceChip(
                  label: Text(
                    "Most Viewed",
                    style: TextStyle(
                        color: Color(0xFF667085),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  selected: ch3,
                  selectedColor: Color(0xFFD6BBFB),
                  backgroundColor: Color(0xFFE4E7EC),
                  labelStyle: TextStyle(
                      color: Color(0xFF667085),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFE4E7EC)),
                      borderRadius:  BorderRadius.circular(20)),
                  onSelected: (newBoolValue) {
                    setState(() {
                      ch3 = newBoolValue;
                    });
                  },
                ),
              ),
              Expanded(
                child: ChoiceChip(
                  label: Text(
                    "Saved",
                    style: TextStyle(

                        color: Color(0xFF667085),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  selected: ch4,
                  backgroundColor: Color(0xFFE4E7EC),
                  selectedColor: Color(0xFFD6BBFB),
                  shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFE4E7EC)),
                      borderRadius:  BorderRadius.circular(20)),
                  onSelected: (newBoolValue) {
                    setState(() {
                      ch4 = newBoolValue;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot topics",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                InkWell(
                  child: Row(children: [Text("See more",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFF05925DC)),),
                    Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color(0xFF5925DC))
                  ]),
                ),
              ]),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Image.asset("assets/images/hug.png"),
              SizedBox(width: 10,),
              Image.asset("assets/images/hat.png"),
            ],),
          ),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Get Tips",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ]),
          SizedBox(height: 15,),
         Container(

           decoration: BoxDecoration(
             border: Border.all(color: Color(0xFFE4E7EC)),
             color: Color(0xFFF2F4F7),
             borderRadius: BorderRadius.circular(10)
           ),
           child: Row(children: [
             Column(children: [
               Image.asset("assets/images/doctor.png")
             ],),
             SizedBox(width: 20,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 10,),
               Text("Connect with doctors & \nget suggestions",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600 ),),
               Text("Connect now and get \nexpert insights ",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400 ),),
                 SizedBox(height: 10,),
               ElevatedButton(onPressed: () {
               },
                   style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),backgroundColor: Color(0xFF7F56D9)),
                   child: Text("View detail",style:TextStyle(fontSize: 14,fontWeight:FontWeight.w600,color: Colors.white) ,))
           
             ],),
           ],),
         ),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cycle Phases and Period",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                InkWell(
                  child: Row(children: [Text("See more",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFF05925DC)),),
                    Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color(0xFF5925DC))
                  ]),
                ),
              ]),


        ]),
      ),
    );
  }
}
