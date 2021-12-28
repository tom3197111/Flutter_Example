import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('set'),
        ),
        ListTile(
          title: Text('set'),
        ),
        ListTile(
          title: Text('set'),
        ),
        ListTile(
          title: Text('set'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: Text('跳轉道登入頁面'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
          child: Text('跳轉道註冊頁面'),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        Row(
          children: [
            //ButtonBar 自帶對齊 如果只有一行不用用ROW包
            ButtonBar(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                ElevatedButton.icon(
                  icon: Icon(Icons.home),
                  label: Text('圖標按鈕'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerFirst');
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerFirst');
                  },
                  child: Text('1'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      //按鈕增加陰影
                      elevation: MaterialStateProperty.all(10),
                      //設定形狀  目前圓形
                      shape: MaterialStateProperty.all(
                          CircleBorder(side: BorderSide(color: Colors.red)))),
                ),
                MyButton(
                  text: 'hello',
                  pressed: 'hahaha',
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

//自定義按鈕

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  const MyButton({this.text, this.pressed = null});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print(this.pressed);
      },
      icon: Icon(Icons.home),
    );
  }
}
