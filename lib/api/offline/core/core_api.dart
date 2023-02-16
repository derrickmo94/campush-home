import 'dart:convert';
import 'package:flutter/services.dart';

abstract class CoreApi {
  static bool _onLine = false;

  static bool get onlineStatus => _onLine;
  CoreApi._() {
    throw new UnsupportedError("CoreApi can't be instatiated");
  }

  static set onLineStatus(bool status) {
    _onLine = status;
  }

  static Future<String> loadAsset(String dataPath) async {
    return await rootBundle.loadString(dataPath);
  }

  ///Decodes all json data and returns a list of the respective model object
  ///as a `future` as dictated by the [fromJson] closure of the respective
  ///model class
  static Future<List<T>> decodeListData<T>({
    required String jsonFile,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    var json = await loadAsset(jsonFile);

    List<Map<String, dynamic>> decoded =
        jsonDecode(json).cast<Map<String, dynamic>>();
    //print("DECODED LIST: ${decoded.toString()} \n");

    var objectList =
        decoded.map<T>((Map<String, dynamic> json) => fromJson(json)).toList();
    //print("OBJECT LIST: ${objectList.toString()} \n");
    return objectList;
  }

  ///Decodes data of a single hostel and returns the hostel
  /// data as an `object`
  /*  static T decodeObjectDatas<T>(String json, model, int id) {
    final decoded = jsonDecode(json).cast<Map<String, dynamic>>();

    final object = decoded
        .map<T>((Map<String, dynamic> json) => Room.fromJson(json))
        .toList()[id] as T;

    return object;
  }
 */

}
