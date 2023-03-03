import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../constants/team.dart';

class MobileAboutScreen extends StatelessWidget {
  const MobileAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Center(
      child: Container(
        width: _width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
              shape: RoundedRectangleBorder(),
              elevation: 400,
              color: Colors.white,
              shadowColor: active,
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Notre équipe ',
                          style: h3, textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Découvrez notre équipe',
                          style: h2Inverse, textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Notre équipe experte est composée de créatifs avec un savoir-faire technique, stratèges qui pensent hors du cadre et développeurs qui promeuvent l\'innovation.',
                          style: pInverse,
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(
                      height: _height * 0.1,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TeamMember(zakaria),
                        TeamMember(nouhaila),
                        TeamMember(samuel),
                      ],
                    )
                  ],
                ),
                Positioned(
                    top: _height * 0.35,
                    left: _width * 0.6,
                    child: GroupOf9Dots()),
                Positioned(
                  top: _height * 0.39,
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
                  left: _width * 0.11,
                  top: _height * 0.19,
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
      ),
    ));
  }
}

class TeamMember extends StatelessWidget {
  final ITeamMember teamMember;
  const TeamMember(
    this.teamMember, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
          maxHeight: MediaQuery.of(context).size.width * 0.7),
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
                  width: MediaQuery.of(context).size.width * 0.5,
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