import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget textFormFieldBuilder(
  BuildContext context, {
  required bool editable,
  required String? hint,
  TextInputType? inputType = TextInputType.text,
  required IconData? prefixIcon,
  required void Function()? onEditTap,
}) {
  //import 'package:flutter/material.dart';
  return Container(
    child: TextFormField(
      readOnly: editable,
      //focusNode: FocusNode(canRequestFocus: true),
      controller: TextEditingController(),
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(vertical: kDefaultSpacing),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kDefaultPrimaryColor,
            width: 0.5,
          ),
        ),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: IconButton(
          icon: Icon(Icons.edit_outlined),
          onPressed: onEditTap,
        ),
      ),
    ),
  );
}
