import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// Arrow notation => is for one-line functions or methods.
void main() => runApp(MyApp());

// The app extends StatelessWidget, which makes the app itself a widget.
// In Flutter, almost everything is a widget, including alignment, padding,
// and layout.
// Stateless widgets are immutable, meaning that their properties can't
// change - all values are final.
//
// Stateful widgets maintain state that might change during the lifetime
// of the widget. Implementing a stateful widget requires at least two
// classes: a StatefulWidget object that creates an instance of a State
// class. The StatefulWidget object is, itself, immutable and can be
// thrown away and regenerated, but the State object persists over the
// lifetime of the widget.
class MyApp extends StatelessWidget {
  // A widget's main job is to provide a build() method that describes
  // how to display the widget in terms of other, low-level widgets.
  @override
  Widget build(BuildContext context) {
    // This example creates a Material app. Material is a visual-design
    // language that's standard on mobile and the web. Flutter offers a
    // rich set of Material widgets.
    return MaterialApp(
      title: 'Startup Name Generator',

      
      home: RandomWords(),
    );
  }
}

// This is a stateful widget, RandomWords, which creates its State class,
// _RandomWordsState. RandomWords is used as a child inside the existing
// MyApp stateless widget.
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

// By default, the name of the State class is prefixed with an underscore.
// Prefixing an identifier with an undersore enforces privacy in the Dart
// language and is a recommended best practice for State objects.
//
// The IDE also automatically updates the state class to extend
// State<RandomWords>, indicating that you're using a generic State
// class specialized for use with RandomWords. Most of the app's logic
// resides here - it maintains the state for teh RandomWords widget.
//
// The class saves the list of generated word pairs, which grows infinitely
// as the user scorlls.
class _RandomWordsState extends State<RandomWords> {
  // A _suggestions list for saving suggested word pairings.
  final List<WordPair> _suggestions = <WordPair>[];

  // A _biggerFont variable for making the font size larger.
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold (                     // Add from here... 
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    ); 
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),

      // The itemBuilder callback is called once per suggested
      // word pairing, and places each suggestion into a ListTile
      // row. For even rows, the function adds a ListTile row for
      // the word pairing. For odd rows, the fuction adds a Divider
      // widget to visually separate the entries. Note that the
      // divider may be difficult to see on smaller devices.
      itemBuilder: (BuildContext _context, int i) {
        // Add a one-pixel high divider widget before each row
        // in the ListView.
        if (i.isOdd) {
          return Divider(
            color: Colors.indigo[100],
          );
        }

        // The syntax "i ~/ 2" divides i by 2 and returns an
        // integer result.
        // For example, 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
        // This caculates the actual number of word pairings
        // in the ListView, minus the divider widgets.
        final int index = i ~/ 2;

        // If you've reached the end of the available word
        // parings...
        if (index >= _suggestions.length) {
          // ...then generate 10 more and add them to the
          // suggestions list.
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
