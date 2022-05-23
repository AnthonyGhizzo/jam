import 'package:flutter/material.dart';
import 'package:my_jam/theme/spacing.dart';

class PortraitWidgetSimpson extends StatelessWidget {
  final String pathImage;
  final Color borderColor;
  final Color insideColor;
  const PortraitWidgetSimpson({Key? key, required this.pathImage, required this.borderColor, required this.insideColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        // Max Size Widget
        Container(
          height: 110,
          width: 110,
          color: borderColor,
        ),
        Positioned(
          top: 5,
          right: 5,
          left: 5,
          bottom: 5,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: insideColor,
            child: _buildImage(pathImage),
          ),
        ),
      ],
    );
  }

  _buildImage(String path) {
    return Image.asset(
      path,
      //fit: BoxFit.cover,
    );
  }
}
