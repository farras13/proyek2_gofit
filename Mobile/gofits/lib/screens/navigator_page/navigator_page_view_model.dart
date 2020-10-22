import 'package:flutter/material.dart';
import './navigator_page.dart';

abstract class NavigatorPageViewModel extends State<NavigatorPage> {
  int indexPage;

  @override
  void initState() {
    super.initState();
    indexPage = widget.indexPage ?? 0;
  }
}
