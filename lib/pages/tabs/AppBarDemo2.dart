import 'package:flutter/material.dart';

class AppBarDemo2 extends StatelessWidget {
  const AppBarDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //DefaultTabController 放置在標體的導航列
    return DefaultTabController(
        //length 導航有幾個按鈕
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Row(
              children: [
                Expanded(
                  child: TabBar(
                    //導航列如果是多個按鈕可以左右滑動
                    isScrollable: true,
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
                      ),
                      Tab(
                        text: '熱門',
                      ),
                      Tab(
                        text: '推薦',
                      ),
                      Tab(
                        text: '熱門',
                      ),
                      Tab(
                        text: '推薦',
                      ),
                      Tab(
                        text: '熱門',
                      ),
                      Tab(
                        text: '推薦',
                      ),
                      Tab(
                        text: '熱門',
                      ),
                    ],
                  ),
                ),
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
              ),
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
              //第3組
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
              //第4組
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
              //第5組
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
            ],
          ),
        ));
  }
}
