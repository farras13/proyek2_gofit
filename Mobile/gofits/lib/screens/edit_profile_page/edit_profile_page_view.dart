import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/edit_profile_page/widget/edit_profile_widget.dart';
import 'package:gofits/widgets/route_animation.dart';
import './edit_profile_page_view_model.dart';

class EditProfilePageView extends EditProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Replace this with your build function
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              backScreen(context);
            }),
        title: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            editImageSection(width, dataImage),
            boxEditInput(width, height),
          ],
        ),
      ),
    );
  }

  Widget boxEditInput(double width, double height) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mainContainerX),
      child: Column(
        children: [
          customInput(width, "Name", name, hint: "Name"),
          customInput(width, "Location", location, hint: "Location"),
          customInput(width, "Height", heightInput,
              keyboardType: TextInputType.number, hint: "Height"),
          customInput(width, "Weight", weight,
              keyboardType: TextInputType.number, hint: "Weight"),
          customInput(width, "Age", age,
              keyboardType: TextInputType.number, hint: "Age"),
          customInput(width, "Quote", quote, hint: "Quote"),
        ],
      ),
    );
  }

  Widget customInput(
    double width,
    String title,
    TextEditingController controller, {
    String hint,
    bool isPassword = false,
    keyboardType: TextInputType.text,
    bool isDisabled = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: width,
      height: 40,
      child: Container(
        width: width * 0.6,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white),
          ),
        ),
        child: TextField(
          obscureText: isPassword == true && isVisible == true,
          scrollPadding: EdgeInsets.zero,
          cursorColor: Colors.white,
          keyboardType: keyboardType,
          controller: controller,
          style: TextStyle(
            fontFamily: "ROB",
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10),
            hintText: hint,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFamily: "ROB",
              color: mainColor,
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      isVisible ? FontAwesome.eye_slash : FontAwesome.eye,
                      size: width * 0.04,
                      color: Colors.white,
                    ),
                    onPressed: () => changeVisible())
                : SizedBox(),
          ),
          readOnly: isDisabled,
        ),
      ),
    );
  }
}
