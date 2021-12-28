import 'package:flutter/material.dart';

class Loop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Loop'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

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

// class HomeContent extends StatelessWidget {
//   List<Widget> _getData() {
//     //for迴圈
//     // List<Widget> list = [];
//     // for (var i = 0; i < 20; i++) {
//     //   list.add(ListTile(
//     //     title: Text('$i'),
//     //   ));
//     // }
//     // return list;

//     // 類似foreach
//     var tempList = listData.map((value) {
//       return ListTile(
//         leading: Image.network(value['imageUrl']),
//         title: Text(value["title"]),
//         subtitle: Text(value['author']),
//       );
//     });
//     return tempList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       children: this._getData(),
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  List list = [];
  //只要函式名稱與class一樣 就跟PHP的__construct的功能一樣
  //主要先產生一個陣列
  HomeContent() {
    for (var i = 0; i < 20; i++) {
      this.list.add('$i');
    }
  }
  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]['title']),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //此方法類似foreach
    return ListView.builder(
        // 這邊主要以list的長度來決定要取幾筆資料
        itemCount: listData.length,
        //索引與內容在這
        itemBuilder: this._getListData);
  }
}
