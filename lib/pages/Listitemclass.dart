import 'package:flutter/material.dart';
import 'package:racist_meme_app/pages/ItemCard.dart';
import 'package:racist_meme_app/pages/Nigger.dart';

class Listitemclass extends StatefulWidget {
  const Listitemclass({super.key});

  @override
  State<Listitemclass> createState() => _ListitemclassState();
}

class _ListitemclassState extends State<Listitemclass> {
  List<Nigger> nigger = [
    Nigger(pets: 'bespren', worker: 'yes', description: "petpeeve", amount: 1),
    // Add more sample items if you want
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expense",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 4,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: nigger.map((nigger) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nigger.pets,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.work, size: 18, color: Colors.grey[700]),
                      SizedBox(width: 6),
                      Text(
                        nigger.worker,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.description, size: 18, color: Colors.grey[700]),
                      SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          nigger.description,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Amount: ${nigger.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
    );
  }
}
