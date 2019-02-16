import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';

import 'variables/variables.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: AssetImage("assets/images/map.jpg"),
        enableRotation: false,
        minScale: PhotoViewComputedScale.contained * 1,
        maxScale: PhotoViewComputedScale.covered * 6,
        initialScale: PhotoViewComputedScale.contained,
      )
    );
  }
}
