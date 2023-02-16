import 'package:campass_home/screens/booking/components/payment_method_options.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var mobileMoney;
  // late CrossFadeState fadeState;
  @override
  void initState() {
    super.initState();
    mobileMoney = true;
    //fadeState = CrossFadeState.showFirst;
  }

  selectedPayment(bool state) {
    setState(() {
      mobileMoney = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              child: Row(
                children: [
                  Icon(Icons.mobile_friendly_sharp),
                  Text("Mobile Money"),
                ],
              ),
              onPressed: () {
                selectedPayment(true);
              },
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Icon(Icons.credit_card_outlined),
                  Text("Credit card"),
                ],
              ),
              onPressed: () {
                selectedPayment(false);
              },
            )
          ],
        ),
        vLineSpace(),
        creditCardBuilder(context, selectedOption: mobileMoney),
      ],
    );
  }
}
