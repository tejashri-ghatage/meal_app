import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';
import './screens/category_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20,51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20,51, 51, 1),
          ),
          title: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24
          ),

        )
      ),
      home: TabsScreen(),
      routes: {
        './':(ctx) => TabsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        Filtersscreen.routeName: (ctx) => Filtersscreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('navigation times'),
       ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
