import 'package:flutter/material.dart';
import 'package:shivam_flutter/views/home_view.dart';

import 'views/login_views/background.dart';
import 'views/login_views/login_view1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shivam's Flutter Stuff",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      //   BackGroundView(
      // child: Loginview1(onSubmit: () {}, enabled: true), ),
    );
  }
}
