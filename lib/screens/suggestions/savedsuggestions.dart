/**
 * @author [Sujan Basnet]
 * @email [basnetsujan95@gmail.com]
 * @create date 2019-08-08 12:48:12
 * @modify date 2019-08-08 12:48:12
 * @desc [description]
*/

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class SuggestedWords extends StatefulWidget {

  final Set<WordPair> _saved;

  SuggestedWords(this._saved); 

  SuggestedWordsState createState() => SuggestedWordsState();
}

class SuggestedWordsState extends State<SuggestedWords> {

  @override
  Widget build(BuildContext context) {

    final Iterable<ListTile> tiles = widget._saved.map(
      (WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
          ),
          trailing: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onTap: () {
            setState(() {
              widget._saved.remove(pair);
            });
          },
        );
      }
    );

    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(
        children: divided
      ),
    );

  }

}