import '../components/enum.dart';

class PizzaModel {
  final String image;
  final String prise;
  final String time;
  final String title;
  SizePizza sizePizza;

  PizzaModel(
      {required this.image,
      required this.prise,
      required this.time,
      required this.title,
      required this.sizePizza});
}
