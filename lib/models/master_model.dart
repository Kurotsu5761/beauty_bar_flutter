import 'time_slot_model.dart';

class Master {
  String name;
  String imageUrl;
  String level;
  TimeSlot timeSlot;

  Master(
      {required this.name,
      required this.imageUrl,
      required this.level,
      required this.timeSlot});
}

List<Master> masters = [
  Master(
      name: "Kate",
      imageUrl: "assets/img/profile_01.jpg",
      level: "junior",
      timeSlot: timeSlot),
  Master(
      name: "Jane",
      imageUrl: "assets/img/profile_02.jpg",
      level: "senior",
      timeSlot: timeSlot),
  Master(
      name: "Sarah",
      imageUrl: "assets/img/profile_03.jpg",
      level: "middle",
      timeSlot: timeSlot),
  Master(
      name: "Michelle",
      imageUrl: "assets/img/profile_04.jpg",
      level: "senior",
      timeSlot: timeSlot),
  Master(
      name: "Joey",
      imageUrl: "assets/img/profile_05.jpg",
      level: "middle",
      timeSlot: timeSlot),
  Master(
      name: "Minfilia",
      imageUrl: "assets/img/profile_06.jpg",
      level: "junior",
      timeSlot: timeSlot),
];
