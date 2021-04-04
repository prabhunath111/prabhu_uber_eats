import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';
import 'package:uber_eats_prabhu/theme/styles.dart';

class LocationRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          height: 45,
          width: size.width - 70,
          decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/pin_icon.svg',
                      width: 20,
                    ),
                    SizedBox(width: 5),
                    Text('New York', style: customContent)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/time_icon.svg',
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: SvgPicture.asset('assets/images/filter_icon.svg'),
          ),
        )
      ],
    );
  }
}
