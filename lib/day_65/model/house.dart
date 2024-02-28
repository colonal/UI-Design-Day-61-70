import 'user.dart';

class HouseModel {
  final String image;
  final String title;
  final String location;
  final String prise;
  final String delay;
  final String rooms;
  final String baths;
  final String livingRoom;
  final UserModel user;
  bool save;

  HouseModel({
    required this.image,
    required this.title,
    required this.location,
    required this.prise,
    required this.delay,
    required this.rooms,
    required this.baths,
    required this.livingRoom,
    required this.save,
    required this.user,
  });
}
