import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/models/booking_list_models.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/banner_widget.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/list_booking.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/list_hor_widget.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/see_all_widget.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/top_widget_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          TopWidgetHomePage(size: size),
          Expanded(
            flex: 4,
            child: SizedBox(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    BannerWidget(size: size),
                    SeeAllRowWidget(
                      size: size,
                      title: 'Today New Arivable',
                      subTitle: 'Best of the today food list update',
                    ),
                    ListHorizantalWidget(size: size),
                    SeeAllRowWidget(
                      size: size,
                      title: 'Booking Restaurant',
                      subTitle: 'Check your city Near by Restaurant',
                    ),
                    ListBooking(
                      size: size,
                      buttonTitle: 'Book',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
