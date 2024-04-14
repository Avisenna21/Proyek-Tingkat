import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_dream/app/widgets/navbar.dart';
import 'package:job_dream/app/widgets/primary_card.dart';
import 'package:job_dream/app/widgets/secondary_card.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

final User user = FirebaseAuth.instance.currentUser!;


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    children: [
                    CircleAvatar(
                      backgroundImage: user.photoURL != null
                      ? NetworkImage(user.photoURL!) as ImageProvider<Object>?
                      : const AssetImage('assets/img/placeholder.png'),
                      backgroundColor: user.photoURL != null ? null : Colors.grey,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        'Welcome back',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                        ),
                        Text(
                        user.displayName ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                      // Handle notification icon press
                      },
                    ),
                    ],
                  ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pekerjaan Terbaru',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF38A692),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 300,
                      child: const PrimaryCard(
                          role: "UI/UX Designer",
                          company: "AWS Company",
                          address: "Oakland, CA",
                          picture: 'assets/img/aws.png'),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pelatihan Terbaru',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF38A692),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 300,
                      child: SecondaryCard(
                        title: "UI/UX Designer",
                        subTitle: "AWS Company",
                        image: 'assets/img/aws.png',
                        rating: "4.8",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
