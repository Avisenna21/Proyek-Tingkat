import 'package:flutter/material.dart';

class Course {
  final String title;
  final String subtitle;
  final String imagePath;

  const Course(
      {required this.title, required this.subtitle, required this.imagePath});
}

class CourseTile extends StatelessWidget {
  final Course course;

  const CourseTile({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(course.imagePath),
          ),
          const SizedBox(height: 8),
          Text(
            course.title,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(course.subtitle),
        ],
      ),
    );
  }
}

class CommunityPage extends StatelessWidget {
  final courses = [
    const Course(
        title: "Database Design &\nProgramming with SQL",
        subtitle: "Online",
        imagePath: "assets/img/oracle.png"),
    const Course(
        title: "Azure for Beginner: Azure \nFundamentals",
        subtitle: "Online",
        imagePath: "assets/img/azure.png"),
    const Course(
        title: "5G Technology for \nBeginner",
        subtitle: "Online",
        imagePath: "assets/img/5g.png"),
    const Course(
        title: "Big Data Using Python",
        subtitle: "Online",
        imagePath: "assets/img/bigdata.png"),
    const Course(
        title: "5G Technology for \nBeginner",
        subtitle: "Online",
        imagePath: "assets/img/aiforjuniordev.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/img/skills.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Explore and Improve \nYour Skill',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Material(
                        elevation: 5,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari Pekerjaan atau Pelatihan',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return CourseTile(course: courses[index]);
                },
                childCount: courses.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
