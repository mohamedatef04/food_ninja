class OnBoardingItemModel {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  final void Function()? onTap;

  OnBoardingItemModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.onTap,
  });
}
