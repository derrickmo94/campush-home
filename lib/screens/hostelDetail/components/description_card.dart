import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget aboutHostelLayoutBuilder() {
  return Container(
    width: double.infinity,
    height: 70.0,
    child: Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            height: 1.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(20, 48, 76, .3),
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(210, 20, 48, 76),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(20, 48, 76, .3),
                  /*  color: Color.fromRGBO(
                        4, 122, 201, .5), */
                  spreadRadius: 7,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "ABOUT",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

//Builds the the description text layout combined with the header layout of about us
Widget descriptionCardBuilder(
  BuildContext context, {
  required String description,
}) {
  return Column(
    children: [
      aboutHostelLayoutBuilder(), //About layout builder
      Card(
        elevation: kDefaultSpacing,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kDefaultSpacing + 10,
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultSpacing + 6),
          child: Text(
            description,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 18.0,
                ),
          ),
        ),
      ),
    ],
  );
}
