import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/list_booking.dart';
import 'package:demo_tuan2/sidebar/widgets/DetailBooking/detail_screen.dart';
import 'package:flutter/material.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.02,
                ),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimeryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'Booking History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.045,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListBooking(
                      size: size,
                      buttonTitle: "Check",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DetailScreen()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add,
                              size: 30,
                              color: Color(0xff6B7280),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Booking more',
                              style: TextStyle(
                                color: const Color(0xff6B7280),
                                fontSize: size.width * 0.05,
                              ),
                            ),
                          ],
                        ),
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
