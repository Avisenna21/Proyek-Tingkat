import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const ProfileCard(
      {Key? key,
      required this.name,
      required this.email,
      required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 400, // Adjust the width here
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Card(
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.black, width: 1.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Color(0xFF38A692),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(email,
                            style: const TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 10)),
                      ),
                      Text(phone,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}