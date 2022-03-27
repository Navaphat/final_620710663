import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  int totalIncorrect = 0;
  HomePage({Key? key, required this.totalIncorrect}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
              style: TextStyle(fontSize: 50.0),
              child: Text(widget.totalIncorrect.toString()),
          )
        ],
      ),
    );
  }

}
