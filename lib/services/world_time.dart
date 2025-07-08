import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  final String location;
  final String flag;
  final String url;

  late String time;
  late bool isDaytime;

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      final response = await http.get(
        Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        String datetime = data['dateTime'];

        DateTime now = DateTime.parse(datetime);
        isDaytime = now.hour > 6 && now.hour < 20;
        time = DateFormat.jm().format(now);
      } else {
        throw Exception('Failed to load time');
      }
    } catch (e) {
      print('Error fetching time: $e');
      time = 'Could not get time';
      isDaytime = true;
    }
  }
}
