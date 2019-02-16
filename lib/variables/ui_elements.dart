import 'package:flutter/material.dart';
import 'variables.dart';

Widget button(ImageProvider thumb, String text, MaterialPageRoute link, BuildContext context){
return GestureDetector(
    child: Container(
      constraints: new BoxConstraints.expand(height: 125.0, width: 125.0),
      alignment: Alignment.bottomCenter,
      padding: new EdgeInsets.only(left: 0.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: thumb,
          fit: BoxFit.cover,
        ),
        color: secondaryGrey,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: new Text(text,
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19.0,
            shadows: [
              Shadow(color: Color.fromARGB(255,0,0,0,),blurRadius: 10.0),
              Shadow(color: Color.fromARGB(255,0,0,0,),blurRadius: 10.0)
            ],
          )),
    ),
    onTap: () {
      Navigator.push(
        context,
        link
      );
    },
  );
}

@immutable class TextBlock extends StatelessWidget{
  final IconData icon;
  final String header;
  final Widget body;

  TextBlock(this.icon, this.header, this.body);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(16.0),
            decoration: new BoxDecoration(
              color: secondaryGrey,
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0) //         <--- border radius here
                  ),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(children: <Widget>[
                //Icon(Icons.offline_bolt),
                Icon(icon),
                Expanded(child: Text(" $header", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
              ],),
              ),body
            ],
              
            ),
          ),
        ],
      )
    );
  }
}