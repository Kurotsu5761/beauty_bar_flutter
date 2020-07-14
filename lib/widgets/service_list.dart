import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/service_model.dart';
import '../screens/service_screen.dart';

class ServiceList extends StatelessWidget {
  Widget _buildService(int index, BuildContext context) {
    Service service = services[index];

    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ServiceScreen(
              service: service,
            ),
          )),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  services[index].serviceImage,
                  color: index % 2 == 0 ? kDarkPink : kDarkBlue,
                ),
              ),
              decoration: BoxDecoration(
                  color: index % 2 == 0 ? kPink : kBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: kBoxShadow),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  services[index].name,
                  style: TextStyle(
                    fontFamily: kMainText,
                    color: kDarkBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  services[index].desc,
                  style: TextStyle(
                      color: kDarkBlue,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        color: Colors.white,
        child: Column(
          children: services
              .asMap()
              .entries
              .map(
                (MapEntry map) => _buildService(
                  map.key,
                  context,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
