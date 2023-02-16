import 'package:campass_home/models/amenity.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget amenityCardBuilder(BuildContext context, {List<Amenity>? amenities}) {
  return Column(
    children: [
      Align(
        alignment: Alignment.topCenter,
        child: Text(
          "Amenities",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      Card(
        elevation: kDefaultSpacing,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultSpacing + 10),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultSpacing),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 14.0,
            alignment: WrapAlignment.spaceAround,
            children: [
              ...amenities!.map((a) {
                return Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(211, 216, 211, 1),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromRGBO(234, 106, 21, 1),
                        Color.fromRGBO(226, 9, 143, 1),
                        Color.fromRGBO(9, 234, 208, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.check, //as IconData, //Amenity Icon
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        a.name, //Amenity name
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.check,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )
                    ],
                  ),
                );
              }).toList()
            ],
          ),
        ),
      ),
    ],
  );
}
