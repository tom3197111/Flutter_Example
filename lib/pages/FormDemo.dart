import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key? key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  int sex = 1;
  String? username;
  String info = '';
  List hobby = [
    {"checked": true, "title": "吃飯"},
    {"checked": false, "title": "睡覺"},
    {"checked": true, "title": "寫代碼"}
  ];
  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      //橫向
      // tempList.add(Column(
      //   children: [
      //     Text(this.hobby[i]['title'] + ":"),
      //     Checkbox(
      //         value: this.hobby[i]['checked'],
      //         onChanged: (value) {
      //           setState(() {
      //             this.hobby[i]['checked'] = value;
      //           });
      //         })
      //   ],
      // ));

      //目前顯示方式
      tempList.add(Text(this.hobby[i]['title'] + ":"));
      tempList.add(Checkbox(
          value: this.hobby[i]['checked'],
          onChanged: (value) {
            setState(() {
              this.hobby[i]['checked'] = value;
            });
          }));

      //縱向
      // tempList.add(Row(
      //   children: [
      //     Text(this.hobby[i]['title'] + ":"),
      //     Checkbox(
      //         value: this.hobby[i]['checked'],
      //         onChanged: (value) {
      //           setState(() {
      //             this.hobby[i]['checked'] = value;
      //           });
      //         })
      //   ],
      // ));
    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: "輸入用戶信息"),
                      onChanged: (Value) {
                        setState(() {
                          this.username = Value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text("男"),
                      Radio(
                          value: 1,
                          groupValue: this.sex,
                          onChanged: this._sexChanged)
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Text("女"),
                      Radio(
                          value: 2,
                          groupValue: this.sex,
                          onChanged: this._sexChanged)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              //愛好
              Wrap(children: this._getHobby()),
              SizedBox(
                height: 40,
              ),

              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: '描述信息', border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    this.info = value;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                //double.infinity 配合父類型的寬度 父類型多寬 他就多寬
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print(this.sex);
                    print(this.username);
                    print(this.hobby);
                  },
                  child: Text('登陸'),
                ),
              ),

              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
