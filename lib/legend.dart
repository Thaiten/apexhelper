import 'package:flutter/material.dart';

import 'package:flutter_youtube/flutter_youtube.dart';

import 'package:apexhelper/variables/ui_elements.dart';

import 'variables/variables.dart';

@immutable class Legend extends StatelessWidget {
  Legend(this.legend, this.champion);
  
  final Map legend;
  final Image champion;

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
              background: champion,
              title: Text(legend["name"]),
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
                TextBlock(Icons.track_changes, "Abilities", table(legend, context),),
                TextBlock(Icons.accessibility_new, "Help", RaisedButton(child: Text("How to play Mirage in 45 seconds"), onPressed: (){YouTubeVideo();}),)
              ],)
          )
        ],
      )
    );
  }
}


Widget table(Map map, context) => Table(
  children: <TableRow>[
    TableRow(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(map["passive"][0]),
          Text("PASSIVE ABILITY",style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0, fontWeight: FontWeight.bold, color: primaryRed)),
        ],
      ),
      Text(map["passive"][1])
      ]),
    TableRow(children: [Text(""), Text("")]), //Spacer between Abilities
    TableRow(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(map["tactical"][0]),
          Text("TACTICAL ABILITY",style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0, fontWeight: FontWeight.bold, color: primaryRed)),
        ],
      ),
      Text(map["tactical"][1])
      ]),
    TableRow(children: [Text(""), Text("")]), //Spacer between Abilities
    TableRow(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(map["ultimate"][0]),
          Text("ULTIMATE ABILITY",style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0, fontWeight: FontWeight.bold, color: primaryRed)),
        ],
      ),
      Text(map["ultimate"][1])
      ]),
  ],
);

Widget YouTubeVideo() {
  return FlutterYoutube.playYoutubeVideoById(
    apiKey: "AIzaSyCcKByZIzyi_MZ8Gl6qp5xzMW3AgiT7UVs",
    videoId: "y4qfAIWkMcA",
  );
}