class RecipeModel {
  String imageUrl;
  String title;
  String subtitle;

  RecipeModel({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  get getImageUrl => this.imageUrl;

  set setImageUrl(imageUrl) => this.imageUrl = imageUrl;

  get getTitle => this.title;

  set setTitle(title) => this.title = title;

  get getSubtitle => this.subtitle;

  set setSubtitle(subtitle) => this.subtitle = subtitle;
}
