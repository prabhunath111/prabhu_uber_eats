import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_eats_prabhu/pages/account_page.dart';
import 'package:uber_eats_prabhu/pages/grocery_page.dart';
import 'file:///C:/Users/prabhunt/AndroidStudioProjects/uber_eats_prabhu/lib/pages/home/home_page.dart';
import 'package:uber_eats_prabhu/pages/search_page.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

import 'orders_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      SearchPage(),
      GroceryPage(),
      OrdersPage(),
      AccountPage(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      "assets/images/home_icon.svg",
      "assets/images/search_icon.svg",
      "assets/images/grocery_icon.svg",
      "assets/images/order_icon.svg",
      "assets/images/account_icon.svg"
    ];
    List textItems = ["Home", "Search", "Grocery", "Orders", "Account"];
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: black.withOpacity(0.06),
          ),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedTab(index);
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    bottomItems[index],
                    width: 22,
                    color: pageIndex == index ? black : Colors.grey,
                  ),
                  SizedBox(height: 5),
                  Text(
                    textItems[index],
                    style: TextStyle(
                        fontSize: 10,
                        color: pageIndex == index
                            ? black
                            : black.withOpacity(0.5)),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
