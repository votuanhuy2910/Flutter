import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/detail_restaurant.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/list_booking.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/see_all_widget.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/top_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            TopDetail(size: size),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    DetailRestaurantWidget(size: size),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SeeAllRowWidget(
                            iconColor: kPrimeryColor,
                            seeAllColor: kPrimeryColor,
                            size: size,
                            title: 'List other restaurant',
                            subTitle: 'check the menu at this restaurant',
                          ),
                          const SizedBox(height: 20),
                          const Divider(),
                          ListBooking(
                            size: size,
                            buttonTitle: 'Check',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
