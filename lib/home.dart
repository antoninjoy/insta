import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/dm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/insta.png",
          height: 35,
          fit: BoxFit.contain,
        ),
        titleSpacing: 16, // Adds consistent padding from the left
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InstagramDMPage(),
                ),
              );
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation between tabs
          print("Tapped on index $index");
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 66, 66, 66),
        selectedIconTheme: IconThemeData(size: 24), // Smaller icon size
        unselectedIconTheme: IconThemeData(size: 20),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "reel",
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
