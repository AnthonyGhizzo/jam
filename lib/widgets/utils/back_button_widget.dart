import 'package:flutter/material.dart';
import 'package:my_jam/theme/spacing.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(left: kSm),
        alignment: Alignment.centerLeft,
        child: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            }));
  }
}
