import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key? key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "https://miro.medium.com/max/1352/1*XEgA1TTwXa5AvAdw40GFow.png"},
    {"url": "https://photo.16pic.com/00/52/02/16pic_5202783_b.jpg"},
    {
      "url":
          "https://i.beauty321.com/816x/https://il.beauty321.com/gallery/articleIMG/AL_40297.jpg?t=20210514120257"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SwiperPage"),
        ),
        body: Column(
          children: [
            Container(
                // height: 150,
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.network(
                        imgList[index]["url"],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: 3,
                    //分頁器 圓點
                    pagination: new SwiperPagination(),
                    //新增左右的箭頭
                    control: new SwiperControl(),
                    loop: true,
                    autoplay: true,
                  ),
                ))
          ],
        ));
  }
}
