class Procedure {
  String name;
  String desc;
  int price;

  Procedure({required this.name, required this.desc, required this.price});
}

List<Procedure> procedures = [
  Procedure(
    name: "Hot oil manicure",
    desc: "Argan oil, classing and modern anicure type",
    price: 24,
  ),
  Procedure(
    name: "Classic manicure",
    desc: "Instrumental technique, massage",
    price: 18,
  ),
  Procedure(
    name: "Soak-off gel manicure",
    desc: "LUXIO polish, instrumental technique",
    price: 18,
  ),
];
