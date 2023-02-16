import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

class InstituteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kDefaultBackgroundColor,
          body: ListView(
            padding: pagePadding(),
            children: [
              DefaultTextStyle(
                style: Theme.of(context).textTheme.headline5!,
                child: Column(
                  children: [
                    Text("Campus Home"),
                    Text(
                      "your next home",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "select type of institute",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "select institute",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      child: Text("Continue"),
                      style:
                          Theme.of(context).outlinedButtonTheme.style?.copyWith(
                                shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
