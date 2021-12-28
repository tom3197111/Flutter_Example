import 'package:flutter/material.dart';

class row_advanced extends StatelessWidget {
  const row_advanced({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('row_advanced'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text('hello'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                    "https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png",
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: [
                        Container(
                          height: 85,
                          child: Image.network(
                            "https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 85,
                          child: Image.network(
                            "https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ))),
          ],
        )
      ],
    );
  }
}
