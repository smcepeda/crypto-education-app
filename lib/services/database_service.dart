import 'package:aha/services/authentication_service.dart';
import 'package:aha/services/entities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Profile convertProfileSnapshotToProfile(DocumentSnapshot snapshot) {
    //return snapshot.data();
    Profile profile = new Profile();
    print("from snapshot: " + snapshot.toString());
    profile.hasCrypto = snapshot["has_crypto"];
    profile.notificationEnabled = snapshot["notification_enabled"];
    profile.birthdayDate = snapshot["birthday_date"];
    profile.goals = snapshot["goals"];
    return profile;
  }

  Map<String, dynamic> convertProfileToMap(Profile profile) {
    return {
      "has_crypto": profile.hasCrypto,
      "notification_enabled": profile.notificationEnabled,
      "birthday_date": profile.birthdayDate,
      "goals": profile.goals,
    };
  }

  Stream<Profile> getProfileStream() {
    return FirebaseFirestore.instance
        .collection("profile")
        .doc(authenticationService.getCurrentUser()!.uid)
        .snapshots()
        .map(convertProfileSnapshotToProfile);
  }

  Future updateProfile(Profile profile) {
    return FirebaseFirestore.instance
        .collection("profile")
        .doc(authenticationService.getCurrentUser()!.uid)
        .set(convertProfileToMap(profile));
  }

  List<Course> convertCourseSnapshotToCourse(QuerySnapshot data) {
    return data.docs.map((QueryDocumentSnapshot courseRawFirebase) {
      //courseRawFirebase.id
      // print("tiene title: " + courseRawFirebase.get("title"));
      // var data = courseRawFirebase.data();
      // print("Course:" + data.toString());
      // print("Title:" + courseRawFirebase['title']);
      return Course(courseRawFirebase.id, courseRawFirebase['title'],
          courseRawFirebase["description"], courseRawFirebase["image"], []);
    }).toList();
  }

  Stream<List<Course>> getCoursesSnapshot() {
    return FirebaseFirestore.instance
        .collection("course")
        .snapshots()
        .map(convertCourseSnapshotToCourse);
  }
}

DatabaseService databaseService = new DatabaseService();
