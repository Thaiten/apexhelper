import 'package:flutter/material.dart';

import 'package:apexhelper/variables/variables.dart';
import 'package:apexhelper/variables/ui_elements.dart';

@immutable class Weapon extends StatelessWidget{
  final Map weapon;
    Weapon(this.weapon);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // Silver Appbar
            pinned: true,
            floating: false,
            backgroundColor: primaryRed,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: weapon["image"],
              title: Text(weapon["name"]),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.share),
              )
            ], //Share Button, hat noch keine Funktion
            primary: true, //Extra Space nach Oben
            title: null,
          ),
          SliverFillRemaining(
              child: Column(children: <Widget>[
                TextBlock(Icons.info, " Information", statTable(weapon["stats"], context)),
              ],)
          )
        ],
      )
    );
  }
}

Widget statTable(Map map, BuildContext context) {
  List list = [
    {
      "header": "Ammunition",
      "subheader": "Type of Ammo",
      "text": map["ammo"]
    },
    {
      "header": "Magazin Size",
      "subheader": "Bullets in Magazin",
      "text": map["mag"]
    },
    {
      "header": "Reload Time",
      "subheader": "Tactical Reload/Full Reload",
      "text": map["reload"]
    },
    {
      "header": "Damage per Second",
      "subheader": "Damage if all bullets hit",
      "text": map["dps"]
    },
    {
      "header": "Damage per Shot",
      "subheader": "Body/Head/Leg",
      "text": map["dmg"]
    },
    {
      "header": "Fire Rate",
      "subheader": "Shots per Second",
      "text": map["rate"]
    },
    {
      "header": "Equipment Slots",
      "subheader": "Weapon Modifications",
      "text": map["slots"]
    },
    {
      "header": "Fireing Modes",
      "subheader": "Single, Auto, Burst",
      "text": map["modes"]
    },
    {
      "header": "Projectile Speed",
      "subheader": "Speed of the Bullets",
      "text": map["speed"]
    },
    {
      "header": "Draw Time",
      "subheader": "Time it takes to draw the weapon",
      "text": map["draw"]
    },
  ];
  return table(list, context);
}

Widget table(List list, BuildContext context){
  final items = <TableRow>[];
  for(var i = 0; i < list.length; i++){
    if (i == 0){
      items.add(
        TableRow(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(list[i]["header"]),
              Text(list[i]["subheader"],style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0, fontWeight: FontWeight.bold, color: primaryRed)),
            ],
          ),
          Text(list[i]["text"].toString())
        ])
      );
    }
    else{
      items.add(TableRow(children: [Text(""), Text("")]));
      items.add(
        TableRow(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(list[i]["header"]),
              Text(list[i]["subheader"],style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0, fontWeight: FontWeight.bold, color: primaryRed)),
            ],
          ),
          Text(list[i]["text"].toString())
        ])
      );
    }
  }
  return Table(children: items);
}