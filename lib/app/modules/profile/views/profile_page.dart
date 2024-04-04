

import 'package:flutter/material.dart';
import 'package:job_dream/app/widgets/navbar.dart';
import 'package:job_dream/app/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: const Color(0xFF38A692),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileCard(name: "Tyandra Antanita", email: "Tyandra Antanita@gmail.com", phone: "081234567890"),
          Container(
            height: 400, // Set the desired height for the ListView
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                List<String> items = [
                  "Akun Personal",
                  "Bantuan",
                  "Alat Input",
                  "Ganti Bahasa",
                  "Beri Rating",
                  "Notifikasi",
                  "Ganti Password",
                ];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text(items[index]),
                    trailing: Icon(Icons.arrow_forward_ios),
                    tileColor: Colors.transparent,
                    shape: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}