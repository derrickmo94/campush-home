import 'package:animations/animations.dart';
import 'package:campass_home/models/room.dart';
import 'package:campass_home/screens/booking/components/payment_method.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  final String hostelName;
  final Room room;
  const BookingPage({
    Key? key,
    required this.hostelName,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 20,
          ),
      child: Container(
        child: Form(
          child: ListView(
            padding: pagePadding(),
            children: [
              TextFormField(
                initialValue: "$hostelName Hostel",
                controller: null,
                keyboardType: TextInputType.text,
                readOnly: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: kDefaultSpacing,
                    horizontal: kDefaultSpacing * 5,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                      width: 0.5,
                    ),
                  ),
                  hintText: "Hostel name",
                ),
              ),
              vLineSpace(),
              TextFormField(
                initialValue: "${room.roomNumber}",
                controller: null,
                keyboardType: TextInputType.number,
                readOnly: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: kDefaultSpacing,
                    horizontal: kDefaultSpacing * 5,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                      width: 0.5,
                    ),
                  ),
                  hintText: "Room no",
                ),
              ),
              vLineSpace(),
              TextFormField(
                initialValue: " ${room.roomType}",
                controller: null,
                keyboardType: TextInputType.text,
                readOnly: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: kDefaultSpacing,
                    horizontal: kDefaultSpacing * 5,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kDefaultPrimaryColor,
                      width: 0.5,
                    ),
                  ),
                  hintText: "Room type",
                ),
              ),
              vLineSpace(),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: "${DateTime.now().toLocal()}",
                      controller: null,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: "Stydy year",
                        contentPadding: EdgeInsets.symmetric(
                          vertical: kDefaultSpacing,
                          horizontal: kDefaultSpacing * 5,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kDefaultPrimaryColor,
                            width: 0.5,
                          ),
                        ),
                        prefixIcon: Icon(Icons.calendar_today),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit_outlined),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Amount",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kDefaultPrimaryColor,
                                      fontSize: 20,
                                      wordSpacing: 5,
                                    ),
                          ),
                          TextSpan(
                            text: "UGX ",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kDefaultPrimaryColor,
                                      fontSize: 20,
                                      wordSpacing: 5,
                                    ),
                          ),
                          TextSpan(
                            text: " ${room.roomAmount}",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kDefaultPrimaryColor,
                                      fontSize: 20,
                                      wordSpacing: 10,
                                    ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
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
                        hintText: "Select amount to pay",
                        prefixIcon: Icon(Icons.payment),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit_outlined),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              PaymentMethod(),
              vLineSpace(space: 25),
              ElevatedButton(
                child: Center(
                  child: Text(
                    "Authorize Payment",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith(
                    (states) => EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                  ),
                  shape: MaterialStateProperty.resolveWith(
                    (states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => kDefaultPrimaryColor),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
