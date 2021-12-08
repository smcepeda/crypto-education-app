import 'package:aha/screens/course_content.dart';
import 'package:aha/services/entities.dart';
import 'package:aha/widgets/course_unit_widget.dart';
import 'package:flutter/material.dart';

class CourseUnitWidget extends StatelessWidget {
  const CourseUnitWidget(
      {Key? key, required this.course, required this.courseUnit})
      : super(key: key);

  final Course course;
  final CourseUnit courseUnit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(width: 1, color: Color(0XFFEBECEF))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.check_circle, color: Color(0xFF757C8E)),
                title: Text(courseUnit.title),
                subtitle: Text(courseUnit.description),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0XFF757C8E)),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => CourseContent(
                  //           course: course, courseUnit: this.courseUnit),
                  //     ));
                }),
          ],
        ),
      ),
    );
  }
}
