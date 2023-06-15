// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class SquareTile extends StatelessWidget {
//   final String Imagepath;
//   final String Connect;
//   SquareTile({
//     super.key,
//     required this.Imagepath,
//     required this.Connect,
//   });

//   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(horizontal: 25.0),
// //       decoration: BoxDecoration(
// //         border: Border.all(color: Colors.white),
// //         borderRadius: BorderRadius.all(
// //           Radius.circular(20),
// //         ),
// //         color: Colors.grey[200],
// //       ),
// //       child: Image.asset(
// //         Imagepath,
// //         height: 40,
// //       ),
// //     );
// //   }
// // }
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 20),
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Center(
//             child: Image.asset(
//               Imagepath,
//               height: 40,
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Text(Connect),
//         ],
//       ),
//     );
//   }
// }
