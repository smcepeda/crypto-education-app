import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';

import 'package:aha/widgets/tool_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: databaseService.getCoursesSnapshot(),
        builder: (context, AsyncSnapshot<List<Course>> snapshot) {
          if (snapshot.hasData) {
            List<Course> courses = snapshot.data!;
            courses.map((course) {
              print(course.title.toString());
            });

            return Scaffold(
              body: SingleChildScrollView(
                child: SafeArea(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Expanded(
                          child: Text("Your daily tasks",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 30.0),
                            width: 70,
                            child: Row(
                              children: [
                                Expanded(child: Text("1/3")),
                                Flexible(
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: 0.4,
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              Color(0XFF15E3B3)),
                                      backgroundColor: Color(0XFFEDF1F3),
                                      minHeight: 4,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Column(
                    //     children: courses.map((course) {
                    //   return CourseUnit(
                    //       course: course, courseUnit: course.units[0]);
                    // }).toList()),
                    Container(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Text("Your portfolio",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 6),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          left: 20.0, top: 10, right: 20.0),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side:
                                BorderSide(width: 1, color: Color(0XFFEBECEF))),
                        child: Container(
                          height: 70,
                          child: Center(
                            child: ListTile(
                              title: Text('\$23,596',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22)),
                              trailing: Text("+ 13.2%",
                                  style: TextStyle(color: Color(0XFF13F2BE))),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ToolWidget()
                  ],
                )),
              ),
            );
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
