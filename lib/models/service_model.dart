import 'master_model.dart';
import 'procedure_model.dart';

class Service {
  String name;
  String desc;
  String serviceImage;
  List<Master> masters;
  List<Procedure> procedures;

  Service(
      {required this.name,
      required this.desc,
      required this.serviceImage,
      required this.procedures,
      required this.masters});
}

List<Service> services = [
  Service(
    name: "Haircut",
    desc: "Over 10 techniques",
    serviceImage: "assets/img/hair.svg",
    procedures: procedures,
    masters: masters,
  ),
  Service(
    name: "Coloring",
    desc: "More than 15 techniques",
    serviceImage: "assets/img/hair-dye-kit.svg",
    procedures: procedures,
    masters: masters,
  ),
  Service(
    name: "Manicure",
    desc: "Over 5 processing methods",
    serviceImage: "assets/img/nail.svg",
    procedures: procedures,
    masters: masters,
  ),
  Service(
    name: "Pedicure",
    desc: "About 7 practices",
    serviceImage: "assets/img/nail-clippers.svg",
    procedures: procedures,
    masters: masters,
  ),
];
