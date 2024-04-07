import 'package:flutter/material.dart';

class Course {
  final String title;
  final String subtitle;
  final String imagePath;

  const Course({required this.title, required this.subtitle, required this.imagePath});
}

class CourseTile extends StatelessWidget {
  final Course course;

  const CourseTile({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children :[
          Image.asset(course.imagePath),
          Text(course.title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Text(course.subtitle),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final courses = [
    Course(title: "Microservices", subtitle: "Database Design & Programming with SQL", imagePath: "path/to/image1.jpg"),
    Course(title: "Azure", subtitle: "Azure for Beginner: Azure Fundamentals", imagePath: "path/to/image2.jpg"),
    // ... Add other courses
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: courses.length,
        itemBuilder: (context, index) => CourseTile(course: courses[index]),
      ),
    );
  }
}
