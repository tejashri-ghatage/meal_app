import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';
import './category_screen.dart';
import './favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}


class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2, 
    //initialIndex: 0,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
        
        bottom: TabBar(
          
          tabs: <Widget>[
          Tab(icon: Icon(Icons.category),
          text: 'Categoris'),
          Tab(icon: Icon(Icons.favorite),
          text: 'Favourite',)

        ],),
      ),
      drawer: Drawer(child: MainDrawer()),
      body: TabBarView(children: <Widget>[
        CategoryScreen(),
        FavouriteScreen()
      ]),
    ));
  }
}