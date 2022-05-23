import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_jam/theme/spacing.dart';
import 'package:my_jam/widgets/simpson/portrait_widget.dart';
import 'package:my_jam/widgets/utils/back_button_widget.dart';
import 'package:timelines/timelines.dart';

class SimpsonsComponent extends StatefulWidget {
  const SimpsonsComponent({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _SimpsonsComponentState();
  }
}

class _SimpsonsComponentState extends State<SimpsonsComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        const BackButtonWidget(),
        kSpacerLg,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildAbrahamSimpson(),
            const SizedBox(width: 15.0),
            _buildMonaSimpson(),
          ],
        ),
        kSpacerLg,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildClancySimpson(),
            const SizedBox(width: 15.0),
            _buildJacquelineSimpson(),
          ],
        ),
        kSpacerLg,
        _buildHommerSimpson(),
        _buildLisaSimpson(),
        kSpacerLg,
        _buildBartSimpson(),
      ]),
    );
  }

  _buildHommerSimpson() {
    return Column(children:const <Widget>[
      PortraitWidgetSimpson(
          pathImage: "assets/png/homer_simpson.png",
          borderColor: Colors.orange,
          insideColor: Colors.yellow),
      SizedBox(
        height: 40.0,
        child: DecoratedLineConnector(
          thickness: 06.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.purple,
                Colors.pink,
                Colors.orange,
                Colors.yellow
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  _buildAbrahamSimpson() {
    return Column(children: const <Widget>[
      PortraitWidgetSimpson(
          pathImage: "assets/png/abraham_simpson.png",
          borderColor: Color.fromARGB(255, 212, 128, 4),
          insideColor: Color.fromARGB(255, 230, 171, 81)),
      SizedBox(
        height: 40,
        child: DecoratedLineConnector(
          thickness: 06.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 212, 128, 4),
                Color.fromARGB(255, 230, 171, 81),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 230, 171, 81),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  _buildMonaSimpson() {
    return const PortraitWidgetSimpson(
        pathImage: "assets/png/mona_simpson.png",
        borderColor: Color.fromARGB(255, 3, 71, 51),
        insideColor: Color.fromARGB(255, 63, 110, 65));
  }

  _buildClancySimpson() {
    return const PortraitWidgetSimpson(
        pathImage: "assets/png/clancy_simpson.png",
        borderColor: Color.fromARGB(255, 85, 19, 139),
        insideColor: Color.fromARGB(255, 157, 74, 221));
  }

  _buildJacquelineSimpson() {
    return const PortraitWidgetSimpson(
        pathImage: "assets/png/jacqueline_simpson.png",
        borderColor: Color.fromARGB(255, 64, 79, 87),
        insideColor: Color.fromARGB(255, 94, 99, 102));
  }

  _buildBartSimpson() {
    return const PortraitWidgetSimpson(
        pathImage: "assets/png/bart_simpson.png",
        borderColor: Colors.greenAccent,
        insideColor: Colors.green);
  }

  _buildLisaSimpson() {
    return const PortraitWidgetSimpson(
        pathImage: "assets/png/lisa_simpson.png",
        borderColor: Colors.purple,
        insideColor: Colors.pink);
  }
}
