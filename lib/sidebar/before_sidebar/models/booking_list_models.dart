class BookingListModel {
  final String title;
  final String subTitle;
  final String image;

  BookingListModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<BookingListModel> bookingList = <BookingListModel>[
  BookingListModel(
    image: 'assets/images/food_deli/resraurants.png',
    subTitle: 'kazi Deiry, Taiger Pass\nChittagong',
    title: 'Ambrosita Hotel & Restaurant',
  ),
  BookingListModel(
    image: 'assets/images/food_deli/resraurants2.png',
    subTitle: 'Zakir Hossain Rd, \nChittagong',
    title: 'Tava Restaurant',
  ),
  BookingListModel(
    image: 'assets/images/food_deli/resraurants.png',
    subTitle: '6 Surson Road, \nChittagong',
    title: 'Haatkhola',
  ),
  BookingListModel(
    image: 'assets/images/food_deli/resraurants.png',
    subTitle: '9 Surson Road, \nChittagong',
    title: 'Haatkhola',
  ),
  BookingListModel(
    image: 'assets/images/food_deli/resraurants.png',
    subTitle: '7 Surson Road, \nChittagong',
    title: 'Haatkhola',
  ),
  BookingListModel(
    image: 'assets/images/food_deli/resraurants.png',
    subTitle: '8 Surson Road, \nChittagong',
    title: 'Haatkhola',
  ),
];
