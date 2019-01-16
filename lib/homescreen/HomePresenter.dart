import 'package:flutter_app/homescreen/HomeView.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePresenter
{
  HomeView _view;

  HomePresenter(this._view);

  void elementCliked(int position) async{
   /* const url = 'https://flutter.io';
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    */
   _view.openSettingsScreen();
    }
  }

