class OnboardingModel {
  final String imageAsset;
  final String title;
  final String description;

  OnboardingModel(
      {required this.imageAsset,
      required this.title,
      required this.description});
}

List<OnboardingModel> onboardong = <OnboardingModel>[
  OnboardingModel(
    description:
        '''You don't have to goo far to find a good restaurant, have provided all the restaurants that is near you''',
    imageAsset: 'assets/images/food_deli/ill1.png',
    title: 'Nearby restaurants',
  ),
  OnboardingModel(
    description:
        '''Now eat well, don't leave the house. You can choose your favorite food only with one click''',
    imageAsset: 'assets/images/food_deli/ill2.png',
    title: 'Select the Favorites Menu',
  ),
  OnboardingModel(
    description:
        '''You can eat at expensive restaurants with affordable price''',
    imageAsset: 'assets/images/food_deli/ill3.png',
    title: 'Good food at cheap price',
  ),
];
