import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogDemoPage extends StatefulWidget {
  DialogDemoPage({Key? key}) : super(key: key);

  @override
  _DialogDemoPageState createState() => _DialogDemoPageState();
}

class _DialogDemoPageState extends State<DialogDemoPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息"),
            content: Text("確定要刪除嗎?"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    // print("取消");
                    //選擇取消會回傳Cnacle
                    // var result = 'Cnacle'
                    Navigator.pop(context, 'Cnacle');
                  },
                  child: Text('取消')),
              ElevatedButton(
                  onPressed: () {
                    // print("確定");
                    Navigator.pop(context);
                  },
                  child: Text('確定'))
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('選擇內容'),
            children: [
              Divider(),
              SimpleDialogOption(
                child: Text("選項A"),
                onPressed: () {
                  Navigator.pop(context, '選項A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("選項B"),
                onPressed: () {
                  Navigator.pop(context, '選項B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("選項C"),
                onPressed: () {
                  Navigator.pop(context, '選項C');
                },
              ),
              Divider(),
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text('分享 A'),
                  onTap: () {
                    Navigator.pop(context, "A");
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 B'),
                  onTap: () {
                    Navigator.pop(context, "B");
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 C'),
                  onTap: () {
                    Navigator.pop(context, "C");
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  _toast() async {
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: _alertDialog, child: Text('alert 彈出框')),
            ElevatedButton(onPressed: _simpleDialog, child: Text('select 彈出框')),
            ElevatedButton(
                onPressed: _modelBottomSheet,
                child: Text('ActionSheet 底部彈出框 -Showmodalbottomsheet')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _toast, child: Text('toast-fliuttertoast第三方套件')),
          ],
        ),
      ),
    );
  }
}
