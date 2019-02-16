import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'variables/variables.dart';

import 'icons/custom_icons.dart';

import 'home.dart';
import 'legends.dart';
import 'map.dart';
import 'pages/weapons.dart';

Color primaryRed = const Color.fromARGB(255, 218, 41, 42);
Color secondaryGray = const Color.fromARGB(255, 38, 38, 38);
Color thirdGray = const Color.fromARGB(255, 15, 15, 15);
Color homeColor = primaryRed;
Color legendsColor = Colors.white;
Color mapColor = Colors.white;
Color weaponBackground;
Color weaponForeground = Colors.white;

String titleText = "Apex Legends Helper";

void main() {
  /*SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryRed));*/
  runApp(
    MaterialApp(
      home: MainApp(),
      //builder: (context, child) => new SafeArea(child: child),
    )
  );
}

class MainApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainApp();
  }

}

/*void setSystemUIOverlayStyle (
SystemUiOverlayStyle style
){}*/

class _MainApp extends State<MainApp>{
  int currentPage = 0;
  
  HomePage zero;
  LegendPage one;
  MapPage two;
  WeaponPage three;
  List<Widget> pages;
  Widget openPage;
  
  @override
  void initState() {
    zero = HomePage();
    one = LegendPage();
    two = MapPage();
    three = WeaponPage();

    pages = [zero, one, two, three];

    openPage = zero;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        cardColor: secondaryGray
      ),
      home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 5.0,
        primary: true,
        backgroundColor: primaryRed, title: Text(titleText)
      ),
      drawer: Drawer(      
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Icon(Custom.logo, size: 50,),
              decoration: BoxDecoration(color: primaryRed),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              decoration: BoxDecoration(
                color: weaponBackground,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: ListTile(
                leading: Icon(Custom.weapon, color: weaponForeground,),
                title: Text("Weapons", style: TextStyle(color: weaponForeground),),
                onTap: (){
                  setState(() {
                    currentPage=3;
                    changePage(currentPage);
                    openPage = pages[3];
                  });
                },
                onLongPress: (){Scaffold.of(context).showSnackBar(SnackBar(content: Text('Click here to see all the Weapons!')));},
              ),
            ),
            Divider(),
            /*ListTile(
              leading: Icon(Icons.info),
              title: Text("About this App"),
            ),*/
            AboutListTile(
              icon: Icon(Icons.info),
              child: Text("About this App"),
              applicationName: "Helper App for Apex Legends",
              applicationVersion: "1.0.0",
              applicationLegalese: "All Image-Rights are reserved by EA. Image files are either captured in the game Apex Legends or found on the website ea.com.",
            )
          ],
        ),
      ),
      body: openPage,
      bottomNavigationBar: BottomAppBar(
        color: secondaryGray,
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton.icon(
              textColor: Colors.white,
              onPressed: () {
                //Navigator.of(context).pushNamed("/Legends");
                setState(() {
                  currentPage=1;
                  changePage(currentPage);
                  openPage = pages[1];
                  });
                },
              label: Text("Legends"),
              icon: Icon(Icons.supervised_user_circle, color: legendsColor,),
            ),
            FlatButton.icon(
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  currentPage=2;
                  changePage(currentPage);
                  openPage = pages[2];
                });
                },
              label: Text("Map"),
              icon: Icon(Icons.map,), // color: map color -> Entfernt wegen deaktivierung
            ),
          ],
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: homeColor,
        child: Center(
          child: Icon(Icons.home, size: 20.0, color: Colors.white),
        ),
        onPressed: () {
          setState(() {
            currentPage = 0;
            changePage(currentPage);  
            openPage = pages[0];
          });
        },
      ),
    )
    );
  }
  
}

void changePage(int page){
  switch(page){
    case 0:
      legendsColor=Colors.white;
      homeColor=primaryRed;
      mapColor=Colors.white;
      weaponPageActive(false);
      titleText = "Apex Legends Helper";
      break;
    case 1:
      legendsColor=primaryRed;
      homeColor=secondaryGray;
      mapColor=Colors.white;
      weaponPageActive(false);
      titleText = "Legends";
      break;
    case 2:
      legendsColor=Colors.white;
      homeColor=secondaryGray;
      mapColor=primaryRed;
      weaponPageActive(false);
      titleText = "Map";
      break;
    case 3:
      legendsColor=Colors.white;
      homeColor=secondaryGray;
      mapColor=Colors.white;
      weaponPageActive(true);
      titleText = "Weapons";
      break;
  }
}
void weaponPageActive(bool active){
  if (active){
    weaponBackground = secondaryRed;
    weaponForeground = primaryRed;
  }else{
    weaponBackground = null;
    weaponForeground = Colors.white;
  }
}