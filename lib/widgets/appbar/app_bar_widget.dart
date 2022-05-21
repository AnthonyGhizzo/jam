import 'package:flutter/material.dart';
import 'package:my_jam/screens/settings/settings_screen.dart';
import 'package:my_jam/theme/styles.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  void openSettingsPage(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SettingsDrawer())
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0),
      centerTitle: false,
      title: Text(
        title,
        style: appBarTitleStyle,
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: IconButton(
            icon: Icon(
              Icons.settings_accessibility_rounded,
              color: Colors.grey[800],
            ),
            onPressed: () {
              openSettingsPage(context);
            }
          ),
        ),
        const SizedBox(width: 15)
      ]
    );
  }
}
