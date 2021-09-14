import 'package:flutter/material.dart';
class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          color:   Colors.grey.shade100,
          child: Column(
            children: <Widget>[
              _showVideo(),
              _showStories(),
              _displayStories(),
              _displayStories(),
              _displayStories(),
              _updates(),
              _UpdatesVideos(Colors.deepOrange),
              _UpdatesVideos(Colors.teal),


            ],
          ),
        ),

    );
  }

  Widget _showVideo() {
    return  Container(
      // عرض النص بالكامل و طول النص بنسبه
      width: double.infinity,
      height:MediaQuery.of(context).size.height * 0.25 ,
      decoration: BoxDecoration(image: DecorationImage(image:ExactAssetImage('assets/images/load.jpg'),fit: BoxFit.cover ), ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 30,left: 30),
                child: Text('Welcome in the first video',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing:2 ),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(right: 30,left: 30),
                child: Text('description of the video',style: TextStyle(color: Colors.white,fontSize: 12),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );

  }
  Widget _showStories(){
    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      child:  Padding(
        padding: const EdgeInsets.only(top: 24,left: 20,bottom: 18),
        child: Text('Top Stories',style:  TextStyle( fontWeight: FontWeight.bold),),
      ),
    );
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
  Widget _updates(){
    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      child:  Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text('Update recents',style:  TextStyle( fontWeight: FontWeight.bold),),
      ),
    );

  }
  Widget _UpdatesVideos(Color color){
    return Card(
      margin: EdgeInsets.only(left: 12,top: 12,right: 12,bottom: 6),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            //  لو عليزه الصوره دائريه هحطها ف  decoration  وبعدين ازود  shape: BoxShape.circle
            child: Image(image: ExactAssetImage('assets/images/load.jpg',),fit: BoxFit.cover,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.25,
          ),
          Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(7) ,color: color),
              child: Padding(
                padding: const EdgeInsets.only(right: 13,left: 13,top: 5,bottom: 5),
                child: Text('Sport',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Three goals for EL-Zamalek',style: TextStyle(fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.timer,),
                Text('15 minutes',style: TextStyle(fontSize: 10),)
              ]
              ,),
          )
        ],
      ),
    );
  }

}
