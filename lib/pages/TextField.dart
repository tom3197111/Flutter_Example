import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _username = new TextEditingController(); //初始化的時候賦值
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //給予預設值
    this._username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表單頁面(TextField)'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child:
                  //空的輸入欄位
                  TextField(
                decoration: InputDecoration(hintText: "請輸入用戶名"),
                controller: _username,
                //輸入值會觸發onChanged
                onChanged: (value) {
                  this._username.text = value;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //double.infinity 寬度會配合容器
              width: double.infinity,
              child: ElevatedButton(
                child: Text('登陸'),
                onPressed: () {
                  print(this._username.text);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child:
                  //輸入欄位有提示文字
                  TextField(
                decoration: InputDecoration(
                    //OutlineInputBorder 在輸入欄位增加四個邊的框線
                    hintText: "請輸入搜尋的內容",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextField(
                //輸入框變為可以輸入兩行文字
                maxLines: 2,
                decoration: InputDecoration(
                    //OutlineInputBorder 在輸入欄位增加四個邊的框線
                    hintText: "請輸入搜尋的內容",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextField(
                //密碼框 輸入密碼時會變成*字號
                obscureText: true,
                decoration: InputDecoration(
                    //OutlineInputBorder 在輸入欄位增加四個邊的框線
                    hintText: "請輸入搜尋的內容",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    //OutlineInputBorder 在輸入欄位增加四個邊的框線
                    hintText: "請輸入搜尋的內容",
                    border: OutlineInputBorder(),
                    labelText: "欄位名稱"),
              ),
            ),
            Expanded(
                child: TextField(
              //在輸入框前增加icon圖案
              decoration: InputDecoration(
                  hintText: "請輸入搜尋的內容", icon: Icon(Icons.people)),
            ))
          ],
        ),
      ),
    );
  }
}
