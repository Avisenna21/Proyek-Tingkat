import 'package:flutter/material.dart';
import 'package:job_dream/app/modules/favourite/views/favourite_page.dart';
import 'package:job_dream/app/modules/loading/views/loading_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:job_dream/app/widgets/favourite_card.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: FavouritePage(),
    ),
  ));
}