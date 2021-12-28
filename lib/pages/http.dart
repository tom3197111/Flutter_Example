import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class http_data extends StatefulWidget {
  http_data({Key? key}) : super(key: key);

  @override
  _http_dataState createState() => _http_dataState();
}

class _http_dataState extends State<http_data> {
  List _list = [];
  String _msg = '';
  @override
  void initState() {
    super.initState();
    this._getData();
    // this._postData();
  }

//請求數據
  _getData() async {
    var apiUrl = Uri.parse("網址");
    var response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      setState(() {
        this._list = json.decode(response.body)["result"];
      });
    } else {
      print('Response status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('page/http'),
        ),
        body: this._list.length > 0
            ? ListView.builder(
                itemCount: this._list.length,
                itemBuilder: (context, index) {
                  return ListTile(title: this._list[index]["title"]);
                },
              )
            : Text(""));
  }
}
