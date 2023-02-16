import 'package:campass_home/models/hostel.dart';

import 'core/core_api.dart';

abstract class HostelApi {
  /* static Future<String> loadAsset() async {
    return await rootBundle.loadString(_hostelPath);
  } */

  ///Decodes all data for all avialable hostels and returns the hostel
  ///data as a `List` of `Objects`
  /* static List<T> parseHostels<T>(String json) {
    final parsed = jsonDecode(json).cast<Map<String, dynamic>>();

    final hostelList = parsed
        .map<T>((Map<String, dynamic> json) => Hostel.fromJson(json))
        .toList() as List<T>;

    return hostelList;
  } */

  ///Decodes data of a single hostel and returns the hostel
  /// data as an `object`
  /* static Hostel parseHostel(String json, int id) {
    final parsed = jsonDecode(json).cast<Map<String, dynamic>>();

    final hostelObject = parsed
        .map<Hostel>((Map<String, dynamic> json) => Hostel.fromJson(json))
        .toList()[id] as Hostel;

    return hostelObject;
  } */

  /* ///Fetches a List of Decoded hostels data
  static Future<List<Hostel>> fetchHostels() async {
    var json = await loadAsset();
    //var gh = parseHostels<Hostel>(json);
    return parseHostels<Hostel>(json); //compute(parseHostels, json);
  } */

  ///Returns a list of hostels
  static Future<List<Hostel>> getHostels() async {
    var decoded = await CoreApi.decodeListData(
        jsonFile: "lib/data/hostels.json",
        fromJson: (json) => Hostel.fromJson(json));
    //var data = decoded.where((e) => e.id==universityId)
    return decoded;
  }

  ///Returns a single selected hostel as specified by the [hostelId] parameter
  static Future<Hostel> getHostel({required int hostelId}) async {
    var decoded = await CoreApi.decodeListData(
      jsonFile: "lib/data/hostels.json",
      fromJson: (json) => Hostel.fromJson(json),
    );
    return decoded.singleWhere((e) => e.id == hostelId);
  }
}
