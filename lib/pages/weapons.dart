import 'package:flutter/material.dart';

import '../variables/ui_elements.dart';
import '../variables/variables.dart';
import 'package:apexhelper/variables/weaponList.dart';

import 'package:apexhelper/pages/weapon.dart';

class WeaponPage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        //Image.asset("assets/images/r301_thumb.png"),
        subHeader(weaponList[0]["category"], context),
        weaponButton(weaponList[0]["weapons"], context),
        subHeader(weaponList[1]["category"], context),
        weaponButton(weaponList[1]["weapons"], context),
        subHeader(weaponList[2]["category"], context),
        weaponButton(weaponList[2]["weapons"], context),
        subHeader(weaponList[3]["category"], context),
        weaponButton(weaponList[3]["weapons"], context),
        subHeader(weaponList[4]["category"], context),
        weaponButton(weaponList[4]["weapons"], context),
        subHeader(weaponList[5]["category"], context),
        weaponButton(weaponList[5]["weapons"], context),
      ]
    );
  }
}



Widget subHeader(String header, context){
  return SliverPadding(
    padding: const EdgeInsets.all(20.0),
    sliver: SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Text(header,style: Theme.of(context).textTheme.headline.copyWith()),
        ],
      ),
    ),
  );
}


Widget weaponButton(List weaponListSelected BuildContext context) {
  final items = <Widget>[];

  for (var i = 0; i < weaponListSelected.length; i++) {
    items.add(button(weaponListSelected[i]["thumb"], weaponListSelected[i]["name"], MaterialPageRoute(builder: (context) => new Weapon(weaponListSelected[i])), context));
  }

  return SliverPadding(
    padding: const EdgeInsets.all(20.0),
    sliver: SliverGrid.count(
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: items,
    ),
  );
}