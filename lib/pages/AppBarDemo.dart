import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //DefaultTabController 放置在標體的導航列
    return DefaultTabController(
        //length 導航有幾個按鈕
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //讓標題文字置中
            centerTitle: true,
            title: Text('AppBarDemoPage'),
            //背景顏色
            // backgroundColor: Colors.red,
            //新增一個漢堡按鈕
            //leading 會將回上一頁的按鈕替換掉
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {},
            // ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
            //配合DefaultTabController 並設定導航按鈕 會依照順序
            bottom: TabBar(
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
