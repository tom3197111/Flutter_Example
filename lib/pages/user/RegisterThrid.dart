import 'package:flutter/material.dart';
import 'package:tabs_esample/pages/tabs.dart';

import '../tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  RegisterThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成註冊'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('輸入密碼完成註冊'),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/registerSceond');
                //因為上一頁是使用替換路由 所以會回到替換路由的頁面
                // Navigator.of(context).pop();

                //不透過路由 直接換頁
                //需import該頁面 在tabs內可以帶參數
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        builder: (context) => new tabs(
                              index: 2,
                            )),
                    (route) => route == null);
              },
              child: Text('確定'),
            )
          ],
        ),
      ),
    );
  }
}
