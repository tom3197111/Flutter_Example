import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Row'),
          ),
          body: LayoutDemo()),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //水平布局
    return Container(
        height: 800.0,
        width: 400.0,
        color: Colors.yellow,
        // Column 是垂直布局 Row 水平布局
        child: Row(
          //水平調整 X軸
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //放大 類似bootstrap
            Expanded(
              flex: 4,
              child: IconContainer(Icons.search, color: Colors.black),
            ),
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.select_all, color: Colors.blue),
          ],
        ));
  }
}

class IconContainer extends StatelessWidget {
  double? size = 32.0;
  Color? color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 100.0,
        width: 100.0,
        color: this.color,
        child: Center(
          child: Icon(
            this.icon,
            size: this.size,
            color: Colors.white,
          ),
        ));
  }
}
