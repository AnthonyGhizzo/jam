import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_jam/theme/colors.dart';
import 'package:my_jam/screens/tabs_screen.dart';
import 'package:my_jam/theme/spacing.dart';
import 'package:my_jam/widgets/utils/back_button_widget.dart';

class SettingsDrawer extends StatefulWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  State<SettingsDrawer> createState() => _SettingsDrawerState();
}

class _SettingsDrawerState extends State<SettingsDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            // decoration: BoxDecoration(
            //     gradient: themeGetBackgroundGradient(context)),
            child: ListView(padding: EdgeInsets.zero, children: [
      const BackButtonWidget(),
      _buildContainer(),
    ])));
  }

  _buildContainer() {
    return Container(
      color: Colors.blue,
      child: Text('Settings')
    );
  }
}
