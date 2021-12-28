import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../pages/tabs.dart';
import '../pages/Form.dart';
import '../pages/seach.dart';
import '../pages/Product.dart';
import '../pages/Productinfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSceond.dart';
import '../pages/user/RegisterThrid.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/Readio.dart';
import '../pages/TextField.dart';
import '../pages/CheckBoxDemo.dart';
import '../pages/Readio.dart';
import '../pages/FormDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/DatatimePicker.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';
import '../pages/tabs/http_gte_post.dart';
import '../pages/http.dart';
import '../pages/Card.dart';
import '../pages/Container.dart';
import '../pages/Image.dart';
import '../pages/gridview.dart';
import '../pages/show_img.dart';
import '../pages/Listview.dart';
import '../pages/Loop.dart';
import '../pages/Row.dart';
import '../pages/row_advanced.dart';
import '../pages/stack_postitioned.dart';
import '../pages/wrap.dart';

void main() => runApp(MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('zh', 'TW'),
      const Locale('en', 'US'),
    ],
    //locale 選定要翻譯的語言 可以單獨在元件內增加
    //DatePicker.dart 第59行有範例
    locale: const Locale("zh"),
    //關閉debug 的圖案
    debugShowCheckedModeBanner: false,
    title: '我的樣本',
    routes: {
      '/': (_) => tabs(),
      '/form': (_) => FormPage(),
      '/product': (_) => ProductPage(),
      '/productinfo': (_) => Productinfo(),
      '/search': (_) => SearchPage(),
      '/login': (_) => LoginPage(),
      '/registerFirst': (_) => RegisterFirstPage(),
      '/registerSceond': (_) => RegisterSceondPage(),
      '/registerThrid': (_) => RegisterThirdPage(),
      '/appBarDemo': (_) => AppBarDemo(),
      '/TabBarController': (_) => TabBarControllerPage(),
      '/RadioDemo': (_) => RadioDemo(),
      '/TextField': (_) => TextFieldDemo(),
      '/CheckBoxDemo': (_) => CheckBoxDemo(),
      '/FormDemo': (_) => FormDemoPage(),
      '/DatePicker': (_) => DatePickerDemo(),
      '/DatatimePicker': (_) => DatatimePickerPage(),
      '/Swiper': (_) => SwiperPage(),
      '/Dialog': (_) => DialogDemoPage(),
      '/Http_get_post': (_) => Http_get_post(),
      '/http_data': (_) => http_data(),
      '/Card': (_) => MyCard(),
      '/Container': (_) => MyContainer(),
      '/Image': (_) => MyImage(),
      '/gridview': (_) => Mygridview(),
      '/show_img': (_) => Show_img(),
      '/Listview': (_) => Listview(),
      '/Loop': (_) => Loop(),
      '/Row': (_) => MyRow(),
      '/row_advanced': (_) => row_advanced(),
      '/stack_postitioned': (_) => stack_postitioned(),
      '/wrap': (_) => wrap(),
    }));
