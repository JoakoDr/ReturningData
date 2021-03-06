import 'package:flutter/material.dart';
import 'package:flutter_app/GridLayout.dart';
import 'package:flutter_app/homescreen/HomePresenter.dart';
import 'package:flutter_app/homescreen/HomeView.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> implements HomeView {

  HomePresenter _homePresenter;
  @override

  _SecondScreenState()
  {
    _homePresenter = HomePresenter(this);
  }

  void initState()
  {

  }


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Screen"),),
        body: ListView.builder(itemBuilder: (context, position){
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Element $position"),
            subtitle: Text("Subtitle $position"),
            onTap: (){

              _homePresenter.elementCliked(position);
             // _navigateAndDisplaySelection(context);

            },
          );
        },
          itemCount: 20,
          reverse: true,)
    );
  }
  //use the navigateAndDisplaySelection to change and get the position that you tapped on GridLayoutScreen
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that will complete after we call
    // Navigator.pop on the Selection Screen!
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GridLayout()),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result!
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }

  @override
  openSettingsScreen() {
    // TODO: implement openSettingsScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GridLayout()),
    );
  }
}