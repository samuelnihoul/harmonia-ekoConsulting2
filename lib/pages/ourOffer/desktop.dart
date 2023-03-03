import 'package:flutter/material.dart';
import '../../constants/services.dart' show serviceList_fr;
class DesktopServicesScreen extends StatelessWidget {
  const DesktopServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _w=MediaQuery.of(context).size.width;
    return (Padding(padding:EdgeInsets.all(_w*0.1),
      child:ListView(

      children:[
for (final service in serviceList_fr)ListTile(title:Text(service.title),isThreeLine:true,subtitle:Text(service.description))]
    ))
    );
  }
}
