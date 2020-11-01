import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/personal.dart';
import 'package:minhappteste/widgets/favorites.dart';


class DataSearch extends SearchDelegate<String>{
  @override
    ThemeData appBarTheme(BuildContext context) {
      assert(context != null);
      final ThemeData theme = Theme.of(context);
      assert(theme != null);
      return theme;
    }

  final recentpersons = [
     "Momoa",
    "Kenobi",
    "emma",
    "Bruce",
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
       SystemChrome.setEnabledSystemUIOverlays([]);//esconder status bar
     } );

  }

  @override
  Widget buildResults(BuildContext context) {
    
    SystemChrome.setEnabledSystemUIOverlays([]);   
   // clicado = [];  
      return PersonalPage(); 
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
     ? recentpersons
    //: person.where((p)=> p.startsWith(query)).toList();
    : person.where((p)=> p.toLowerCase().contains(query)).toList();
    // favorites.where((p)=> p.name.toLowerCase().contains(query)).toList();

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => ListTile (

        onTap: () {
          showResults(context);
        },

        leading: Icon(Icons.navigate_next),
        title: RichText(text:TextSpan(
          text: suggestionList[index].toString().substring(0, query.length),
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold), 
          children: [TextSpan(
            text:  suggestionList[index].toString().substring(query.length),
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
