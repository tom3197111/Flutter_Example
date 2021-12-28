import 'package:flutter/material.dart';

class RegisterSceondPage extends StatefulWidget {
  RegisterSceondPage({Key? key}) : super(key: key);

  @override
  _RegisterSceondPageState createState() => _RegisterSceondPageState();
}

class _RegisterSceondPageState extends State<RegisterSceondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步-驗證碼'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('輸入驗證碼完成註冊'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/registerThrid');
              },
              child: Text('下一步'),
            )
          ],
        ),
      ),
    );
  }
}
