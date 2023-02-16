import 'package:flutter/material.dart';
import 'components/user_account_tile.dart';
import 'package:campass_home/utils/constants/routes.dart';

class UserAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: ListView(
        children: [
          userAccountTileBuilder(
            context,
            leading: Icons.person,
            label: "Account",
            trailing: Icons.chevron_right,
            onTap: () {
              Navigator.of(context).pushNamed(
                kUserProfileRoute,
              );
            },
          ),
          userAccountTileBuilder(
            context,
            leading: Icons.payment,
            label: "Payment",
            trailing: Icons.chevron_right,
            onTap: () {
              Navigator.of(context).pushNamed(
                kPaymentHistoryRoute,
              );
            },
          ),
          userAccountTileBuilder(
            context,
            leading: Icons.notifications,
            label: "Notification",
            trailing: Icons.chevron_right,
            onTap: () {
              Navigator.of(context).pushNamed(
                kNotificationsRoute,
              );
            },
          ),
          userAccountTileBuilder(
            context,
            leading: Icons.share,
            label: "Share",
            onTap: () {},
          ),
          userAccountTileBuilder(
            context,
            leading: Icons.logout,
            label: "Logout",
            onTap: () {},
          ),
          Center(
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.headline6!,
              child: Column(
                children: [
                  Text("Campus Home"),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "your next home",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "All Rights Reserved",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.copyright_outlined),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
