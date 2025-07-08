import 'package:flutter/material.dart';
import 'package:racist_meme_app/pages/Nigger.dart';

class ItemCard extends StatelessWidget {
  final Nigger nigger;
  const ItemCard({super.key, required this.nigger});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(nigger.pets.toString()),
          Text(nigger.worker.toString()),
          Text(nigger.description.toString()),
        ],
      )
    );
  }
}
