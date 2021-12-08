import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:aha/widgets/course_widget.dart';
import 'package:flutter/material.dart';

class CourseOverviewScreen extends StatelessWidget {
  static const routeName = 'course-overview';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: databaseService.getCoursesSnapshot(),
        builder: (context, AsyncSnapshot<List<Course>> snapshot) {
          if (snapshot.hasData) {
            List<Course> courses = snapshot.data!;

            print("snapshot: " + snapshot.data![0].title);
            print("courses: " + courses[0].description);
            courses.forEach((course) {
              print("course.title: " + course.title);
            });

            return Scaffold(
              body: SafeArea(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text("Your classes",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, top: 10, right: 20.0),
                      height: 80,
                      child: Card(
                        color: Color(0XFFEDFEFA),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(children: [
                          SizedBox(height: 5),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 20.0, top: 10, right: 20.0),
                            child: Row(children: [
                              Expanded(
                                  child: Text("Overall progress",
                                      style: TextStyle(fontSize: 16))),
                              Text("35%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ]),
                          ),
                          SizedBox(height: 5),
                          Container(
                              alignment: Alignment.topCenter,
                              margin: const EdgeInsets.only(
                                  left: 20.0, top: 10, right: 20.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.4,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      Color(0XFF15E3B3)),
                                  backgroundColor: Colors.white,
                                  minHeight: 8,
                                ),
                              )),
                        ]),
                      ),
                    ),
                    Column(
                        children: courses.map((course) {
                      return CourseWidget(course: course);
                    }).toList()),
                  ],
                ),
              )),
            );
          }

          return Center(child: CircularProgressIndicator());
        });
  }
}
