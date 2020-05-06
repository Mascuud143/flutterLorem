import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic text = "";

  void generateText() {
    setState(() {
      text = lorem(paragraphs: 4, words: 200);
    });
  }

  void clearText() {
    setState(() {
      text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(
          child: Center(
            child: Row(
              children: <Widget>[
                Icon(Icons.format_textdirection_r_to_l),
                SizedBox(
                  width: 10,
                ),
                Text('Lorem generator'),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Your Text here:',
                style: TextStyle(fontFamily: 'indieFlower'),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: 1000,
                color: Colors.blueGrey,
                child: Text(
                  '$text',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      generateText();
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Generate',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  FlatButton(
                    onPressed: () {
                      clearText();
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Colors.brown,
                      child: Center(
                        child: Text(
                          'Clear',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
