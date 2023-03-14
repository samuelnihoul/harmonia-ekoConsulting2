import 'package:flutter/material.dart';
import 'package:HEConsulting/helpers/style.dart';
import '../../widgets/teamMember.dart';
import '../../../constants/team.dart';

class DesktopAboutScreen extends StatelessWidget {
  const DesktopAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Center(
        child: FractionallySizedBox(
      widthFactor: 0.8,
      heightFactor: 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Card(
            shape: RoundedRectangleBorder(),
            elevation: 400,
            color: Colors.white,
            shadowColor: active,
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Notre équipe ', style: h3),
                        Text('Découvrez notre équipe', style: h2Inverse),
                        SizedBox(height: _height / 30),
                        Text(
                            'Notre équipe experte est composée de créatifs avec un savoir-faire technique, stratèges qui pensent hors du cadre et développeurs qui promeuvent l\'innovation.',
                            style: pInverse),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: _height / 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // TeamMember(zakaria),
                        TeamMember(samuel),
                        TeamMember(nouhaila),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  top: _height * 0.05,
                  left: _width * 0.6,
                  child: GroupOf9Dots()),
              Positioned(
                top: _height * 0.69,
                left: _width * 0.5,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: disable,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                left: _width * 0.1,
                top: _height * 0.1,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: active,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ])),
      ),
    ));
  }
}


class GroupOf9Dots extends StatelessWidget {
  const GroupOf9Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 29,
      child: Container(
        width: 30,
        height: 30,
        child: Column(
          children: [
            for (var _ in [0, 1, 2])
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var _ in [0, 1, 2])
                    SizedBox(
                      height: 10,
                      width: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: disable)),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
