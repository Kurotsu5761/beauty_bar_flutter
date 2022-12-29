import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/procedure_model.dart';
import '../models/time_slot_model.dart';
import '../widgets/button.dart';
import '../widgets/comment_box.dart';
import '../widgets/titlebar.dart';

class BookingScreen extends StatefulWidget {
  final Procedure procedure;
  final TimeSlot timeSlot;

  const BookingScreen({super.key, required this.timeSlot, required this.procedure});

  @override
  // ignore: library_private_types_in_public_api
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _selectedDay = 0;
  int _selectedTime = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleBar(
            title: "${widget.procedure.name} - ${widget.procedure.price}\$",
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
                      SizedBox(
                        height: 70,
                        child: ListView(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          scrollDirection: Axis.horizontal,
                          children: widget.timeSlot.days
                              .asMap()
                              .entries
                              .map((e) => _buildDayWidget(e.key))
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Available Slot",
                        style: kTitleStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        children: widget
                            .timeSlot.days[_selectedDay].availableSlot
                            .asMap()
                            .entries
                            .map((e) => _buildTimeWidget(e.key))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Additional comments", style: kTitleStyle),
                      const SizedBox(
                        height: 20,
                      ),
                      const CommentBox(),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                        text: "Done",
                        onPress: () => {},
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

  Widget _buildDayWidget(int index) {
    bool selected = _selectedDay == index;
    Day day = widget.timeSlot.days[index];
    return GestureDetector(
      onTap: () => {
        setState(() => {_selectedDay = index})
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          width: 40,
          decoration: selected
              ? const BoxDecoration(
                  color: kBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: kBoxShadow)
              : const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                day.day.toString(),
                style: const TextStyle(
                  fontFamily: kMainText,
                  fontWeight: FontWeight.w600,
                  color: kDarkBlue,
                ),
              ),
              Text(
                day.date,
                style: const TextStyle(
                  color: kDarkBlue,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeWidget(int index) {
    bool selected = _selectedTime == index;
    String time = widget.timeSlot.days[_selectedDay].availableSlot[index];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: InkWell(
        onTap: () => {
          setState(() => {_selectedTime = index})
        },
        child: Container(
          width: 90,
          height: 35,
          decoration: BoxDecoration(
            color: selected ? kDarkPink : kPink,
            borderRadius: selected ? kSelectedBorder : kNonSelectedBorder,
            boxShadow: kBoxShadow,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                time,
                textAlign: TextAlign.center,
                style: const TextStyle(color: kDarkBlue, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
