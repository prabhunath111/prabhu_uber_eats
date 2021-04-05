import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width - 30,
          child: Text(
            "Cafe - Coffee & Tea - Breakfast and Brunch - Bakery \$",
            style: TextStyle(fontSize: 14, height: 1.3),
          ),
        ),
      ],
    );
  }
}
