import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/bell_widget.dart';
import 'package:flutter/material.dart';

class TopAccountProfile extends StatelessWidget {
  const TopAccountProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: size.height * 0.1),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.045,
        vertical: size.height * 0.025,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            // offset: const Offset(0, 2),
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              "https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.6435-9/37734278_2056692734648926_3143991974218956800_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=174925&_nc_ohc=SA0ngtPCtDQAX-ML8gO&_nc_ht=scontent.fsgn8-1.fna&oh=00_AT8keqJ-TjBUUIUNJvIymaMvP_8nfYth-yWN40tSMT-Ptw&oe=6244E8EA",
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vo Tuan Huy',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.05,
                ),
              ),
              Text(
                'votuanhuy@gmail.com',
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.03,
                ),
              ),
            ],
          ),
          BellWidget(size: size),
        ],
      ),
    );
  }
}
