import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key? key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  //結束函數
  //生命週期函數
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  //預設函數
  //生命週期函數
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    // _tabController.addListener(() {
    //   print(_tabController.index);
    // });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabbarcontroller'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: [
            Tab(
              text: '熱銷',
            ),
            Tab(
              text: '推薦',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          Center(
            child: Text('熱銷'),
          ),
          Center(
            child: Text('推薦'),
          )
        ],
      ),
    );
  }
}
