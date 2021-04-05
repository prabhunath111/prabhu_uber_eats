import 'package:flutter/material.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class CustomTimeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: textFieldColor,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: EdgeInsets.all(3),
            child: Icon(
              Icons.hourglass_bottom,
              color: primary,
              size: 16,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "40 - 50 Min",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(3)),
          child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Text("4.7 "),
                  SizedBox(width: 3),
                  Icon(
                    Icons.star,
                    color: yellowStar,
                    size: 17,
                  ),
                  SizedBox(width: 3),
                  Text("16"),
                  SizedBox(width: 3),
                ],
              )),
        ),
      ],
    );
  }
}
