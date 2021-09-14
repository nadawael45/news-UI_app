import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,position){
      return Card(
        child: _displayStories(),
      );
    },itemCount: 20,);
  }

  Widget _displayStories(){
    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 12 ,bottom: 12),
            child: Card(
              color: Colors.white,
              child: Row(children: <Widget>[
                SizedBox(
                  child: Image(image: ExactAssetImage('assets/images/load.jpg',),fit: BoxFit.cover,
                  ),
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text('International English Course for Beginners',maxLines: 2,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                        ),
                        SizedBox(height: 18,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('News TV',style: TextStyle(fontSize: 10),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.timer,),
                                Text('15 minutes',style: TextStyle(fontSize: 10),)
                              ]
                              ,)
                          ],)

                      ],),
                  ),
                )
              ],),


            ),
          )

        ],
      ),
    );

  }

}
