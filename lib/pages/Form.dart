import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  //路由傳值
  String title;
  //若無傳值則預設表單
  FormPage({this.title = '表單'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //浮動按鈕 預設圓形
      floatingActionButton: Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.yellow),
        child: FloatingActionButton(
          child: Icon(
            Icons.home,
            color: Colors.black,
          ),
          onPressed: () {
            //返回上一個頁面
            // Navigator.of(context).pop();
          },
          backgroundColor: Colors.red,
        ),
      ),

      //讓按鈕在畫面置中
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('我是表單頁面'),
          ),
          ListTile(
            title: Text('我是表單頁面'),
          ),
          ListTile(
            title: Text('我是表單頁面'),
          )
        ],
      ),
    );
  }
}
