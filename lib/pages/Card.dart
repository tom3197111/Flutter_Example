import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: LayoytDemo(),
      ),
    );
  }
}

// class LayoytDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       width: 200,
//       //AspectRatio 主要是設定子元素的寬高比
//       child: AspectRatio(
//         //高度 /寬度
//         //會因為父元素的的寬度做變化
//         //例如100 高2.0 寬1.0
//         //會顯示高50 寬100
//         //計算方式為 父元素的尺寸 除於設定的寬高比
//         aspectRatio: 2.0 / 1.0,
//         child: Container(
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }

// class LayoytDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //承上 如果沒設定父元素 則預設將整個畫面當作父元素
//     return AspectRatio(
//       aspectRatio: 3.0 / 1.0,
//       child: Container(
//         color: Colors.red,
//       ),
//     );
//   }
// }

// class LayoytDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //承上 如果沒設定父元素 則預設將整個畫面當作父元素
//     return ListView(
//       children: [
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               ListTile(
//                 title: Text(
//                   'name',
//                   style: TextStyle(fontSize: 28),
//                 ),
//                 subtitle: Text('職業 '),
//               ),
//               ListTile(
//                 title: Text(
//                   'tle:097988888',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//               ListTile(
//                 title: Text(
//                   '地址',
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               ListTile(
//                 title: Text(
//                   'aname',
//                   style: TextStyle(fontSize: 28),
//                 ),
//                 subtitle: Text('職業 '),
//               ),
//               ListTile(
//                 title: Text(
//                   'tle:097988888',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//               ListTile(
//                 title: Text(
//                   '地址',
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class LayoytDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //承上 如果沒設定父元素 則預設將整個畫面當作父元素
//     return ListView(
//       children: [
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               AspectRatio(
//                 aspectRatio: 20 / 9,
//                 child: Image.network(
//                   'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               ListTile(
//                 //ClipOval 將圖片裁切為圓形
//                 leading: ClipOval(
//                   child: Image.network(
//                     'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
//                     fit: BoxFit.cover,
//                     height: 60,
//                     width: 60,
//                   ),
//                 ),
//                 title: Text('aaaa'),
//                 subtitle: Text('asas'),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class LayoytDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //承上 如果沒設定父元素 則預設將整個畫面當作父元素
//     return ListView(
//       children: [
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               AspectRatio(
//                 aspectRatio: 20 / 9,
//                 child: Image.network(
//                   'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               ListTile(
//                 //CircleAvatar 將圖片裁切為圓形
//                 //CircleAvatar 可以自適應尺寸
//                 //ClipOval則不行需要另外設置
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'),
//                 ),
//                 title: Text('aaaa'),
//                 subtitle: Text('asas'),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

List listData = [
  {
    "imageUrl": "https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png",
    "title": "jack",
    "des":
        "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello",
  }
];

class LayoytDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //承上 如果沒設定父元素 則預設將整個畫面當作父元素
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                //CircleAvatar 將圖片裁切為圓形
                //CircleAvatar 可以自適應尺寸
                //ClipOval則不行需要另外設置
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(
                  value["des"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
