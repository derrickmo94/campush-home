import 'package:campass_home/models/hostel.dart';
import 'package:campass_home/utils/constants/uiConstants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:extended_image/extended_image.dart';

class HostelCard extends StatelessWidget {
  final Hostel hostel;
  // final int hostelIndex;
  final VoidCallback onTap;

  HostelCard({
    required this.hostel,
    //required this.hostelIndex,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    //var hostel = hostelData as Hostel;
    return Shimmer(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultSpacing * 2)),
        child: InkWell(
          //highlightColor: Colors.red,
          //splashColor: Colors.yellow,
          borderRadius: BorderRadius.all(
            Radius.circular(kDefaultSpacing * 2),
          ),
          child: SizedBox(
            width: 100,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Hero(
                    tag: "${hostel.id}",
                    child: ExtendedImage.asset(
                      hostel.imageUrl,
                      enableLoadState: true,
                      fit: BoxFit.fill,
                      // enableMemoryCache: true,
                      width: double.infinity,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
                  decoration: BoxDecoration(
                    /* color: Color(0xff003163), */
                    color: Color.fromARGB(210, 20, 48, 76),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "${hostel.name}",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        "${hostel.rooms} Rooms",
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
          onTap: onTap,
        ),
      ),
    );
  }
}
