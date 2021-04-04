import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/prabhunt/AndroidStudioProjects/uber_eats_prabhu/lib/models/home_page_json.dart';
import 'package:uber_eats_prabhu/pages/home/home_widgets/categories_row.dart';
import 'package:uber_eats_prabhu/pages/home/home_widgets/first_menu.dart';
import 'file:///C:/Users/prabhunt/AndroidStudioProjects/uber_eats_prabhu/lib/widgets/custom_divider.dart';
import 'package:uber_eats_prabhu/pages/home/home_widgets/location_row.dart';
import 'package:uber_eats_prabhu/pages/home/home_widgets/sorted_row.dart';
import 'package:uber_eats_prabhu/pages/home/home_widgets/top_row.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';
import 'package:uber_eats_prabhu/widgets/custom_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(menu.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activeMenu = index;
                      });
                    },
                    child: activeMenu == index
                        ? ElasticIn(
                            child: TopMenuRow(menuText: menu[index], containerColor: black, textColor: white),
                          )
                        : TopMenuRow(menuText: menu[index], containerColor: Colors.transparent, textColor: black),
                  ),
                );
              }),
            ),
            SizedBox(height: 15),
            LocationRow(),
            SizedBox(
              height: 15,
            ),
            CustomSliderWidget(
              items: [
                'assets/images/slide_1.jpg',
                'assets/images/slide_2.jpg',
                'assets/images/slide_3.jpg',
              ],
            ),
            CategoriesRow(),
            SizedBox(
              height: 15,
            ),
            // SortedRow(menu: firstMenu, title: 'prabhu'),
            FirstMenu(),
            SizedBox(
              height: 15,
            ),
            CustomDivider(),
            SizedBox(
              height: 20,
            ),
            SortedRow(menu: exploreMenu, title: 'More to explore'),
            SizedBox(
              height: 15,
            ),
            CustomDivider(),
            SizedBox(
              height: 20,
            ),
            SortedRow(menu: popluarNearYou, title: 'Popular Near You'),
          ],
        )
      ],
    );
  }
}
