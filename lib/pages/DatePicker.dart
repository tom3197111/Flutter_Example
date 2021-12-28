import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

//需要安裝套件
//https://pub.dev/packages/date_format/install
//在dependencies:
//增加 date_format: ^2.0.4
//若套件沒有安裝
//記得DOS輸入以下指令
//flutter packages get

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key? key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  //現在的時間
  var now = DateTime.now();
  DateTime _now = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);
  @override
  void initState() {
    super.initState();
    print(now);
    //轉換時間戳
    print(now.millisecondsSinceEpoch);
    //時間戳轉換成日期
    print(DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch));
    //此行必須安裝套件
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));
  }
  // _showDatePicker() {
  //   showDatePicker(
  //           context: context,
  //           //預設時間
  //           initialDate: this.now,
  //           //起始時間
  //           firstDate: DateTime(1980),
  //           //結束時間
  //           lastDate: DateTime(2100))
  //       //then()表示成功後要執行的動作
  //       .then((value) => print(value));
  // }

  //async 為異步執行 await 會等到async執行完畢後才執行
  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      //預設時間
      initialDate: _now,
      //起始時間
      firstDate: DateTime(1980),
      //結束時間
      lastDate: DateTime(2100),
      locale: const Locale("zh"),
    );
    print(result);
    if (result == null) {
      return;
    }
    setState(() {
      this._now = result;
    });
  }

  _showTimePicker() async {
    //initialTime 初始化時間
    var result = await showTimePicker(context: context, initialTime: _nowTime);
    if (result == null) {
      return;
    }
    setState(() {
      this._nowTime = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePickerDemo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //InkWell類似button 但是它本身沒有任何顯示的效果 主要是給予元件button的功能
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${formatDate(_now, [yyyy, '年', mm, '月', dd, '日'])}'),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: _showDatePicker,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${this._nowTime.format(context)}'),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: _showTimePicker,
          ),
        ],
      ),
    );
  }
}
