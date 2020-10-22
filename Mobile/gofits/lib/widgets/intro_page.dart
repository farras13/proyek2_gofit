import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/login_page/login_page.dart';
import 'package:gofits/widgets/route_animation.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentPage = 0;
  PageController controller = PageController();
  void navigationTapped(int page) {
    controller.animateToPage(page,
        curve: Curves.ease, duration: Duration(milliseconds: 500));
    setState(() {
      currentPage = page;
    });
  }

  List dataImage = [
    {
      "image": "intro1",
      "title": "Body Workout",
      "subtitle":
          "Go Fit provides various types of exercises to grow your muscle and increase the strength of your body"
    },
    {
      "image": "intro2",
      "title": "Body Workout",
      "subtitle":
          "Go Fit provides various types of exercises to grow your muscle and increase the strength of your body"
    },
    {
      "image": "intro3",
      "title": "Body Workout",
      "subtitle":
          "Go Fit provides various types of exercises to grow your muscle and increase the strength of your body"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          itemCount: dataImage.length,
          itemBuilder: (context, i) {
            return buildBg(
              width,
              height,
              dataImage[i]['image'],
              dataImage[i]['title'],
              dataImage[i]['subtitle'],
            );
          }),
    );
  }

  Widget buildBg(
    double width,
    double height,
    String image,
    String title,
    String subtitle,
  ) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/$image.png",
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: titleText,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 76, vertical: 12),
                    child: Text(
                      subtitle,
                      style: smallText2,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentPage == 0
                    ? SizedBox(
                        width: 72,
                      )
                    : MaterialButton(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          navigationTapped(currentPage - 1);
                        },
                      ),
                if (currentPage == 0)
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        width: 10,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                if (currentPage == 1)
                  Row(
                    children: [
                      Container(
                        width: 10,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                if (currentPage == 2)
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),
                currentPage == 2
                    ? Container(
                        width: 65,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(3),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            nextPageRemove(context, LoginPage());
                          },
                          child: Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 13,
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : MaterialButton(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          navigationTapped(currentPage + 1);
                        },
                      ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
