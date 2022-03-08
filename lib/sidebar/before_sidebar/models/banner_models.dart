import 'package:flutter/material.dart';

class BannerModel {
  final String title;
  final String imageBanner;
  final String topImage;
  final gradientColor;

  BannerModel({
    required this.title,
    required this.imageBanner,
    required this.topImage,
    required this.gradientColor,
  });
}

List<BannerModel> banner = <BannerModel>[
  BannerModel(
    title: 'Flash Offer',
    imageBanner: "assets/images/food_deli/banner_image1.png",
    topImage: "assets/images/food_deli/image1.png",
    gradientColor: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xffFE9F06),
        Color(0xffFFE184),
      ],
    ),
  ),
  BannerModel(
    title: 'New Arivable',
    imageBanner: "assets/images/food_deli/banner_image2.png",
    topImage: "assets/images/food_deli/image2.png",
    gradientColor: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xff00D756),
        Color(0xff018AC5),
      ],
    ),
  ),
];
