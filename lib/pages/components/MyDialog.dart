import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends Dialog {
  String title;
  String content;

//讀秒關閉 目前三秒
  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      Navigator.pop(context);
      t.cancel(); //取消定時器
    });
  }

  MyDialog({this.title = "", this.content = ""});

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    // TODO: implement build
    return Material(
      //透明 transparency
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("${this.title}"),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                // width: 200,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: (Text(
                  "${this.content}",
                  textAlign: TextAlign.left,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
