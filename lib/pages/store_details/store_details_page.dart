import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/custom_description.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/custom_icon_button.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/custom_time_row.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/custom_title.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/delivery_fee_container.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/info_row.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/packed_4_you.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/people_comment_row.dart';
import 'package:uber_eats_prabhu/pages/store_details/store_details_widgets/people_say.dart';
import 'file:///C:/Users/prabhunt/AndroidStudioProjects/uber_eats_prabhu/lib/models/home_page_json.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';
import 'package:uber_eats_prabhu/theme/styles.dart';

class StoreDetailPage extends StatefulWidget {
  final String img;

  const StoreDetailPage({Key key, this.img}) : super(key: key);

  @override
  _StoreDetailPageState createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: getFooter(),
      body: getBody(),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: black.withOpacity(0.1)))),
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Text(
              '\$15.00 away from a \$0.00 delivery fee.',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: primary),
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 150,
                  child: Image(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(icon: Icons.arrow_back),
                      CustomIconButton(icon: Icons.favorite_border),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomDescription(),
                  SizedBox(height: 15),
                  CustomTimeRow(),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: black.withOpacity(0.3),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Store Info',
                    style: customContent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InfoRow(),
                  SizedBox(
                    height: 15,
                  ),
                  PeopleSayRow(),
                  SizedBox(
                    height: 15,
                  ),
                  PeopleCommentRow(),
                  SizedBox(
                    height: 15,
                  ),
                  DeliveryFeeContainer(),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: black.withOpacity(0.3),
                  ),
                  SizedBox(height: 10),
                  Packed4YouList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
