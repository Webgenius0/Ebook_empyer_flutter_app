// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class PerformanceBar extends StatelessWidget {
//   final Color fillColor;
//   final double width;

//   const PerformanceBar({
//     super.key,
//     required this.fillColor,
//     required this.width,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         // height: 6.h,
//         // width: 100.w,
//         width: 100.w,
//         height: 8.0,
//         decoration: BoxDecoration(
//           color: Colors.grey[300], // Background color of the bar
//           borderRadius: BorderRadius.circular(4.0), // Rounded edges
//         ),
//         // decoration: BoxDecoration(
//         //     borderRadius: BorderRadius.circular(8.r), color: Colors.white),
//         child: FractionallySizedBox(
//           alignment: Alignment.centerLeft,
//           widthFactor: width / 100,
//           child: Container(
//             // margin: EdgeInsets.only(right: (100.w / 100) * (100 - width)),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8.r), color: fillColor),
//           ),
//         ));
//   }
// }
