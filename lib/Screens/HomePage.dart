import 'package:flutter/material.dart';
import 'package:newsapp/Home_Tabs/Favorite.dart';
import 'package:newsapp/Home_Tabs/News.dart';
import 'package:newsapp/Home_Tabs/Popular.dart';
import 'package:newsapp/SharedUI/navigDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
 enum PopOutMenu{
  HELP,ABOUT,CONTACT
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController= TabController(initialIndex: 0,length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),centerTitle: false,
        bottom: TabBar(labelPadding: EdgeInsets.only(bottom: 12,top: 12),indicatorColor: Colors.white,tabs: [
          Text('NEWS'),
          Text('POPULAR'),
          Text('FAVORITE'),


        ], controller: _tabController,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search) , onPressed: (){}),
          _popupMenu(context)
        ],
      ) ,
      drawer: navigDrawer(),
      body: TabBarView(
        children: [
          News(),
          Popular(),
          Favorite(),


        ], controller: _tabController,

      ),
    );
  }
  Widget _popupMenu(BuildContext context
      ){
  return PopupMenuButton<PopOutMenu>(itemBuilder: (context){
    return [
      PopupMenuItem<PopOutMenu>(
          value: PopOutMenu.ABOUT,
          child: Text('ABOUT'),
      ),
      PopupMenuItem<PopOutMenu>(
        value: PopOutMenu.CONTACT,
        child: Text('CONTACT'),
      ),
      PopupMenuItem<PopOutMenu>(
        value: PopOutMenu.HELP,
        child: Text('HELP'),
      ),
    ];

  },onSelected:(PopOutMenu Menu) {} , icon: Icon(Icons.more_vert),);
  
}
}


