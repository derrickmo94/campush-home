import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget paymentDetailInfoBuilder(
  BuildContext context, {
  String? label,
  required value,
}) {
  return DefaultTextStyle(
    style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            label != null ? label : "",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: kDefaultPrimaryColor,
              ),
        ),
      ],
    ),
  );
}
