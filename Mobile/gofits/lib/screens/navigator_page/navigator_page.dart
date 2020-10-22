import 'package:flutter/material.dart';
import './navigator_page_view.dart';

class NavigatorPage extends StatefulWidget {
  final int indexPage;

  const NavigatorPage({Key key, this.indexPage}) : super(key: key);
  
  @override
  NavigatorPageView createState() => new NavigatorPageView();
}
  
