import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/widgets/custom_dropdown.dart';
import 'package:gofits/widgets/route_animation.dart';
import './body_calories_page_view_model.dart';

class BodyCaloriesPageView extends BodyCaloriesPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          "Body Calories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.white,
          ),
          onPressed: () {
            backScreen(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            genderChoose(width, height),
            SizedBox(height: height * 0.06),
            boxInputBodyCalorie(width, height),
            SizedBox(height: height * 0.03),
            resultBodyCalorie(width, height),
          ],
        ),
      ),
    );
  }

  Widget resultBodyCalorie(double width, double height) {
    return Column(
      children: [
        Text(
          "The calories you need in one day are",
          style: TextStyle(
            fontSize: width * 0.04,
            color: Colors.white,
            fontFamily: "ROB",
          ),
        ),
        SizedBox(height: height * 0.02),
        Container(
          width: width * 0.4,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "9999 calories",
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontFamily: "ROB",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 6),
              Icon(
                FontAwesome.check_square_o,
                color: Colors.white,
                size: width * 0.045,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget boxInputBodyCalorie(double width, double height) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Card(
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                customInputBodyCalories(
                  width,
                  heightInput,
                  hint: "Input your height",
                ),
                customInputBodyCalories(
                  width,
                  weight,
                  hint: "Input your weight",
                ),
                customInputBodyCalories(
                  width,
                  age,
                  hint: "Input your age",
                ),
                SizedBox(height: 5),
                CustomDropdownActivity(
                  dataList: [],
                  title: "Your Activity",
                  onChange: (value) {},
                ),
                SizedBox(height: 30),
                countBodyCalorieBtn(width)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget genderChoose(double width, double height) {
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width * 0.35,
            height: width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/1898555/pexels-photo-1898555.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
                ),
              ),
            ),
          ),
          Container(
            width: width * 0.35,
            height: width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customInputBodyCalories(
    double width,
    TextEditingController controller, {
    String hint,
    bool isPassword = false,
    keyboardType: TextInputType.text,
    bool isDisabled = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: width,
      height: 40,
      child: Container(
        width: width * 0.6,
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
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
            contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 14),
            hintText: hint,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFamily: "ROB",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget countBodyCalorieBtn(double width) {
    return Center(
      child: Container(
        width: width * 0.6,
        height: 35,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: MaterialButton(
            child: Text(
              "COUNT",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
