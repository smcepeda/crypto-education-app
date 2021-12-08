import 'package:aha/screens/course_detail.dart';
import 'package:aha/services/entities.dart';

import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({Key? key, required this.course}) : super(key: key);

  final Course course;

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
          children: <Widget>[
            ListTile(
                subtitle: Container(
                    child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.grey),
                    SizedBox(width: 5),
                    Text("not completed")
                  ],
                )),
                leading: Image.asset(course.image),
                title: Text(course.title),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseDetail(course: course),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
