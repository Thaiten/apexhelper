import 'package:flutter/material.dart';

import 'variables/variables.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: new BoxDecoration(
              color: secondaryGrey,
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0) //         <--- border radius here
                  ),
            ),
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Text('Version 1.0 released',
                    style: Theme.of(context)
                        .textTheme
                        .body2
                        .copyWith(color: primaryRed, fontSize: 20.0)),
                Text('12.02.2019',
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: primaryRed, fontSize: 10.0)),
                Text("This is the Version 1.0 of the Apex Legends Helper! Changelogs and other Apex Legends News will be in this home-tab in the future. For now, you can navigate to the Legends in the bottom left and get to know the Legends' abilities")
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          )
        ],
      ));
  }
}
