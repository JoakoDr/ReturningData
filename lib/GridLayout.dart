import 'package:flutter/material.dart';

class GridLayout extends StatefulWidget {

  @override
  _GridLayoutState createState() => _GridLayoutState();
}

class _GridLayoutState extends State<GridLayout> {
 // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showDialog(index) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Has pulsado $index"),
          content: new Text("Has pulsado $index"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(

        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(100, (index) {
            return new ListTile(title: new Text("item#$index"),
            onTap:(){
              _showDialog(index);
            //  Navigator.pop(context, 'Has pulsado la posicion: $index');
           // _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("You clicked item number $index")));
            },
            );
          }),
        ),
      ),
    );
  }
}

