import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class PeopleSayRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          LineIcons.comment,
          size: 15,
          color: primary,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "People say...",
          style: TextStyle(
              fontSize: 14, color: black.withOpacity(0.5)),
        )
      ],
    );
  }
}
