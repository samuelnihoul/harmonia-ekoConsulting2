import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';
import '../../../constants/team.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DesktopAboutScreen extends StatelessWidget {
  const DesktopAboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FractionallySizedBox(
      widthFactor: 0.8,
      heightFactor: 0.8,
      child: Card(
          elevation: 50,
          color: Colors.white,
          shadowColor: active,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Notre équipe ', style: h2),
              Text('Découvrez notre équipe', style: h3),
              Text(
                  'Notre équipe experte est composée de créatifs avec un savoir-faire technique, stratèges qui pensent hors du cadre et développeurs qui promeuvent l\'innovation.',
                  style: p),
              // placed dots on the background
              SizedBox(
                height: 20,
                child: Container(
                  color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Container(
                  color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Container(
                  color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
              GroupOf9Dots(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamMember(Zakaria),
                  TeamMember(Nouhaila),
                  TeamMember(Samuel),
                ],
              )
            ],
          )),
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
    return Card(
      color: disable,
      elevation: 40,
      shadowColor: Colors.black,
      child: Column(
        children: [
          Image(image: Image.asset('assets/images/${teamMember.photo}').image),
          Row(
            children: [
              Icon(
                Icons.facebook,
                color: Colors.white,
              ),
              Icon(
                Icons.facebook,
                color: Colors.white,
              ),
              Icon(
                Icons.facebook,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GroupOf9Dots extends StatelessWidget {
  const GroupOf9Dots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var _i in [0, 1, 2])
            Row(
              children: [
                for (var _i in [0, 1, 2])
                  SizedBox(
                    height: 20,
                    child: Container(
                      color: Colors.black,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
