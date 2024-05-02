import 'package:flutter/material.dart';
import 'package:students_details/screen/student_detail.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme
      home: StudentDetailsScreen(),
    );
  }
}
