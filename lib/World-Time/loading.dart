import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String displayText = 'Loading...';

  void getData() async {
    try {
      final response = await http.get(
        Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=Asia/Tokyo'),
      );

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        print(data);

        setState(() {
          displayText = 'Time in Tokyo: ${data['dateTime']}';
        });
      } else {
        print('Failed to load data: ${response.statusCode}');
        setState(() {
          displayText = 'Failed to load data';
        });
      }
    } catch (e) {
      print('Error occurred: $e');
      setState(() {
        displayText = 'Something went wrong!';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            displayText,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
