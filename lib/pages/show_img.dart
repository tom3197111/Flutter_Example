import 'package:flutter/material.dart';

class Show_img extends StatelessWidget {
  const Show_img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('show_img'),
        ),
        body: const HomeConent(),
      ),
    );
  }
}

class HomeConent extends StatelessWidget {
  const HomeConent({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Center(
  //       child: Container(
  //     width: 300,
  //     height: 300,
  //     //實現圓形圖片
  //     decoration: BoxDecoration(
  //         color: Colors.red,
  //         borderRadius: BorderRadius.circular(150),
  //         image: const DecorationImage(
  //             image: NetworkImage(
  //                 'http://teachers.wyes.tn.edu.tw/students/no3/s8639/www/images/showGpic.gif'),
  //             fit: BoxFit.cover)),
  //   ));
  // }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      //用圓形的方式處理圖片 並且不失真 不設定height和width以及fit會以圖片的長與寬做決定  若非正方形圖片 則會變成橢圓形
      child: ClipOval(
        child: Image.network(
            'https://miro.medium.com/max/354/1*ifSob78knBe5rME04WHftg.png',
            height: 100,
            width: 100,
            fit: BoxFit.cover),
      ),
    ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Center(
  //       child: Container(
  //     //用圓形的方式處理圖片 並且不失真 不設定height和width以及fit會以圖片的長與寬做決定  若非正方形圖片 則會變成橢圓形
  //     child: ClipOval(
  //       //本地圖片
  //       //需要自行新增images資料夾 並且需要新增 2.0x 3.0x 4.0x 的資料  主要原因是因為每支手機顯示的大小不同
  //       //圖片則是放置在images資料夾內 2.0x 3.0x 4.0x 則是放置縮小過後的
  //       //在pubspec.yaml 尋找 assets: 並且取消備註 並新增所要引用的圖片路徑
  //       child: Image.asset(
  //           'https://miro.medium.com/max/354/1*ifSob78knBe5rME04WHftg.png',
  //           height: 100,
  //           width: 100,
  //           fit: BoxFit.cover),
  //     ),
  //   ));
  // }
}
