// import 'package:flutter/material.dart';
// //引用需要載入的頁面
// import '../pages/tabs.dart';
// import '../pages/Form.dart';
// import '../pages/seach.dart';
// import '../pages/Product.dart';
// import '../pages/Productinfo.dart';

// //路由設置
// final routes = {
//   '/': (context) => tabs(),
//   '/form': (context, {arguments}) => FormPage(),
//   '/product': (context) => ProductPage(),
//   '/productinfo': (context, {arguments}) => Productinfo(arguments: arguments),
//   '/search': (context, {arguments}) => SearchPage(arguments: arguments),
// };

// var onGenerateRoute = (RouteSettings settings) {
//   final name = settings.name;

//   final dynamic PageContrntBuilder = routes[name];

//   if (PageContrntBuilder != null) {
//     if (settings.arguments != null) {
//       final Route route = MaterialPageRoute(
//           builder: (context) =>
//               PageContrntBuilder(context, atguments: settings.arguments));
//       return route;
//     }
//   } else {
//     final Route route =
//         MaterialPageRoute(builder: (context) => PageContrntBuilder(context));
//     return route;
//   }
// };
