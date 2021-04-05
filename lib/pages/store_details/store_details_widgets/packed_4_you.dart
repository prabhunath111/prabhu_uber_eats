import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uber_eats_prabhu/models/home_page_json.dart';

class Packed4YouList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Menu",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Icon(
              LineIcons.search,
              size: 25,
            )
          ],
        ),
        SizedBox(height: 30),
        Text(
          "Packed for You",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Column(
          children: List.generate(packForYou.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                children: [
                  Container(
                    width: (size.width - 30) * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          packForYou[index]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          packForYou[index]['description'],
                          style: TextStyle(height: 1.3),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          packForYou[index]['price'],
                          style: TextStyle(height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Container(
                    height: 110,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Image(
                        image: NetworkImage(
                          packForYou[index]['img'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
