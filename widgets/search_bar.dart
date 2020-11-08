import 'package:final_design_travel/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Size preferredSize;

  SearchBar(this.title, {Key key})
      : preferredSize = Size.fromHeight(60),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text('Travel BD'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          },
        ),
      ],
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Sajek",
    "Cox's Bazar",
    "St. Martin's Island",
    "Bandarban",
    "Rangamati",
    "Khagrachari",
    "Patenga beach",
    "Foy's Lake",
    "Sunamganj",
    "Heritage Park",
    "Jaflong",
    "Madhobpur Lake",
    "Ratargul Swamp Forest",
    "Lalbagh Fort",
    "Ahsan Manzil",
    "Shaheed Minar",
    "Kuakata Beach",
    "Sundarbans",
    "Mosque City of Bagerhat",
    "Nijhum Dwip",
    "Chhera Island",
    "Bangladesh National Museum",
    "Taj Mahal Bangladesh",
    "Ratargul Swamp Forest",
    "Ratargul Swamp Forest",
  ];
  final recentCities = [
    "Sajek",
    "Cox's Bazar",
    "St. Martin's Island",
    "Bandarban",
    "Rangamati",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //Icons in the left of the search result
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.arrow_menu,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show some results for selection part
    //TODO I have to return to home screen in future

    return HomeScreen();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show when some one search for something
    final suggestationList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
          text: suggestationList[index].substring(0, query.length),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: suggestationList[index].substring(query.length),
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )),
      ),
      itemCount: suggestationList.length,
    );
  }
}
