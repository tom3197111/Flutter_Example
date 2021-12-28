import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key? key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                //value 為true或false
                value: this.flag,
                onChanged: (bool? v) {
                  setState(() {
                    this.flag = v!;
                  });
                },
                //activeColor 選中變色
                activeColor: Colors.red,
              )
            ],
          ),
          Row(
            children: [Text(this.flag ? "選中" : "未選中")],
          ),
          SizedBox(
            height: 40,
          ),
          CheckboxListTile(
            value: this.flag,
            onChanged: (bool? v) {
              setState(() {
                this.flag = v!;
              });
            },
            title: Text("2標體"),
            subtitle: Text("二級標題"),
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (bool? v) {
              setState(() {
                this.flag = v!;
              });
            },
            title: Text("3標體"),
            subtitle: Text("二級標題"),
            //在checkbox前方增加icon
            secondary: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
