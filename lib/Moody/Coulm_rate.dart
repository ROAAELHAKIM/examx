import 'package:exam/Moody/RateModel.dart';
import 'package:flutter/material.dart';

class Coulmn_rate extends StatelessWidget {
   Coulmn_rate({required this.calc,super.key});
  RateModel calc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(calc.image),
            SizedBox(width: 5,),
            Text(
              calc.name,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(children: [
          Text(calc.rate,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600)),
          Text(calc.type,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500)),
        ]),
      ],
    );
  }
}
