import 'package:ch8_drawer/widgets/left_drawer.dart';
import 'package:ch8_drawer/widgets/right_drawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const LeftDrawerWidget(),
      endDrawer: const RightDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
