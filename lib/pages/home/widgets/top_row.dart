import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  final menuText;
  final containerColor;
  final textColor;
  const TopRow({Key key, this.menuText, this.containerColor, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.only(
            left: 15, right: 15, bottom: 8, top: 8),
        child: Row(
          children: [
            Text(
              menuText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
