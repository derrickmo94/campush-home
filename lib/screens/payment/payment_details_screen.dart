import 'package:campass_home/screens/appbar.dart/default_appbar.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'components/payment_details_card_info.dart';

class PaymentDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      appBar: defaultAppbarBuilder(
        context,
        title: Text("Payment Details"),
      ),
      body: ListView(
        padding: pagePadding(top: kDefaultSpacing * 2),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: paymentDetailInfoBuilder(
                  context,
                  label: "Payment no:",
                  value: "576545",
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "12/08/2020",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ],
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Hostel ",
            value: "Olympia",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Room no",
            value: "305",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Room type",
            value: "Tripple",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Study year",
            value: "2020",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Semester",
            value: "2",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Payment method",
            value: "Credit Card",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Card no",
            value: "#445600746440545",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Amount paid",
            value: "UGX 400,000",
          ),
          vLineSpace(),
          paymentDetailInfoBuilder(
            context,
            label: "Total paid amount",
            value: "UGX 5,000,000",
          ),
          Row(
            children: [
              Expanded(
                child: paymentDetailInfoBuilder(
                  context,
                  label: "Balance",
                  value: "UGX 1,000,000",
                ),
              ),
              TextButton(
                child: Text(
                  "Pay",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),

      /*      SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultSpacing * 3,
          vertical: kDefaultSpacing * 2,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: paymentDetailInfoBuilder(
                    context,
                    label: "Payment no:",
                    value: "576545",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "12/08/2020",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ],
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Hostel ",
              value: "Olympia",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Room no",
              value: "305",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Room type",
              value: "Tripple",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Study year",
              value: "2020",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Semester",
              value: "2",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Payment method",
              value: "Credit Card",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Card no",
              value: "#445600746440545",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Amount paid",
              value: "UGX 400,000",
            ),
            lineSpace(),
            paymentDetailInfoBuilder(
              context,
              label: "Total paid amount",
              value: "UGX 5,000,000",
            ),
            Row(
              children: [
                Expanded(
                  child: paymentDetailInfoBuilder(
                    context,
                    label: "Balance",
                    value: "UGX 1,000,000",
                  ),
                ),
                TextButton(
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ), */
    );
  }
}
