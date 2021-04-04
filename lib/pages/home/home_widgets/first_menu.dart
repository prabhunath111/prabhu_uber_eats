import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_eats_prabhu/json/home_page_json.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_page.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class FirstMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) =>
              StoreDetailPage(img: firstMenu[0]['img'])));
        },
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 160,
                    child: Image(
                      image: NetworkImage(firstMenu[0]['img']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      right: 15,
                      child: SvgPicture.asset(
                        firstMenu[0]['is_liked']
                            ? 'assets/images/loved_icon.svg'
                            : 'assets/images/love_icon.svg',
                        width: 20,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                firstMenu[0]['name'],
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                firstMenu[0]['description'],
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
                        firstMenu[0]['time'],
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
                      child: Text(
                        firstMenu[0]['delivery_fee'],
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
