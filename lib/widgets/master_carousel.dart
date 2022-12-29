import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/master_model.dart';

class MasterCarousel extends StatefulWidget {
  final List<Master> masters;
  final int selected;
  final Function(int) onSelect;
  const MasterCarousel(
      {Key? key, required this.masters, required this.selected, required this.onSelect})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MasterCarouselState createState() => _MasterCarouselState();
}

class _MasterCarouselState extends State<MasterCarousel> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Widget _buildMaster(int index) {
      bool selected = widget.selected == index;
      Master master = widget.masters[index];
      return GestureDetector(
        onTap: () => {widget.onSelect(index)},
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 80,
            decoration: BoxDecoration(
              color: selected ? kDarkBlue : kBlue,
              borderRadius: selected ? kSelectedBorder : kNonSelectedBorder,
              boxShadow: kBoxShadow,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(master.imageUrl),
                  radius: 25,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  master.name,
                  style: TextStyle(
                    color: selected ? Colors.white : kDarkBlue,
                    fontFamily: kMainText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  master.level,
                  style: TextStyle(
                    color: selected ? kDarkPink : kDarkBlue,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      height: 130,
      padding: const EdgeInsets.only(left: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widget.masters
            .asMap()
            .entries
            .map((e) => _buildMaster(e.key))
            .toList(),
      ),
    );
  }
}
