import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/procedure_model.dart';

class ProcedureList extends StatefulWidget {
  final List<Procedure> procedures;
  final Function(int) onSelect;
  final int selected;
  const ProcedureList({Key? key, required this.procedures, required this.onSelect, required this.selected})
      : super(key: key);

  @override
  _ProcedureListState createState() => _ProcedureListState();
}

class _ProcedureListState extends State<ProcedureList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.procedures
          .asMap()
          .entries
          .map((e) => _buildProcedure(e.key))
          .toList(),
    );
  }

  Widget _buildProcedure(int index) {
    bool selected = index == widget.selected;
    Procedure procedure = widget.procedures[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: GestureDetector(
        onTap: () => {widget.onSelect(index)},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: selected ? kDarkPink : kPink,
            borderRadius: selected ? kSelectedBorder : kNonSelectedBorder,
            boxShadow: kBoxShadow,
          ),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    procedure.name,
                    style: const TextStyle(
                      color: kDarkBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    procedure.desc,
                    style: const TextStyle(
                      color: kDarkBlue,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )),
              Text(
                "${procedure.price}\$",
                style: const TextStyle(
                  color: kDarkBlue,
                  fontFamily: kMainText,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextSyle {}
