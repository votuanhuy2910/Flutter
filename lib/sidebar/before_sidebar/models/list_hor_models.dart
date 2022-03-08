class ListHorModel {
  final String image;
  final String title;
  final String subTitle;

  ListHorModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<ListHorModel> listHorData = <ListHorModel>[
  ListHorModel(
    image: 'assets/images/food_deli/arivable_3.png',
    title: 'Chicken Biryani',
    subTitle: 'Ambrrosia Hotel &\nRestaurant',
  ),
  ListHorModel(
    image: 'assets/images/food_deli/arivable_1.png',
    title: 'Sauce Tonkatsu',
    subTitle: 'Handi Restaurant, \nChittagong',
  ),
  ListHorModel(
    image: 'assets/images/food_deli/arivable_2.png',
    title: 'Chicken Katsu',
    subTitle: 'Ambrrosia Hotel &\nRestaurant',
  ),
];
