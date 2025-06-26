import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MemeFeedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MemeFeedPage extends StatefulWidget {
  const MemeFeedPage({super.key});

  @override
  State<MemeFeedPage> createState() => _MemeFeedPageState();
}

class _MemeFeedPageState extends State<MemeFeedPage> {
  int _selectedIndex = 0;

  final List<Widget> memePosts = const [
    MemePost(
      username: "TigerTheThrid",
      description:
      "Little drawing I did for my friends (they gave me an image and I had to make a comic) :)",
      icon: Icons.pets,
    ),
    MemePost(
      username: "khanTahsinAbrar",
      description:
      "Here I am, most powerful human in the world, filled with love",
      icon: Icons.sunny,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
            title: Row(
              children: const [
                Icon(Icons.emoji_emotions, color: Colors.purple),
                SizedBox(width: 8),
                Text(
                  "Meme Feed",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: const [
              Icon(Icons.refresh, color: Colors.black),
              SizedBox(width: 12),
            ],
          ),
        ],
        body: ListView.builder(
          padding: const EdgeInsets.only(bottom: 80),
          itemCount: memePosts.length,
          itemBuilder: (context, index) => memePosts[index],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class MemePost extends StatelessWidget {
  final String username;
  final String description;
  final IconData icon;

  const MemePost({
    super.key,
    required this.username,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(child: Text(username[0])),
            title: Text(username),
            subtitle: Text(description),
            trailing: const Icon(Icons.sentiment_neutral),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(icon, size: 100, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
