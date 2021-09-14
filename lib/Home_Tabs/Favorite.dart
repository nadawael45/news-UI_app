import 'dart:math';

import 'package:flutter/material.dart';
class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  Random random = Random();

  Color _gatRandomColor (){
    return colorslist[ random.nextInt(colorslist.length)];
}

  List<Color> colorslist=[
    Colors.grey,
    Colors.red,
    Colors.teal,
    Colors.yellow,
    Colors.orangeAccent,
    Colors.indigo,

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,position){
      return Card(
        child: Column(children: <Widget>[
          _HeadAuthor(),
        ],),
      );
    },itemCount: 20,);
  }

TextStyle _textStyle =TextStyle(fontSize: 2,color: Colors.grey,);
  Widget _HeadAuthor(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(image:  DecorationImage(image: ExactAssetImage('assets/images/load.jpg'),fit: BoxFit.cover),shape: BoxShape.circle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Text('Nada Wael',style:_textStyle ,),
                      SizedBox(height: 7,),
                      Text('life Style',style:TextStyle(color: _gatRandomColor()) ,)
                    ],),
                  )
                ],
              ),
              IconButton(icon:Icon(Icons.bookmark) , onPressed: (){},color: Colors.grey,),
            ],
          ),
    );

  }
}
