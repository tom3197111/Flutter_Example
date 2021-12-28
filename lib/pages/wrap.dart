import 'package:flutter/material.dart';

class wrap extends StatelessWidget {
  const wrap({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DEOM'),
        ),
        body: LayoytDemo(),
      ),
    );
  }
}

// class LayoytDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build.
//     //流布局
//     return Wrap(
//       //在按鈕之間增加間距 X
//       spacing: 10,
//       //在按鈕之間增加間距 Y
//       runSpacing: 10,
//       children: [
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//         MyButton('第3季'),
//       ],
//     );
//   }
// }

class LayoytDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build.
    //流布局
    return Container(
      height: 600,
      width: 600,
      color: Colors.yellow,
      child: Wrap(
        //按鈕呈左邊直列排列
        direction: Axis.vertical,
        spacing: 10,
        runSpacing: 10,
        children: [
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
          MyButton('第3季'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {},
        child: Text(this.text),
        style: ButtonStyle(
            // 按鈕背景顏色
            backgroundColor: MaterialStateProperty.all(Colors.red),
            //按鈕字體顏色
            foregroundColor: MaterialStateProperty.all(Colors.black)));
  }
}
