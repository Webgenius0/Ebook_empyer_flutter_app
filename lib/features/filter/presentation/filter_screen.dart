import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double priceValue = 50;
  Map<String, bool> genres = {
    'Action': false,
    'Adventure': false,
    'Romance': false,
    'Comics': false,
    'Comedy': false,
    'Fantasy': false,
    'Mystery': false,
    'Horror': false,
    'Sci-Fi': false,
    'Thriller': false,
    'Travel': false,
  };

  Map<String, bool> languages = {
    'All': false,
    'English': false,
    'Other Languages': false,
  };

  Map<String, bool> ages = {
    'All': false,
    'Ages 8 Under': false,
    'Ages 8+': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text("Sort",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListTile(title: Text("Trending")),
          ListTile(title: Text("New Releases")),
          ListTile(title: Text("Highest Rating")),
          ListTile(title: Text("Lowest Rating")),
          ListTile(title: Text("Highest Price")),
          ListTile(title: Text("Lowest Price")),
          SizedBox(height: 16),
          Text("Price",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Slider(
            value: priceValue,
            min: 0,
            max: 100,
            divisions: 20,
            label: priceValue.round().toString(),
            onChanged: (value) {
              setState(() {
                priceValue = value;
              });
            },
          ),
          SizedBox(height: 16),
          Text("Rating",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListTile(title: Text("All")),
          ListTile(title: Text("4.5+")),
          ListTile(title: Text("4.0+")),
          SizedBox(height: 16),
          Text("Genre",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...genres.keys.map((genre) {
            return CheckboxListTile(
              title: Text(genre),
              value: genres[genre],
              onChanged: (value) {
                setState(() {
                  genres[genre] = value!;
                });
              },
            );
          }).toList(),
          SizedBox(height: 16),
          Text("Language",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...languages.keys.map((language) {
            return CheckboxListTile(
              title: Text(language),
              value: languages[language],
              onChanged: (value) {
                setState(() {
                  languages[language] = value!;
                });
              },
            );
          }).toList(),
          SizedBox(height: 16),
          Text("Age",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...ages.keys.map((age) {
            return CheckboxListTile(
              title: Text(age),
              value: ages[age],
              onChanged: (value) {
                setState(() {
                  ages[age] = value!;
                });
              },
            );
          }).toList(),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    // Reset all filters
                    priceValue = 50;
                    genres.updateAll((key, value) => false);
                    languages.updateAll((key, value) => false);
                    ages.updateAll((key, value) => false);
                  });
                },
                child: Text("Reset"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Apply filters
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                child: Text("Apply"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
