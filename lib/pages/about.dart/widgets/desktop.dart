import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';
import '../../../constants/team.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DesktopAboutScreen extends StatelessWidget {
  const DesktopAboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Center(
        child: FractionallySizedBox(
      widthFactor: 0.8,
      heightFactor: 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Card(
            shape: RoundedRectangleBorder(),
            elevation: 50,
            color: Colors.white,
            shadowColor: active,
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Notre équipe ', style: h3),
                  Text('Découvrez notre équipe', style: h2Inverse),
                  Text(
                      'Notre équipe experte est composée de créatifs avec un savoir-faire technique, stratèges qui pensent hors du cadre et développeurs qui promeuvent l\'innovation.',
                      style: pInverse),
                  SizedBox(
                    height: _height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TeamMember(Zakaria),
                      TeamMember(Nouhaila),
                      TeamMember(Samuel),
                    ],
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
                    color: Colors.green,
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
                    color: disable,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ])),
      ),
    ));
  }
}

class TeamMember extends StatelessWidget {
  final ITeamMember teamMember;
  const TeamMember(
    this.teamMember, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.2,
          maxHeight: MediaQuery.of(context).size.width * 0.2),
      child: Card(
        color: disable,
        elevation: 40,
        shadowColor: Colors.black,
        child: Padding(
          padding: EdgeInsets.only(top: _height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: Image.asset('assets/images/${teamMember.photo}').image,
                  width: MediaQuery.of(context).size.width * 0.16,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.facebook,
                        color: Colors.white,
                      ),
                      Icon(
                        MdiIcons.twitter,
                        color: Colors.white,
                      ),
                      Icon(
                        MdiIcons.linkedin,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GroupOf9Dots extends StatelessWidget {
  const GroupOf9Dots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 29,
      child: Container(
        width: 30,
        height: 30,
        child: Column(
          children: [
            for (var _i in [0, 1, 2])
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var _i in [0, 1, 2])
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
