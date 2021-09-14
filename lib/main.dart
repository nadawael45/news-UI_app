import 'package:flutter/material.dart';
import 'package:newsapp/Screens/HomePage.dart';
import 'package:newsapp/Screens/welcomeScreen.dart';
import 'package:newsapp/Utils/AppTheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

 main()  async {
   WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen= prefs.getBool('seen');
  Widget _screen ;
 if(seen==null || seen== false){
    //go to home page
    _screen =welcomeScreen();

  }else{
    _screen=HomePage();
}
runApp(MyApp(_screen));
}
class MyApp extends StatelessWidget {
 final Widget _screen;

MyApp (this._screen);  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: this._screen,
      // 7aga sabta x kol el tatbe2
      // h3mlha class lwa7do afdl
      theme: AppTheme.appTheme,

    );
  }
}

