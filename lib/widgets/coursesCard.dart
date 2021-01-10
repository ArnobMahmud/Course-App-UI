import 'package:course_app_ui/constants/color-module.dart';
import 'package:course_app_ui/models/course-model.dart';
import 'package:course_app_ui/pages/course-page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Courses extends StatelessWidget {
  final Course course;
  Courses({this.course});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetails(),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            height: _height * 0.17,
            width: _height * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(course.courseImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    course.authorImage,
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  course.courseAuthor,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Container(
                  width: _width * 0.5,
                  child: Text(
                    course.courseName,
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                      color: blackColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
