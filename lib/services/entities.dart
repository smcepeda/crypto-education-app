import 'package:cloud_firestore/cloud_firestore.dart';

/** Platform State **/
class Course {
  /** CourseDefinitnio */
  String id;
  String title;
  String description;
  String image;
  List<CourseUnit> units = [];

  Course(
    this.id,
    this.title,
    this.description,
    this.image,
    this.units,
  );
}

class CourseUnit {
  /* CourseUnitDefinition */
  String id;
  String title;
  String description;
  String content; // TODO: Define this properly

  toString() {
    return '$id';
  }

  CourseUnit(this.id, this.title, this.description, this.content);
}

/** User Specific State */

enum Goals { learnBasics, firstInvestment }

class Profile {
  // Enum? goals;
  String? goals;
  bool hasCrypto = false;
  Timestamp? birthdayDate;
  bool notificationEnabled = false;
  List<CourseParticipation> courseParticipations = [];
}

class CourseParticipation {
  String courseId;
  bool courseCompleted = false;

  List<String> courseUnitIdsCompleted = [];

  CourseParticipation(this.courseId, this.courseCompleted);

  bool isCourseUnitCompleted(String courseUnitId) {
    /*
    return courseUnitIdsCompleted.firstWhere(
            (element) => element == courseUnitId,
            orElse: () => null) != null;
            */
    // TODO: Broken fix me!
    return false;
  }
}
