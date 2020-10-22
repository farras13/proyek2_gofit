import 'package:flutter/material.dart';

Route routeTo(page) {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 600),
    pageBuilder: (context, animation, secondoryAnimation) => page,
    transitionsBuilder: (context, animation, scondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

void nextPage(BuildContext context, dynamic page) {
  Navigator.of(context).push(routeTo(page));
}

void nextPageReplacement(BuildContext context, dynamic page) {
  Navigator.of(context).pushReplacement(routeTo(page));
}

void nextPageRemove(BuildContext context, dynamic page) {
  Navigator.of(context).pushAndRemoveUntil(routeTo(page), (route) => false);
}

void backScreen(BuildContext context) {
  Navigator.of(context).pop();
}
