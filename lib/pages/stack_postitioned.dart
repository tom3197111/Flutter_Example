import 'package:flutter/material.dart';

class stack_postitioned extends StatelessWidget {
  const stack_postitioned({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack_postitioned'),
        ),
        body: LaryoutDomo(),
      ),
    );
  }
}

class LaryoutDomo extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   //Stack 會把元素重疊再一起
  //   return Center(
  //       child: Stack(
  //     //Alignment 可以用Alignment(1,1)來表示
  //     //例如Alignment(-1,1)為左下
  //     //例如Alignment(1,1)為右下
  //     //1左和下 -1 右和上 可以配合小數變成比例例如 0.3
  //     alignment: Alignment.center,
  //     children: [
  //       Container(
  //         height: 400,
  //         width: 300,
  //         color: Colors.red,
  //       ),
  //       Text(
  //         'data',
  //         style: TextStyle(fontSize: 40, color: Colors.white),
  //       )
  //     ],
  //   ));
  // }

  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   //Stack 會把元素重疊再一起
  //   return Center(
  //     child: Container(
  //       height: 400,
  //       width: 300,
  //       color: Colors.red,
  //       child: Stack(
  //         // alignment: Alignment.center,
  //         children: [
  //           Align(
  //             //     //Alignment 可以用Alignment(1,1)來表示
  //             //     //例如Alignment(-1,1)為左下
  //             //     //例如Alignment(1,1)為右下
  //             //     //1左和下 -1 右和上 可以配合小數變成比例例如 0.3
  //             alignment: Alignment.topLeft,
  //             child: Icon(
  //               Icons.home,
  //               size: 40,
  //               color: Colors.blue,
  //             ),
  //           ),
  //           Align(
  //             alignment: Alignment.topRight,
  //             child: Icon(
  //               Icons.home,
  //               size: 40,
  //               color: Colors.white,
  //             ),
  //           ),
  //           Align(
  //             alignment: Alignment.bottomLeft,
  //             child: Icon(
  //               Icons.home,
  //               size: 40,
  //               color: Colors.black,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    // TODO: implement build
    //Stack 會把元素重疊再一起
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Positioned(
              //     //Alignment 可以用Alignment(1,1)來表示
              //     //例如Alignment(-1,1)為左下
              //     //例如Alignment(1,1)為右下
              //     //1左和下 -1 右和上 可以配合小數變成比例例如 0.3
              left: 10,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.blue,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 0,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
