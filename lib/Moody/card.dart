import 'package:exam/Moody/card_model.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  final CardModel cardModel;

   const card({required this.cardModel,super.key});
  static const String routeName = "card";

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 174,

        decoration: BoxDecoration(
          color: Color(0xFFEAECF5),
          border: Border.all(color: Color(0xFFE4E7EC)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(

                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE4E7EC)),
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFCFCFD)),
                    child: Text(widget.cardModel.numOfDays),),
                  
                  SizedBox(height: 10,),
                  Text(widget.cardModel.practisName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 4,),
                  Text(widget.cardModel.improve,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15,),
                  Row(children: [Image.asset("assets/images/clock.png"),
                    SizedBox(width: 5,),
                  Text("30 mins",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                  ],),
                ],
              ),
              Column(children: [Image.asset(widget.cardModel.image,width: 110,)],),
            ],
          ),
        ),

      ),
    );
  }
}
