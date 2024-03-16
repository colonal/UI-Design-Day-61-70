class Events {
  final String image;
  final String title;
  final String location;
  final String time;
  final String date;
  final String price;
  final List<String> friends;
  bool isFavorite;

  Events({
    required this.image,
    required this.title,
    required this.location,
    required this.time,
    required this.date,
    required this.price,
    required this.friends,
    required this.isFavorite,
  });
}
