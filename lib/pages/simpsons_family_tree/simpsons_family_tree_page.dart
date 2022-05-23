import 'package:flutter/material.dart';
import 'package:my_jam/widgets/appbar/app_bar_widget.dart';

import 'components/simpsons_family_tree_component.dart';

class SimpsonsPage extends StatelessWidget {
  const SimpsonsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              SimpsonsComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
