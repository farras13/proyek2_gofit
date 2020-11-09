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
            total == null ? SizedBox() : resultBMR(width, height),
            SizedBox(height: height * 0.02),
            total == null ? SizedBox() : resultBodyCalorie(width, height),
          ],
        ),
      ),
    );
  }

  Widget resultBMR(double width, double height) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Text(
            "your BMR are :",
            style: TextStyle(
              fontSize: width * 0.03,
              color: Colors.white,
              fontFamily: "ROB",
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "$subtotal kkal",
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontFamily: "ROB",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              FontAwesome.check_square_o,
              color: Colors.white,
              size: 21,
            )
          ],
        )
      ],
    );
  }

  Widget resultBodyCalorie(double width, double height) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Text(
            "This is the MINIMUM number of calories per day to make your body fit : ",
            style: TextStyle(
              fontSize: width * 0.03,
              color: Colors.white,
              fontFamily: "ROB",
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "$total kkal",
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontFamily: "ROB",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              FontAwesome.check_square_o,
              color: Colors.white,
              size: 21,
            )
          ],
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
                  textData: "cm",
                ),
                customInputBodyCalories(
                  width,
                  weight,
                  hint: "Input your weight",
                  textData: "kg",
                ),
                customInputBodyCalories(
                  width,
                  age,
                  hint: "Input your age",
                  textData: "years old",
                ),
                SizedBox(height: 5),
                CustomDropdownActivity(
                  dataList: activityList,
                  title: "Your Activity",
                  onChange: (value) {
                    setState(() {
                      selectedActivity = activityList[value];
                      print(selectedActivity);
                    });
                  },
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
          InkWell(
            onTap: () {
              setState(() {
                selected = 0;
                selectedGender = genderList[1];
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: width * 0.365,
                  height: width * 0.365,
                  decoration: BoxDecoration(
                    color: (selected != null && selected == 0)
                        ? Colors.white
                        : bgColor,
                    borderRadius: BorderRadius.circular(5),
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
                        "https://images.pexels.com/photos/1898555/pexels-photo-1898555.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selected = 1;
                selectedGender = genderList[0];
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: width * 0.365,
                  height: width * 0.365,
                  decoration: BoxDecoration(
                    color: (selected != null && selected == 1)
                        ? Colors.white
                        : bgColor,
                    borderRadius: BorderRadius.circular(5),
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
          ),
        ],
      ),
    );
  }

  Widget customInputBodyCalories(
    double width,
    TextEditingController controller, {
    String hint,
    String textData = "",
    bool isPassword = false,
    keyboardType: TextInputType.number,
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
          cursorColor: mainColor,
          keyboardType: keyboardType,
          controller: controller,
          style: TextStyle(
            fontFamily: "ROB",
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(12, 4, 12, 14),
            hintText: hint,
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 8.0),
              child: Text(
                textData,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: "ROB",
                  color: Colors.white,
                ),
              ),
            ),
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
            onPressed: () {
              onPressedCount();
            },
          ),
        ),
      ),
    );
  }
}
