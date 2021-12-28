import 'package:flutter/material.dart';

class Mygridview extends StatelessWidget {
  const Mygridview({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gridview',
      home: Scaffold(
          appBar: AppBar(
            title: Text('gridview'),
          ),
          body: LayoutDemo()),
    );
  }
}

//網格布局
// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return GridView.count(
//橫向布局 每2筆換行一次
//       crossAxisCount: 2,
//       children: [
//         Text('data'),
//         Text('data'),
//         Text('data'),
//         Text('data'),
//         Text('data'),
//         Text('data')
//       ],
//     );
//   }
// }

List listData = [
  {
    "title": "aaa",
    "author": "bbb",
    "imageUrl": 'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
  },
  {
    "title": "C",
    "author": "bbb",
    "imageUrl": 'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
  },
  {
    "title": "aaa",
    "author": "bbSb",
    "imageUrl": 'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
  },
  {
    "title": "aaa",
    "author": "DA",
    "imageUrl": 'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
  },
  {
    "title": "aasda",
    "author": "DEE",
    "imageUrl": 'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png',
  }
];

class LayoutDemo extends StatelessWidget {
  // List<Widget> _getListData() {
  // List<Widget> list = [];

  // for (var i = 0; i < 20; i++) {
  //   list.add(Container(
  //     alignment: Alignment.center,
  //     child: Text(
  //       '$i',
  //       style: TextStyle(color: Colors.red, fontSize: 20),
  //     ),
  //     color: Colors.blue,
  //   ));
  // }
  // return list;

  // var tempList = listData.map((value) {
  //   return Container(
  //     alignment: Alignment.center,
  //     child: Column(
  //       children: [
  //         Image.network(value['imageUrl']),
  //         //SizedBox 主要是增加物件之間的間距
  //         SizedBox(
  //           height: 3,
  //         ),
  //         Text(
  //           value['title'],
  //           textAlign: TextAlign.center,
  //           style: TextStyle(fontSize: 20),
  //         )
  //       ],
  //     ),
  //     decoration: BoxDecoration(
  //         border: Border.all(
  //       color: Colors.red,
  //     )),
  //   );
  // });
  // return tempList.toList();

  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: [
          Image.network(listData[index]['imageUrl']),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      //若使用builder來loop資料 需要使用下面這條函式才能增加表格特效
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        //幾筆並排
        crossAxisCount: 3,
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
    // (

    // //左右(水平)邊的間距
    // crossAxisSpacing: 10,
    // //上下(垂直)的間距
    // mainAxisSpacing: 10,
    // //四周的間距
    // padding: EdgeInsets.all(1),
    // //寬度和高度的比例
    // childAspectRatio: 0.9,
    // //每次輸出兩筆
    // crossAxisCount: 2,
    // children: this._getListData(),
    // );
  }
}
