import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Http_get_post extends StatefulWidget {
  Http_get_post({Key? key}) : super(key: key);

  @override
  _Http_get_postState createState() => _Http_get_postState();
}

class _Http_get_postState extends State<Http_get_post> {
  List _list = [];
  //要使用JSON需引入
// import 'dart:convert';
//安裝http套件
// http: ^0.13.4
// import 'package:http/http.dart';
  String _msg = '';
  @override
  void initState() {
    super.initState();
    // Map userInfo = {"username": "張三", "age": 20};
    // var a = json.encode(userInfo); //map類型轉換成json

    // String username = '{"usermane":"張三","age":"李四"}';
    // Map u = json.decode(username); //jaon轉換成map
    // print(u["usermane"]);
    this._getData();
    this._postData();
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
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    setState(() {
      this._msg = json.decode(response.body)['msg'];
    });
  }

//提交數據
  _postData() async {
    var apiUrl = Uri.parse("網址");
    var response = await http.post(apiUrl, body: {"usermane": "張三", "age": 10});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http_get_post'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(this._msg),
            ElevatedButton(
              onPressed: () {
                _getData();
              },
              child: Text('get'),
            ),
            ElevatedButton(
              onPressed: () {
                _postData();
              },
              child: Text('post'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/http_data');
              },
              child: Text('DataList'),
            ),
          ],
        ),
      ),
    );
  }
}
