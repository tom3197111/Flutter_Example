import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Container"),
          ),
          body: const HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //容器內新增一個方塊物件
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.blue, width: 2.0),
            //圓角
            borderRadius: const BorderRadius.all(
              //圓形
              // Radius.circular(150),
              //圓角的半徑
              Radius.circular(20),
            )),
        // padding: const EdgeInsets.all(100),
        //內距
        padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
        //位移 分別是 X Y Z
        // transform: Matrix4.translationValues(100, 0, 0),
        //沿著Z軸做旋轉
        // transform: Matrix4.rotationZ(0.3),
        // 縮放 X Y Z
        transform: Matrix4.diagonal3Values(1.2, 1, 1),
        //文字往底部左側
        // alignment: Alignment.bottomLeft,
        //文字往上方右側
        alignment: Alignment.topRight,
        //方塊的長度
        height: 300.0,
        //方塊的高度
        width: 300.0,
        //設定一個文本
        child: const Text(
          'HI',
          textAlign: TextAlign.left,
          //如果文字太長 溢出第一行 將會顯示省略號
          overflow: TextOverflow.ellipsis,
          //塞滿
          // overflow: TextOverflow.fade,
          //限制最大行數
          maxLines: 2,
          //放大字體2倍
          textScaleFactor: 2,
          //文字的CSS 大小 .. 字體顏色 ..字體粗度 ..字體傾斜
          //..文字中間穿過一條線
          //..將穿過文字中間的那條線選擇顏色
          //..將穿過文字中間的那條線變成虛線
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed),
        ),
      ),
    );
  }
}
