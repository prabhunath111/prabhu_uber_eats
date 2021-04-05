import 'package:flutter/material.dart';
import 'package:uber_eats_prabhu/theme/colors.dart';

class DeliveryFeeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: black.withOpacity(0.1))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery fee",
              style: TextStyle(
                color: black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (size.width - 70) * 0.8,
                  child: Text(
                    "There aren't enough couriers nearby, so the delivery fee is higher right now",
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ),
                Container(
                  width: (size.width - 70) * 0.2,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: black.withOpacity(0.15)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_circle_up_outlined,
                        color: black.withOpacity(0.4),
                        size: 18,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
