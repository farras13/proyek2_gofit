import 'package:flutter/material.dart';
import './detail_food_page_view.dart';

class DetailFoodPage extends StatefulWidget {

  final String idFood;
  final String image;

  const DetailFoodPage({Key key, this.idFood, this.image}) : super(key: key);
  
  @override
  DetailFoodPageView createState() => new DetailFoodPageView();
}
  
