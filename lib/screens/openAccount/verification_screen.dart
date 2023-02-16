import 'package:flutter/material.dart';

class AccountVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: DefaultTextStyle(
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
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "verification code",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Text("Wrong code")
            ],
          ),
        ),
      ),
    );
  }
}
