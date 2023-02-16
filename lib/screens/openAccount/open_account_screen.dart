import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

class OpenAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDefaultBackgroundColor,
        body: SingleChildScrollView(
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.headline5!,
            child: Column(
              children: [
                Text("Campus Home"),
                Text(
                  "Your next home",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                OutlinedButton.icon(
                  icon: Icon(Icons.login_outlined),
                  label: Text("Signup/Login"),
                  style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
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
        ),
      ),
    );
  }
}
