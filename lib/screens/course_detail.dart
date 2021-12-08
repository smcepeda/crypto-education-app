import 'package:aha/services/entities.dart';
import 'package:aha/widgets/course_unit_widget.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image(
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * (2 / 10),
                    image: AssetImage(course.image),
                  ))),
          SizedBox(height: 10),
          Column(
              children: course.units.map((courseUnit) {
            return CourseUnitWidget(course: course, courseUnit: courseUnit);
          }).toList())
        ]),
      )),
    );
  }
}
