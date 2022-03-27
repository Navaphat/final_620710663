import 'dart:convert';

import 'package:final_620710663/models/Item.dart';
import 'package:final_620710663/models/api_result.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'data.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _LoadItem();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

  Future <void> _LoadItem() async {
      Uri url = Uri.parse("https://cpsu-test-api.herokuapp.com/quizzes");
      var response = await http.get(url, headers: {'id': '620710663'});

      var json = jsonDecode(response.body);
      var apiResult = ApiResult.fromJson(json);

      setState(() {
        Data.list = apiResult.data.map<Item>((item) => Item.fromJson(item)).toList();
      });

  }
}
