import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({super.key});
  static const String routeName = "card";


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEAECF5),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: Color(0xFFFCFCFD)),
                    child: Text("7 days"),),
                  SizedBox(height: 10,),
                  Text("Morning Yoga",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 4,),
                  Text("Improve mental focus.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10,),
                  Row(children: [Image.asset("assets/images/clock.png"),
                    SizedBox(width: 5,),
                  Text("30 mins",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                  ],),
                ],
              ),
              Column(children: [Image.asset("assets/images/stresh.png")],),
            ],
          ),
        ),

      ),
    );
  }
}
