import 'dart:convert';

import 'package:interview_task_app/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataModel{



  Future<void> setData(Task data) async {


    Map<String, dynamic> json = data.toJson();
    String jsonTask = jsonEncode(json);



    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String? dataTask = sharedPreferences.get("STORAGE_KEY");


    sharedPreferences.setString(
        "STORAGE_KEY", jsonTask);

  }

  Future<void> getDtaList() async {

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  }



}