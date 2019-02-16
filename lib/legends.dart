import 'package:flutter/material.dart';

import 'legend.dart';

import 'variables/variables.dart';
import 'variables/ui_elements.dart';
import 'variables/legendList.dart';

@immutable
class LegendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Text('Select your Champion!',style: Theme.of(context).textTheme.headline.copyWith()),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 3,
            children: <Widget>[
              legendButton(legends, 0, context, AssetImage("assets/images/bloodhound_thumb.png")),
              legendButton(legends, 1, context, AssetImage("assets/images/gibraltar_thumb.png")),
              legendButton(legends, 2, context, AssetImage("assets/images/lifeline_thumb.png")),
              legendButton(legends, 3, context, AssetImage("assets/images/pathfinder_thumb.png")),
              legendButton(legends, 4, context, AssetImage("assets/images/wraith_thumb.png")),
              legendButton(legends, 5, context, AssetImage("assets/images/bangalore_thumb.png")),
              legendButton(legends, 6, context, AssetImage("assets/images/caustic_thumb.png")),
              legendButton(legends, 7, context, AssetImage('assets/images/mirage_thumb.png')),
            ],
          ),
        ),
      ],
    );      
  }
}

Widget legendButton(list, id, context, ImageProvider thumb) {
  MaterialPageRoute legendLink = MaterialPageRoute(builder: (context) => new Legend(list[id], list[id]["image"]));
  return button(list[id]["thumb"], list[id]["name"], legendLink, context);
}