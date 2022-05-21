import 'package:flutter/material.dart';
import 'package:my_jam/widgets/appbar/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Home',
      ),
      body: SingleChildScrollView(
        child: Container(color: Colors.black,)
      ),
    );
  }
}
