import 'package:flutter/material.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class CustomIconButton extends StatelessWidget {
  final icon;

  const CustomIconButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: white, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              icon,
              size: 18,
            ),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}
