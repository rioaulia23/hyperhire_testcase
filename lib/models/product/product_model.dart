class Product {
  final int rank;
  final String image;
  final String title;
  final String description;
  final double rating;
  final String category;
  final int reviewCount;
  final List<String> tag;

  Product(
      {required this.rank,
      required this.image,
      required this.title,
      required this.description,
      required this.rating,
      required this.category,
      required this.reviewCount,
      required this.tag});
}
