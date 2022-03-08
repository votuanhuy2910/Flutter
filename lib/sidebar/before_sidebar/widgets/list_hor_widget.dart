import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/models/list_hor_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListHorizantalWidget extends StatelessWidget {
  const ListHorizantalWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.05,
        ),
        child: Row(
          children: List.generate(
            listHorData.length,
            (index) => Container(
              margin: EdgeInsets.only(
                right: size.width * 0.03,
                top: size.height * 0.02,
              ),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset(
                    listHorData[index].image,
                    width: size.width * 0.35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Text(
                          listHorData[index].title,
                          style: TextStyle(
                            fontSize: size.width * 0.045,
                            fontWeight: FontWeight.bold,
                            color: kTitleColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/location_icon.svg'),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            listHorData[index].subTitle,
                            style: TextStyle(
                              fontSize: size.width * 0.03,
                              color: kTextColor,
                            ),
                          ),
                        ],
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
