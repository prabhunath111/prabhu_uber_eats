import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_page.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';
import 'package:uber_eats_prabhu/theme/styles.dart';

class SortedRow extends StatelessWidget {
  final menu;
  final title;
  const SortedRow({Key key, this.menu, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: customTitle),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(menu.length, (index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>
                        StoreDetailPage(img: menu[index]['img'])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: size.width,
                              height: 160,
                              child: Image(
                                image: NetworkImage(
                                    menu[index]['img']),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              right: 15,
                              child: SvgPicture.asset(
                                menu[index]['is_liked']
                                    ? 'assets/images/loved_icon.svg'
                                    : 'assets/images/love_icon.svg',
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          menu[index]['name'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "Sponsored",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info,
                              size: 15,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          menu[index]['description'],
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: textFieldColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Icon(
                                  Icons.hourglass_bottom,
                                  color: primary,
                                  size: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: textFieldColor,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  menu[index]['rate'],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: textFieldColor,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      Text(menu[index]
                                      ['rate_number']),
                                      SizedBox(width: 3),
                                      Icon(
                                        Icons.star,
                                        color: yellowStar,
                                        size: 17,
                                      ),
                                      SizedBox(width: 3),
                                      Text(menu[0]['time']),
                                      SizedBox(width: 3),
                                    ],
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
