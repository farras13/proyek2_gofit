import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/register_page/widgets/register_widget.dart';
import 'package:gofits/widgets/route_animation.dart';
import './register_page_view_model.dart';

class RegisterPageView extends RegisterPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/mbak.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              headerRegisterPage(width, height),
              SizedBox(height: 8),
              formRegister(width),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget formRegister(double width) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 36),
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: mainColor,
                  ),
                ),
              ),
              child: TextField(
                style: TextStyle(
                  color: inputColor,
                  fontSize: 15,
                ),
                keyboardType: TextInputType.text,
                controller: nameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                    color: inputColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Email",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: mainColor,
                  ),
                ),
              ),
              child: TextField(
                style: TextStyle(
                  color: inputColor,
                  fontSize: 15,
                ),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    color: inputColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: mainColor,
                  ),
                ),
              ),
              child: TextField(
                style: TextStyle(
                  color: inputColor,
                  fontSize: 15,
                ),
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: inputColor,
                    fontSize: 15,
                  ),
                  suffix: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: Icon(
                        !isVisible ? FontAwesome.eye_slash : FontAwesome.eye,
                        size: 18,
                        color: mainColor,
                      ),
                    ),
                    onTap: () => changeVisibility(),
                  ),
                ),
                obscureText: isVisible,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Gender",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            SizedBox(height: 12),
            toggleButtonGender(width),
            SizedBox(height: 12),
            Text(
              "Heigth",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: mainColor,
                  ),
                ),
              ),
              child: TextField(
                style: TextStyle(
                  color: inputColor,
                  fontSize: 15,
                ),
                keyboardType: TextInputType.number,
                controller: heightController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your height",
                    hintStyle: TextStyle(
                      color: inputColor,
                      fontSize: 15,
                    ),
                    suffixText: "cm",
                    suffixStyle: TextStyle(
                      color: inputColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 15,
                    )),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Weight",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Container(
              width: width,
              height: 48,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: mainColor,
                  ),
                ),
              ),
              child: TextField(
                style: TextStyle(
                  color: inputColor,
                  fontSize: 15,
                ),
                keyboardType: TextInputType.number,
                controller: weightController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your weight",
                  hintStyle: TextStyle(
                    color: inputColor,
                    fontSize: 15,
                  ),
                  suffixText: "Kg",
                  suffixStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: inputColor,
                    letterSpacing: 1,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            registerBtn(width),
          ],
        ),
      ),
    );
  }

  Widget registerBtn(double width) {
    return Center(
      child: Container(
        width: width,
        height: 40,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: mainColor),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: MaterialButton(
            child: Text(
              "SIGN UP",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            onPressed: () {
              backScreen(context);
            },
          ),
        ),
      ),
    );
  }

  Widget genderWidget(Icon dataIcon, Color color, String value, int id) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 40,
      height: 40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: dataIcon,
    );
  }

  Widget toggleButtonGender(double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: ToggleButtons(
            borderWidth: 2,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            fillColor: mainColor,
            borderColor: mainColor,
            splashColor: Colors.white,
            selectedColor: Colors.white,
            selectedBorderColor: mainColor,
            color: Colors.white,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesome.male,
                      size: 19,
                    ),
                    SizedBox(height: 2),
                    Text(
                      " Male ",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesome.female,
                      size: 19,
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Female",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
            isSelected: isSelected,
            onPressed: (int index) {
              FocusScope.of(context).requestFocus(FocusNode());
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
              setState(() {
                if (index == 0) {
                  gender = "Male";
                } else {
                  gender = "Female";
                }
                print(gender);
              });
            },
          ),
        ),
      ],
    );
  }
}
