class TimeSlot {
  List<Day> days;
  TimeSlot({required this.days});
}

class Day {
  int day;
  String date;
  List<String> availableSlot;

  Day({
    required this.day,
    required this.date,
    required this.availableSlot,
  });
}

TimeSlot timeSlot = TimeSlot(days: days);

List<Day> days = [
  Day(availableSlot: slots, day: 16, date: "mon"),
  Day(availableSlot: slots, day: 17, date: "tue"),
  Day(availableSlot: slots, day: 18, date: "wed"),
  Day(availableSlot: slots, day: 19, date: "thu"),
  Day(availableSlot: slots, day: 20, date: "fri"),
  Day(availableSlot: slots, day: 21, date: "sat"),
  Day(availableSlot: slots, day: 22, date: "sun"),
  Day(availableSlot: slots, day: 23, date: "mon"),
  Day(availableSlot: slots, day: 24, date: "tue"),
  Day(availableSlot: slots, day: 25, date: "wed"),
  Day(availableSlot: slots, day: 26, date: "thu"),
  Day(availableSlot: slots, day: 27, date: "fro"),
];

List<String> slots = [
  "10:00 am",
  "11:00 pm",
  " 2:00 pm",
  " 4:30 pm",
  " 5:30 pm",
  " 7:00 pm",
  " 8:00 pm",
  " 9:00 pm"
];
