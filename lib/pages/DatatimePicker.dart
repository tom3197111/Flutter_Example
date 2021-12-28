import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DatatimePickerPage extends StatefulWidget {
  DatatimePickerPage({Key? key}) : super(key: key);

  @override
  _DatatimePickerPageState createState() => _DatatimePickerPageState();
}

class _DatatimePickerPageState extends State<DatatimePickerPage> {
  DateTime _now = DateTime.now();
  void _showDatatimePicker() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2021, 1, 1),
        maxTime: DateTime(2100, 1, 1), onChanged: (date) {
      print('change $date');
    }, onConfirm: (date) {
      print('confirm $date');
      setState(() {
        this._now = date;
      });
    }, currentTime: DateTime.now(), locale: LocaleType.zh);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('DatatimePicker 第三方套件使用'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${formatDate(_now, [yyyy, '年', mm, '月', dd, '日'])}'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showDatatimePicker,
            )
          ],
        ),
      ),
    ));
  }
}
