import 'package:flutter/material.dart';
import 'file:///C:/Users/AL%20MASRIA%204%20COMP/AndroidStudioProjects/news_app/lib/Screens/Headline_news.dart';
import 'package:newsapp/Screens/HomePage.dart';
import 'file:///C:/Users/AL%20MASRIA%204%20COMP/AndroidStudioProjects/news_app/lib/Screens/TwitterFeeds.dart';
import 'package:newsapp/models/NavMenuItem.dart';
// hna m4 hi7tawy 3la widget bs la dh hift7 sof7 w kda lazm yb2a stateful
class navigDrawer extends StatefulWidget {
  @override
  _navigDrawerState createState() => _navigDrawerState();
}

class _navigDrawerState extends State<navigDrawer> {
  List<NavMenuItem> navDrawer=[

    NavMenuItem('Explore',()=> HomePage()),
    NavMenuItem('Headline News', ()=>HeadlineNews()),
    NavMenuItem('Twitter Feeds', ()=>TwitterFeeds()),


  ];
//  List<String> navDrawer=[
//    'Explore',
//    'Headline News',
//    'Read later',
//    'Videos',
//    'Photos',
//    'Settings',
//    'logout'
//  ];
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView.builder(itemBuilder: (context,position){
          return Padding(
            padding: const EdgeInsets.only(top:8),

            child: ListTile(
            title: Text(navDrawer[position].title,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
              trailing: Icon(Icons.chevron_right,color: Colors.grey.shade300,),
              onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return navDrawer[position].destination();
              }));
              },
            ),
          );

        }, itemCount: navDrawer.length,),
      );

  }
}
