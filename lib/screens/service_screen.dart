import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/service_model.dart';
import '../widgets/button.dart';
import '../widgets/master_carousel.dart';
import '../widgets/procedure_list.dart';
import '../widgets/titlebar.dart';
import 'booking_screen.dart';

class ServiceScreen extends StatefulWidget {
  final Service service;

  const ServiceScreen({super.key, required this.service});

  @override
  // ignore: library_private_types_in_public_api
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  var _selectedMaster = 0;
  var _selectedProcedure = 0;

  void _selectProcedure(int index) {
    setState(() {
      _selectedProcedure = index;
    });
  }

  void _selectMaster(int index) {
    setState(() {
      _selectedMaster = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleBar(
            title: widget.service.name, key: null,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Choose Your Master",
                        style: kTitleStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MasterCarousel(
                        masters: widget.service.masters,
                        onSelect: _selectMaster,
                        selected: _selectedMaster,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Choose your procedure",
                        style: kTitleStyle,
                      ),
                      ProcedureList(
                        procedures: widget.service.procedures,
                        onSelect: _selectProcedure,
                        selected: _selectedProcedure,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                        text: "Next",
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingScreen(
                              procedure:
                                  widget.service.procedures[_selectedProcedure],
                              timeSlot: widget
                                  .service.masters[_selectedMaster].timeSlot,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
