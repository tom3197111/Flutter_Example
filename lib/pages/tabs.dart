import 'package:flutter/material.dart';
import 'tabs/Categary.dart';
import 'tabs/Home.dart';
import 'tabs/setting.dart';
import 'tabs/AppBarDemo2.dart';

class tabs extends StatefulWidget {
  final index;
  tabs({Key? key, this.index = 0}) : super(key: key);

  @override
  _tabsState createState() => _tabsState(this.index);
}

class _tabsState extends State<tabs> {
  //預設為0 此為導航列的順序 0為第一個
  int _currentIndex = 0;
  _tabsState(index) {
    this._currentIndex = index;
  }
  List _pagetList = [HomePage(), CategaryPage(), Setting(), AppBarDemo2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      //透過目前的選擇改變body內的內容
      body: this._pagetList[this._currentIndex],
      //點擊導航列觸發
      bottomNavigationBar: BottomNavigationBar(
        //預設目前選擇幾
        currentIndex: this._currentIndex,
        //取得點擊的值
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        //圖標大小
        iconSize: 36,
        //選中時的顏色
        fixedColor: Colors.red,
        //配置底部導航列表可以有多個按鈕 並且自適應大小
        //若沒設置會導致自動換行 無法切換
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'aaaa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'bbbb',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'CCC',
          ),
        ],
      ),
      //左側抽屜按鈕
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  //UserAccountsDrawerHeader 使用者的名稱 和信箱的形式 類似登入後
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      'luo',
                      style: TextStyle(color: Colors.red),
                    ),
                    accountEmail: Text('tom3197111@gmail.com',
                        style: TextStyle(color: Colors.red)),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'))),
                    //小圖示顯示圖片
                    otherAccountsPictures: [
                      Image.network(
                          'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'),
                      Image.network(
                          'https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png'),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              //CircleAvatar 將圖案變為圓形
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空間"),
            ),
            //底線
            Divider(),
            ListTile(
              //CircleAvatar 將圖案變為圓形
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用戶中心"),
              onTap: () {
                Navigator.of(context).pop(); //隱藏側邊欄
                Navigator.pushNamed(context, '/form');
              },
            ),
            //底線
            Divider(),
            ListTile(
              //CircleAvatar 將圖案變為圓形
              leading: CircleAvatar(child: Icon(Icons.settings)),
              title: Text("設置中心"),
            ),
            //底線
            Divider(),
          ],
        ),
      ),
      //右側抽屜按鈕
      endDrawer: Drawer(
        child: Text('右邊抽屜'),
      ),
    );
  }
}
