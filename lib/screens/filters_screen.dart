import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';

class Filtersscreen extends StatefulWidget {
  static const routeName = './filters';

  @override
  _FiltersscreenState createState() => _FiltersscreenState();
}

class _FiltersscreenState extends State<Filtersscreen> {
 bool glutenFree = false;
 bool vegetarian = false;
 bool vegan = false;
 bool lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filter'),
      ),
      drawer: MainDrawer(),
      body:Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust uy Meal section',
            style: Theme.of(context).textTheme.title,
            )
          ),
          Expanded(child: ListView(
            children: <Widget>[
              SwitchListTile(
                title: Text('GlutenFree'),
                value: glutenFree,
                subtitle: Text('Only contain gluten free meal'),
                 onChanged: (newValue) {
                   setState(() {
                     glutenFree = newValue;
                   });
                 })
            ],
          ),),
        ],
      ),
    );
  }
}