import 'package:flutter/material.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 10,
      decoration: BoxDecoration(color: textFieldColor),
    );
  }
}
