import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key? key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步-輸入手機號'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('這是註冊的第一步 請輸入你的手機號 然後點擊下一步'),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/registerSceond');
                Navigator.of(context).pushReplacementNamed('/registerSceond');
              },
              child: Text('下一步'),
            )
          ],
        ),
      ),
    );
  }
}
