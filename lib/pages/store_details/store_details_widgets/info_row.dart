import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class InfoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: (size.width) * 0.8,
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/pin_icon.svg',
                width: 15,
                color: black.withOpacity(0.5),
              ),
              SizedBox(width: 8),
              Text(
                "38 Park Row Frnt 4, New York, NY 1003",
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
        ),
        Expanded(
            child: Text(
              "More Info",
              style: TextStyle(
                  fontSize: 14,
                  color: primary,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
