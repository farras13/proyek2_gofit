import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/helpers/preferences_data.dart';
import 'package:gofits/screens/food_calories_page/food_calories_page.dart';
import 'package:gofits/widgets/route_animation.dart';

class SearchListPage extends StatefulWidget {
  final dataList;

  const SearchListPage({
    Key key,
    this.dataList,
  }) : super(key: key);
  @override
  _SearchListPageState createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  TextEditingController controller = TextEditingController();
  int dataId = 0;
  String name;
  String filter;
  PreferencesData preferencesData = PreferencesData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          color: bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                  child: TextField(
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                    onChanged: (value) {
                      controller.addListener(() {
                        setState(() {
                          filter = value;
                          print(filter);
                        });
                      });
                    },
                    controller: controller,
                  )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: _buildListView(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
        itemCount: widget.dataList.length,
        itemBuilder: (BuildContext context, int index) {
          if (filter == null || filter == "") {
            return _buildRow(widget.dataList[index], index);
          } else {
            if (widget.dataList[index]['name']
                .toLowerCase()
                .contains(filter.toLowerCase())) {
              return _buildRow(widget.dataList[index], index);
            } else {
              return Container();
            }
          }
        });
  }

  Widget _buildRow(c, i) {
    int number = i + 1;
    return ListTile(
      title: Text(
        "${number.toString()}. ${c['name']}",
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        preferencesData.setDataFood(c['name'], c['image']);
        nextPageRemove(context, FoodCaloriesPage());
      },
    );
  }
}
