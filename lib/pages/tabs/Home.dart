import 'package:flutter/material.dart';
import '../components/MyDialog.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('範例介面'),
      ),
      //Wrap 按照寬高自動換行
      body: Wrap(
        spacing: 8.0, //chip之間的間隙大小
        runSpacing: 4.0, //行之間的間隙大小
        children: [
          ElevatedButton(
            onPressed: () {
              //路由組跳轉 需先設置路由組
              Navigator.pushNamed(context, '/search');
              //路由跳轉
              //若沒使用路由組 則由以下方式跳轉
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            child: Text('跳轉道搜索頁面'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            },
            child: Text('跳轉道商品頁面'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/appBarDemo');
            },
            child: Text('跳轉道AppBar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/TabBarController');
            },
            child: Text('跳轉道TabBarControllerPage'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/TextField');
            },
            child: Text('表單頁面'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/RadioDemo');
            },
            child: Text('RadioDemo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/CheckBoxDemo');
            },
            child: Text('CheckBoxDemo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/RadioDemo');
            },
            child: Text('RadioDemo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/FormDemo');
            },
            child: Text('FormDemo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/DatePicker');
            },
            child: Text('日期'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/DatatimePicker');
            },
            child: Text('第三方日期套件的使用'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Swiper');
            },
            child: Text('輪播圖'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Dialog');
            },
            child: Text('alert 彈出視窗'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return MyDialog(title: "關於我們", content: "內容");
                  });
            },
            child: Text('自定義Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Http_get_post');
            },
            child: Text('http GET POST'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Card');
            },
            child: Text('Card'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Container');
            },
            child: Text('Container'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Image');
            },
            child: Text('Image'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/gridview');
            },
            child: Text('gridview'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/show_img');
            },
            child: Text('基本IMG'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Listview');
            },
            child: Text('Listview'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Loop');
            },
            child: Text('Loop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Row');
            },
            child: Text('Row'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/row_advanced');
            },
            child: Text('row_advanced'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stack_postitioned');
            },
            child: Text('stack_postitioned'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wrap');
            },
            child: Text('wrap'),
          ),
        ],
      ),
    );
  }
}
