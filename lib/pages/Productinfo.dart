import 'package:flutter/material.dart';

class Productinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, int> str =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    return Container(
      child: Text(str['asePage'].toString()),
    );
  }
}
