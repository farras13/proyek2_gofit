import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                  child: TextField(
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search...",
                    ),
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
            return _buildRow(widget.dataList[index]);
          } else {
            if (widget.dataList[index]['name']
                .toLowerCase()
                .contains(filter.toLowerCase())) {
              return _buildRow(widget.dataList[index]);
            } else {
              return Container();
            }
          }
        });
  }

  Widget _buildRow(c) {
    return ListTile(
      title: Text(
        c['name'],
      ),
      onTap: () {
        // c['id'];
        // c['name'];
      },
    );
  }
}
