import 'package:flutter/material.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/models/user_model.dart';
import 'package:minhappteste/widgets/favorites.dart';


class DataSearch extends SearchDelegate<String>{
  @override
    ThemeData appBarTheme(BuildContext context) {
      assert(context != null);
      final ThemeData theme = Theme.of(context);
      assert(theme != null);
      return theme;
    }


  final cities = [
    "amber",
    "rogers",
    "bruce",
    "gadot",
    "hugh",
    "margot",
    "momoa",
    "kenobi",
    "emma",
    "teste",
  ];
  
  final recentCities = [
     "Momoa",
    "Kenobi",
    "emma",
    "Teste",
  ];

  
  @override
  List<Widget> buildActions(BuildContext context) {
   return[
     IconButton(icon: Icon(Icons.clear),
     color: Colors.grey, onPressed: () {
       query = "";
     }),
   ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return
     IconButton(icon: AnimatedIcon(
       color: Colors.grey,
       icon: AnimatedIcons.menu_arrow,
       progress: transitionAnimation,
       ),
     onPressed: () {
       close(context, null);
     } );

  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        color: Colors.red,
        shape: StadiumBorder(),
        child: Center(
          child: Text(query),
        ),
     ),);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
    ? recentCities
    : cities.where((p)=> p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile (

        onTap: () {
          showResults(context);
        },

        leading: Icon(Icons.navigate_next),
        title: RichText(text:TextSpan(
          text: suggestionList[index].substring(0, query.length),
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold), 
          children: [TextSpan(
            text:  suggestionList[index].substring(query.length),
            style: TextStyle(color: Colors.grey),
          ),
          ],
        ),
       ),
      ),

      itemCount: suggestionList.length,
    );
  }
}