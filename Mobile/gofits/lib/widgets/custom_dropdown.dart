import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

class CustomDropdownActivity extends StatefulWidget {
  final String title;
  final List dataList;
  final Function(String) onChange;

  const CustomDropdownActivity(
      {Key key, this.title, this.dataList, this.onChange})
      : super(key: key);

  @override
  _CustomDropdownActivityState createState() => _CustomDropdownActivityState();
}

class _CustomDropdownActivityState extends State<CustomDropdownActivity> {
  String _selectedName;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton(
        iconDisabledColor: mainColor,
        iconEnabledColor: mainColor,
        isExpanded: true,
        hint: Text(
          _selectedName != null ? _selectedName : widget.title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: "ROB"),
        ),
        items: widget.dataList.map((data) {
          return DropdownMenuItem(
            value: data['name'],
            onTap: () {
              setState(() {
                _selectedName = data['placeholder'];
                isSelected = true;
              });
            },
            child: Container(
              child: Text(
                data['placeholder'],
                style: TextStyle(color: mainColor),
              ),
            ),
          );
        }).toList(),
        onChanged: (value) => widget.onChange(value),
        underline: SizedBox(),
      ),
    );
  }
}
