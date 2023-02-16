import 'package:campass_home/api/offline/hostels_api.dart';
import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/screens/appbar.dart/default_appbar.dart';
import 'package:campass_home/screens/home/components/hostel_list_layout.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultBackgroundColor,
      appBar: defaultAppbarBuilder(
        context,
        title: Text("Campus Home"),
        actions: [
          TextButton.icon(
            label: Text(
              "Account",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/user_account");
            },
          )
        ],
      ),
      body: FutureBuilder<List<Hostel>>(
        future: HostelApi.getHostels(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Future Data error:\n ${snapshot.error}\n");
            print("Stack Trace: \n ${snapshot.stackTrace}");

            /*  SnackBar error = SnackBar(
              content: Text("Future Data error: ${snapshot.error}"),
            );
            ScaffoldMessenger.of(context).showSnackBar(error); */
          }

          return snapshot.hasData
              ? HostelListLayout(hostels: snapshot.data)
              : Center(
                  child: CupertinoActivityIndicator(
                    radius: 20.0,
                  ),
                );
        },
      ),
    );
  }
}





/* Most Booked */
              /* Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Most booked hostels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  itemCount: 20,
                  itemBuilder: (context, i) {
                    return Card(
                      child: Container(
                        width: 100,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          /* color: Color(0xff003163), */
                          color: Color.fromARGB(210, 20, 48, 76),
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "lib/images/hostels/hostel3.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Hostel Name",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    "Rooms",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              /* Recommended */
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Recommended hostels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  itemCount: 20,
                  itemBuilder: (context, i) {
                    return Card(
                      child: Container(
                        width: 100,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          /* color: Color(0xff003163), */
                          color: Color.fromARGB(210, 20, 48, 76),
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "lib/images/hostels/hostel3.jpeg"),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Hostel Name",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    "Rooms",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ) */