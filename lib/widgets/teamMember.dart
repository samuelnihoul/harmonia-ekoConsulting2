import '../constants/team.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class TeamMember extends StatefulWidget {
  final ITeamMember teamMember;
  const TeamMember(
    this.teamMember, {
    super.key,
  });
  State<TeamMember> createState() => _TeamMemberState();
}


class _TeamMemberState extends State<TeamMember> {
  bool isToggled=false;
  @override
  Widget build(BuildContext context) {
  final Uri _instagram=Uri.parse(widget.teamMember.instagram);
  final Uri _linkedin=Uri.parse(widget.teamMember.linkedin);
  final Uri _twitter=Uri.parse(widget.teamMember.twitter);
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Container(
      constraints:
          BoxConstraints(maxWidth: _width * 0.2, maxHeight: _width * 0.2),
      child: AspectRatio(
        aspectRatio: 9 / 10,
        child:
InkWell(
          onTap:(){
            setState((){isToggled=!isToggled;});},
            child:

        Card(
          color: Color(0xfff9c22e),
          elevation: 40,
          shadowColor: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(top: _height * 0.02),
            child: isToggled?
              Center(child:Padding(padding:EdgeInsets.all(_width*0.02),child:              Text(widget.teamMember.description)))
:
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image:
                        Image.asset('assets/images/${widget.teamMember.photo}').image,
                    width: MediaQuery.of(context).size.width * 0.16,
                    fit: BoxFit.fill,
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: _height * 0.01,
                  children: [
                   InkWell(
                        onTap:(){launchUrl(_instagram);},
                        child:Icon(MdiIcons.instagram, color: Colors.white),

                      )     ,           
                   InkWell(
                        onTap:(){launchUrl(_twitter);},
                        child:Icon(MdiIcons.twitter, color: Colors.white),

                      )     ,           
                   InkWell(
                        onTap:(){launchUrl(_linkedin);},
                        child:Icon(MdiIcons.linkedin, color: Colors.white),

                      )                       ],
                ),
              ],
            ),
          ),
        ),
        )
      ),
    );
  }
 }
