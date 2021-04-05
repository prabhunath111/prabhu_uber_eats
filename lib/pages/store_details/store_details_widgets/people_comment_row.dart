import 'package:flutter/material.dart';
import 'package:uber_eats_prabhu/models/home_page_json.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class PeopleCommentRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(peopleFeedback.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 15.0, right: 15),
                      child: Text(
                        peopleFeedback[index],
                        style: TextStyle(
                            fontSize: 14,
                            color: primary,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            );
          })),
    );
  }
}
