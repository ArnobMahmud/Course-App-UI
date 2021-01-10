import 'dart:ui';

import 'package:course_app_ui/constants/color-module.dart';
import 'package:course_app_ui/models/course-model.dart';
import 'package:course_app_ui/widgets/coursesCard.dart';
import 'package:course_app_ui/widgets/topicsCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            backgroundColor0,
            backgroundColor1,
            backgroundColor2,
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: SafeArea(
            child: Container(
              width: _width,
              padding: EdgeInsets.only(left: 20, right: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bars,
                    size: 30.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Arnob Mahmud",
                      style: UserStyle,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: _width,
                    margin: EdgeInsets.only(right: 30.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Text(
                          "Search",
                          style: GoogleFonts.poppins(
                              color: Colors.grey.withOpacity(0.8),
                              fontSize: 25.0),
                        ),
                        Spacer(),
                        FaIcon(FontAwesomeIcons.search),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Browse by Categories",
                          style: TopicStyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TopicsCard(
                              topic: "Coding",
                              isSelect: true,
                            ),
                            TopicsCard(
                              topic: "Stacks",
                              isSelect: false,
                            ),
                            TopicsCard(
                              topic: "BackTracking",
                              isSelect: false,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TopicsCard(
                              topic: "Linked Lists",
                              isSelect: false,
                            ),
                            TopicsCard(
                              topic: "Recursion",
                              isSelect: false,
                            ),
                            TopicsCard(
                              topic: "11+",
                              isSelect: false,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: _height * 0.43,
                      width: _width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Popular",
                            style: TopicStyle,
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Courses(course: courseList[0]),
                                SizedBox(height: 20),
                                Courses(course: courseList[1]),
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
