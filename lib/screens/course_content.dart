// import 'package:aha/services/entities.dart';
// import 'package:aha/services/providers.dart';
// import 'package:aha/widgets/buttons.dart';
// import 'package:aha/widgets/onboarding_frame.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class CourseContent extends StatelessWidget {
//   const CourseContent(
//       {Key? key, required this.course, required this.courseUnit})
//       : super(key: key);

//   final Course course;
//   final CourseUnit courseUnit;

//   @override
//   Widget build(BuildContext context) {
//     return OnboardingFrame(
//       title: courseUnit.title,
//       progress: 1 / 6,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Flexible(
//                     child: Padding(
//                         padding: EdgeInsets.only(top: 10),
//                         child: Image(
//                           width: MediaQuery.of(context).size.width * (3 / 10),
//                           image: AssetImage("assets/images/course1.png"),
//                         ))),
//               ],
//             ),
//           ),
//           SafeArea(
//             top: false,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 SizedBox(
//                     child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   child: Text(
//                     "Eine Blockchain ist eine kryptografisch rückwärts verkettete Liste.",
//                     style: TextStyle(
//                       fontSize: 17,
//                     ),
//                     textAlign: TextAlign.start,
//                   ),
//                 )),
//                 SizedBox(
//                     child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                   child: Text(
//                     "Alle Daten zu Inhabern und Bewegungen werden verschlüsselt gespeichert. Und zwar nicht nur auf einem Server, sondern auf mehreren tausend gleichzeitig. ",
//                     style: TextStyle(
//                       fontSize: 17,
//                     ),
//                     textAlign: TextAlign.start,
//                   ),
//                 )),
//                 SizedBox(
//                     child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                   child: Text(
//                     "Jede Transaktion ist so dezentral in einem Netzwerk gespeichert. Darum ist es fast unmöglich, Transaktionen zu fälschen. Dieses System nennt sich Blockchain.",
//                     style: TextStyle(
//                       fontSize: 17,
//                     ),
//                     textAlign: TextAlign.start,
//                   ),
//                 )),
//                 SizedBox(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 24),
//                     // child: PrimaryButton(
//                     //   text: "Complete",
//                     //   onTap: () {
//                     //     Navigator.pop(context);
//                         // AmplitudeManager.analytics
//                         //     .logEvent('v1_CourseBlockchainDigitalMoney');
//                         // Navigator.pushNamed(
//                         //     context, CourseBlockchainFinance. routeName);
//                       },
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
//                   // // // child: TermsAndPrivacyWidget(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
