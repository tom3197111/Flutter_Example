import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image'),
        ),
        body: const HomeConent(),
      ),
    );
  }
}

class HomeConent extends StatelessWidget {
  const HomeConent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      width: 600,
      height: 800,
      decoration: const BoxDecoration(color: Colors.red),
      child: Image.network(
        'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
        //靠左上
        // alignment: Alignment.topLeft,
        //color與colorBlendMode 使用機會不大 主要是讓圖片跟設定的color做混色處理
        // color: Colors.yellow,
        // colorBlendMode: BlendMode.luminosity,
        //圖片充滿容器大小 不變形
        // fit: BoxFit.cover,
        //圖片橫向充滿容器大小 長的部分會被裁切
        // fit: BoxFit.fitWidth,
        //Y方向重複生成圖填滿整個容器多的部分會被裁切
        repeat: ImageRepeat.repeat,
      ),
    ));
  }
}
