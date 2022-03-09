import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/models/booking_list_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListBooking extends StatelessWidget {
  const ListBooking({
    Key? key,
    required this.size,
    required this.buttonTitle,
    this.onTap,
  }) : super(key: key);

  final Size size;
  final String buttonTitle;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.03,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            bookingList.length,
            (index) => Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      bookingList[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: size.width * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          bookingList[index].title,
                          style: TextStyle(
                            fontSize: size.width * 0.045,
                            fontWeight: FontWeight.bold,
                            color: kTitleColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/location_icon.svg',
                                ),
                                SizedBox(width: size.width * 0.01),
                                Text(
                                  bookingList[index].subTitle,
                                  style: TextStyle(
                                    fontSize: size.width * 0.03,
                                    color: kTextColor,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: onTap,
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: kPrimeryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  buttonTitle,
                                  style: TextStyle(
                                    fontSize: size.width * 0.04,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
