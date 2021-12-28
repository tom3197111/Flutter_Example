import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key? key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Radio'),
            Row(
              children: [
                Text('男:'),
                Radio(
                  value: 1,
                  onChanged: (int? v) {
                    setState(() {
                      this.sex = v!;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('女:'),
                Radio(
                  value: 2,
                  onChanged: (int? v) {
                    setState(() {
                      this.sex = v!;
                    });
                  },
                  groupValue: this.sex,
                ),
              ],
            ),
            Row(
              children: [
                Text("${this.sex}"),
                Text("${this.sex == 1 ? "男" : "女"}")
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Divider(),
            RadioListTile(
              value: 1,
              onChanged: (int? v) {
                setState(() {
                  this.sex = v!;
                });
              },
              groupValue: this.sex,
              title: Text("標題"),
              subtitle: Text("二級標題"),
              secondary: Icon(Icons.help),
            ),
            RadioListTile(
              value: 2,
              onChanged: (int? v) {
                setState(() {
                  this.sex = v!;
                });
              },
              groupValue: this.sex,
              title: Text("標題"),
              subtitle: Text("二級標題"),
              secondary: Image.network(
                  'https://img.iasui.com/upload/website_attach/osgE6tumoT71Vt+GqFG36vONJEGXJ9pOpuTB6DhdWh7kXR4RsAuV3TgcjFBAiOXAsTwE4WPyU.jpeg'),
            ),
            SizedBox(
              height: 40,
            ),
            Text('開關'),
            //開關
            Switch(
                value: this.flag,
                onChanged: (v) {
                  setState(() {
                    this.flag = v;
                  });
                })
          ],
        ),
      ),
    );
  }
}
