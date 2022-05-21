import 'package:flutter/material.dart';
import 'package:my_jam/widgets/appbar/app_bar_widget.dart';

class TreePage extends StatelessWidget {
  const TreePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Tree',
      ),
      body: SingleChildScrollView(
        child: Container(color: Colors.black,)
      ),
    );
  }
}
