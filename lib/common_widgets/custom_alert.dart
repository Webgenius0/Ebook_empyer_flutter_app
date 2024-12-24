import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(27),
      ),
      content: SizedBox(
        width: 342.w,
        height: 486.h,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text("Close Alert"),
          ),
        ),
      ),
    );
  }
}
