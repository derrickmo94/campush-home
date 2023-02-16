import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

Widget creditCardBuilder(
  BuildContext context, {
  required bool selectedOption,
}) {
  return AnimatedCrossFade(
    crossFadeState:
        selectedOption ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    duration: Duration(milliseconds: 700),
    firstChild: Column(
      children: [
        TextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: kDefaultSpacing),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: kDefaultPrimaryColor,
                width: 0.5,
              ),
            ),
            hintText: "Card holder name",
            prefixIcon: Icon(Icons.person),
            suffixIcon: IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: () {},
            ),
          ),
        ),
        vLineSpace(),
        TextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: kDefaultSpacing),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: kDefaultPrimaryColor,
                width: 0.5,
              ),
            ),
            hintText: "Card number",
            prefixIcon: Icon(Icons.credit_card_outlined),
            suffixIcon: IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: () {},
            ),
          ),
        ),
        vLineSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: kDefaultSpacing),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                      width: 0.5,
                    ),
                  ),
                  hintText: "Expiry Date",
                  prefixIcon: Icon(Icons.calendar_today),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.edit_outlined),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            hLineSpace(),
            Expanded(
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: kDefaultSpacing),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                      width: 0.5,
                    ),
                  ),
                  hintText: "cvv",
                  prefixIcon: Icon(Icons.security_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.edit_outlined),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    secondChild: TextFormField(
      controller: TextEditingController(text: "0789934060"),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: kDefaultSpacing),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kDefaultPrimaryColor,
            width: 0.5,
          ),
        ),
        hintText: "Phone number",
        prefixIcon: Icon(Icons.phone),
        suffixIcon: IconButton(
          icon: Icon(Icons.edit_outlined),
          onPressed: () {},
        ),
      ),
    ),
  );
}
