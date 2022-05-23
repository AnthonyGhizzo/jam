import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_jam/pages/simpsons_family_tree/simpsons_family_tree_page.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HomeComponentState();
  }
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        _buildIcon('assets/bart.svg', 300),
        SizedBox(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Colors.orange, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SimpsonsPage()),
                  );
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Show the Simpsons Family Tree'),
                  const SizedBox(width: 10),
                  _buildIcon("assets/icons8-homer-simpson.svg", 70)
                ]))),
      ]),
    );
  }

  _buildIcon(String pathIcon, double size) {
    return SvgPicture.asset(pathIcon, width: size);
  }
  //child: _buildIcon('assets/bart.svg', 300),
}
