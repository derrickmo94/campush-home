import 'package:campass_home/provider/user_profile_provider.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget userprofileCardBuilder(BuildContext context, {List<Widget>? children}) {
  return Card(
    elevation: kDefaultSpacing,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Container(
      padding: EdgeInsets.all(kDefaultSpacing * 2),
      child: Consumer<ProfileProvider>(
        builder: (contex, provider, child) {
          return Form(
            child: Column(
              children: [...?children],
            ),
          );
        },
      ),
    ),
  );
}
