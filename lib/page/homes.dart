import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testConnectAPI();
  }
    Future <void> testConnectAPI() async {
    Uri url = Uri.parse("https://cpsu-test-api.herokuapp.com/quizzes");
    var response = await http.get(url, headers: {'id': '620710663'});

    var json = jsonDecode(response.body);
    if(json['status'] == 'ok'){
      print(response.body);
      print('Connected Successful');
    }
    else{
      print('Connection Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

}
