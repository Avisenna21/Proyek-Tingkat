import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // Warna latar belakang navigasi
      height: 50.0, // Tinggi navigasi
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Tambahkan aksi untuk navigasi ke halaman beranda
            },
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {
              // Tambahkan aksi untuk navigasi ke halaman pencarian
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Tambahkan aksi untuk navigasi ke halaman notifikasi
            },
          ),
          IconButton(
            icon: Icon(Icons.group),
            onPressed: () {
              // Tambahkan aksi untuk navigasi ke halaman profil
            },
          ),
        ],
      ),
    );
  }
}
