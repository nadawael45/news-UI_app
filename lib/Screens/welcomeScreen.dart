import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Screens/HomePage.dart';
import 'file:///C:/Users/AL%20MASRIA%204%20COMP/AndroidStudioProjects/news_app/lib/models/pageModel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class welcomeScreen extends StatefulWidget {
  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {

  List<pageModel>pages;
int _currentIndex =0;
ValueNotifier<int>_valueNotifier= ValueNotifier(0);

  // عايزه ف كل صفحه صوره مختلفه
//List<String> images = [
//  'assets/images/pg.jpg',
//  'assets/images/bg2.jpg',
//  'assets/images/bg3.jpg',
//  'assets/images/bg4.jpg'
//
//];
//List<IconData>icons=[
//  Icons.ac_unit,
//  Icons.account_circle,
//  Icons.add_alert,
//  Icons.brightness_medium
//
//] ;
//List<String> titles = [
//  'welcome',
//  'alarm',
//  'notification',
//  'weather'
//
//];
void _addPages(){
  pages= List<pageModel>();
  pages.add(pageModel('welcome','assets/images/pg.jpg', Icons.ac_unit));
  pages.add(pageModel(  'alarm','assets/images/bg2.jpg', Icons.account_circle));
  pages.add(pageModel('notification','assets/images/bg3.jpg', Icons.add_alert));
  pages.add(pageModel('weather','assets/images/bg4.jpg', Icons.brightness_medium));
}
@override
  Widget build(BuildContext context) {

     _addPages();




  return Scaffold(

      body:Stack(
        children: <Widget> [
          // عشان اعمل صفحه فيهل سوايب لازم  pageview
         PageView.builder(
           //  حطيت اندكس عشان السوايب مش صفحه واحده ده كذا صفحه
      itemBuilder:(context,index) {
return Stack(
  children: <Widget>[
    Container(

      decoration: BoxDecoration(

        image: DecorationImage(image: ExactAssetImage (
          pages[index].images,
         // ('assets/images/pg.jpg'
             ),
          fit: BoxFit.cover,
        )
      ),
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Transform.translate(
            child: Icon(pages[index].icons,color: Colors.white,size: 150,
        ),
        offset: Offset(0,-50),

        ),
        Text(pages[index].title,
          style: TextStyle(
            color: Colors.white,
        fontSize: 28,
        fontWeight:FontWeight.bold,),),
        Padding(
          padding: const EdgeInsets.only(right: 48,left: 48,top: 14),
          child: Text("Making friends is easy way as waving your hands back and forth",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,),
        ),
      ],
    )

  ],
);
    },
           itemCount:pages.length,

           onPageChanged: (index){
        _valueNotifier.value=index;
           },

          // itemCount: 4,
         ),
          Transform.translate(
            offset: Offset(0,175),
            child: Align(
              alignment: Alignment.center,
              child: _displaypageIndicator(pages.length),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  color: Colors.red.shade800,

                  child: Text('GET STARTED',style: TextStyle( color: Colors.white),),
                  onPressed: (){
                    _updateSeen();
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context){
                    return HomePage();
                    },
                    ),
                    );
                   }

                ),
              ),
            ),
          )
        ],
      ) ,
    );
  }


 // List<Widget>_circleindicator(){

   // List<Widget>_widges=List<Widget>();

   // for (int i = 0; i<pages.length; i++){
   //   _widges.add(_drawcircle(Colors.red),);

   // }
   // return _widges;
 // }

//Widget _drawcircle(Color color){
 // return Container(
  //  margin: EdgeInsets.only(right: 8),
   //width: 10,
    //decoration: BoxDecoration(
    //  shape: BoxShape.circle,
     // color: color,
    //),

  //);
//}
Widget _displaypageIndicator(int length){

  return PageViewIndicator(
    pageIndexNotifier: _valueNotifier,
    length: length,
    normalBuilder: (animationController, index) => Circle(
      size: 8.0,
      color: Colors.blueGrey,
    ),
    highlightedBuilder: (animationController, index) => ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.ease,
      ),
      child: Circle(
        size: 12.0,
        color: Colors.red,
      ),
    ),
  );
}
}

void _updateSeen() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('seen', true);

}