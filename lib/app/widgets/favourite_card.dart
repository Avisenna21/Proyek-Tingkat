import 'package:flutter/material.dart';

class FavouriteCard extends StatelessWidget {
  final String role;
  final String company;
  final String address;

  const FavouriteCard(
      {Key? key,
      required this.role,
      required this.company,
      required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(role,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25)),
            Text(company,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
            Text(address,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
          ],
        ),
      ),
    ));
  }
}
