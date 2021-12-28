import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('DEMO')),
      body: const HomeContent(),
    ));
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //垂直列表
//     return ListView(
//       padding: EdgeInsets.all(10),
//       children: [
//         ListTile(
//           //後方插入圖片
//           trailing: Image.network(
//               'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'),
//           //前方插入圖標 此為自帶的
//           // leading: Icon(Icons.ac_unit_sharp),
//           //前方圖標 自定義
//           leading: Image.network(
//               'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'),
//           title: Text(
//             '1',
//             style: TextStyle(fontSize: 108),
//           ),
//           subtitle: Text('1'),
//         ),
//         ListTile(
//           title: Text('2'),
//           subtitle: Text(
//             'aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2aaaaaa2',
//             maxLines: 1,
//           ),
//         ),
//         ListTile(
//           title: Text('3'),
//           subtitle: Text('3'),
//         ),
//         ListTile(
//           title: Text('4'),
//           subtitle: Text('4'),
//         ),
//       ],
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //垂直列表
    return ListView(
      //加上此行 會變成水平(左右)
      //沒加則是 平行(上下)
      // scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 180,
          height: 180,
          color: Colors.blue,
        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.deepOrange,
        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.red,
        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.blue,
        ),
        Container(
          width: 180,
          height: 180,
          color: Colors.deepOrange,
        ),
      ],
    );
  }
}
