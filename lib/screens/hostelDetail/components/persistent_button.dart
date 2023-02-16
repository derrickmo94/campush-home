import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';

Widget persistentButtonBuilder(
  BuildContext context, {
  required void Function() onPressed,
}) {
  return OutlinedButton(
    style: ButtonStyle(
      //overlayColor: ,
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 10,
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        kDefaultPrimaryColor,
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 20.0),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    child: GFShimmer(
      //duration: const Duration(milliseconds: 3000),
      showGradient: true,
      mainColor: Color.fromRGBO(255, 255, 255, 1),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: <Color>[
          Color.fromRGBO(255, 255, 255, 1),
          Color.fromRGBO(247, 109, 4, 1),

          Color.fromRGBO(255, 255, 255, 1),
          // Color.fromRGBO(33, 132, 97, 1),
        ],
        // stops: [0.8, 0.1, 0.1],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Book your next room "),
          Icon(Icons.chevron_right),
        ],
      ),
    ),
    onPressed: onPressed,
  );
}
