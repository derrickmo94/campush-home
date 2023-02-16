import 'package:campass_home/screens/appbar.dart/default_appbar.dart';
import 'package:campass_home/utils/constants/routes.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'components/payment_history_body.dart';

class PaymentHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      appBar: defaultAppbarBuilder(
        context,
        title: Text("Payment History"),
      ),
      body: ListView.builder(
        padding: pagePadding(),
        itemCount: 20,
        itemBuilder: (context, i) {
          return Card(
            elevation: kDefaultSpacing,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                kDefaultSpacing * 2,
              ),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(
                kDefaultSpacing * 2,
              ),
              splashColor: kDefaultBackgroundColor,
              focusColor: kDefaultBackgroundColor,
              child: paymentHistoryCardBodyBuilder(context),
              onTap: () {
                Navigator.pushNamed(context, kPaymentDetailRoute);
              },
            ),
          );
        },
      ),
    );
  }
}
