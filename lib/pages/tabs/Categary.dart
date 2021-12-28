import 'package:flutter/material.dart';
import '../Form.dart';

class CategaryPage extends StatefulWidget {
  CategaryPage({Key? key}) : super(key: key);

  @override
  _CategaryPageState createState() => _CategaryPageState();
}

// class _CategaryPageState extends State<CategaryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/form');
//             // //路由跳轉
//             // //若沒使用路由組 則由以下方式跳轉
//             // Navigator.of(context).push(MaterialPageRoute(
//             //     //路由傳值
//             //     builder: (context) => FormPage(
//             //           title: '呵呵',
//             //         )));
//           },
//           child: Text('跳轉道表單頁面'),
//         ),
//       ],
//     );
//   }
// }

class _CategaryPageState extends State<CategaryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //length 導航有幾個按鈕
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Row(
              children: [
                Expanded(
                  child: TabBar(
                    //指示器的短模式 預設為長
                    indicatorSize: TabBarIndicatorSize.tab,
                    //改變導航按鈕的指示器選中的顏色
                    indicatorColor: Colors.yellow,
                    //導航按鈕文字的顏色
                    labelColor: Colors.black,
                    //未選中導航按鈕時文字的顏色
                    unselectedLabelColor: Colors.yellow,
                    tabs: [
                      Tab(
                        text: '熱門',
                      ),
                      Tab(
                        text: '推薦',
                      )
                    ],
                  ),
                ),
              ],
            ),
            //配合DefaultTabController 並設定導航按鈕 會依照順序
          ),
          //TabBarView配合 配合DefaultTabController 有配合導航按鈕的順序
          body: TabBarView(
            children: [
              //第一組
              ListView(
                children: [
                  ListTile(
                    title: Text('第一個'),
                  ),
                  ListTile(
                    title: Text('第一個'),
                  ),
                  ListTile(
                    title: Text('第一個'),
                  )
                ],
              ),
              //第二組
              ListView(
                children: [
                  ListTile(
                    title: Text('第一個'),
                  ),
                  ListTile(
                    title: Text('第一個'),
                  ),
                  ListTile(
                    title: Text('第一個'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
