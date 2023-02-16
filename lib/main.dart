import 'package:flutter/material.dart';
import 'package:campass_home/screens/booking/booking_screen.dart';
import 'package:campass_home/screens/home/home_screen.dart';
import 'package:campass_home/screens/hostelDetail/details_screen.dart';
import 'package:campass_home/screens/hostel/hostels_screen.dart';
import 'package:campass_home/screens/payment/payment_details_screen.dart';
import 'package:campass_home/screens/payment/payment_history_screen.dart';
import 'package:campass_home/screens/room/room_screen.dart';
import 'package:campass_home/screens/userAcount/user_account_screen.dart';
import 'screens/notification/notification_screen.dart';
import 'screens/userProfile/user_profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'utils/constants/routes.dart';

void main() {
  runApp(CampassHome());
}

class CampassHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      routes: {
        kHostelRoute: (context) => HostelsScreen(),
        kHostelDetailRoute: (context) => HostelDetailsScreen(),
        kHostelRoomRoute: (context) => RoomScreen(),
        kUserAccountRoute: (context) => UserAccountScreen(),
        kUserProfileRoute: (context) => UserProfileScreen(),
        kPaymentHistoryRoute: (context) => PaymentHistoryScreen(),
        kPaymentDetailRoute: (context) => PaymentDetailsScreen(),
        kNotificationsRoute: (context) => NotificationScreen(),
        kBookingRoute: (context) => BookingScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: "Campus homes",
      theme: ThemeData(
          textTheme: GoogleFonts.oswaldTextTheme(textTheme).copyWith(
              button: GoogleFonts.oswald(textStyle: textTheme.button)),
          //primarySwatch: Colors.blue,
          primaryColor: kDefaultPrimaryColor,
          //brightness: Brightness.light,
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                GoogleFonts.oswald(),
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                GoogleFonts.oswald(),
              ),
            ),
          )),
      home: Home(),
    );
  }
}
