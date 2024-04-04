import 'package:flutter/material.dart';
import 'package:job_dream/app/modules/favourite/views/favourite_page.dart';
import 'package:job_dream/app/modules/profile/views/profile_page.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.black, 
      child: Container(
        color: Colors.white, 
        height: 50.0, // Tinggi navigasi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Color(0xFF38A692)), // Change icon color here
              onPressed: () {
                // Tambahkan aksi untuk navigasi ke halaman beranda
              },
            ),
            IconButton(
              icon: Icon(Icons.bookmark, color: Color(0xFF38A692)), // Change icon color here
              onPressed: () {
                Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavouritePage()),
                    );
              },
            ),
            IconButton(
              icon: Icon(Icons.groups_2, color: Color(0xFF38A692)), // Change icon color here
              onPressed: () {
                // Tambahkan aksi untuk navigasi ke halaman notifikasi
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Color(0xFF38A692)), // Change icon color here
              onPressed: () {
                 Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
