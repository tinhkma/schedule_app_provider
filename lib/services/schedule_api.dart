import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:schedule_provider/configs/config.dart';
import 'package:schedule_provider/models/profile_raw.dart';
import '../models/schedule_dho.dart';
import 'api.dart';

class ScheduleApi implements Api {

  String postToJson(ProfileRaw data){
    final dyn = data.toJson();
    return json.encode(dyn);
  }

  @override
  Future<ScheduleDho> getScheduleDho(String username, String password) async {
    ScheduleDho scheduleDho = ScheduleDho();
    try {
      var profileRaw = ProfileRaw(username: username, password: password);
      var url = Uri.parse('$BASE_URL/$PATH');
      final response = await http.post(
        url,
        body: postToJson(profileRaw),);
      if (response.statusCode == 200) {
        final item = json.decode(response.body);
        scheduleDho = ScheduleDho.fromJson(item);
        print("xxxxxxxx Call api success ${scheduleDho.message} ${scheduleDho.data?.studentInfo?.displayName}");
      } else {
        print("xxxxxxxx Data not found");
        Fluttertoast.showToast(msg: "Data not found", backgroundColor: Colors.redAccent, toastLength: Toast.LENGTH_SHORT);
      }
    } finally {
      print("xxxxxxxx Call api error");
    }
    return scheduleDho;
  }
}
