import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/dm.dart';
import 'package:instagram/notification.dart';
import 'package:instagram/search.dart';
import 'package:instagram/settings.dart';
import 'package:instagram/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<bool> likes = [false, false]; // For managing like states

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
          errorBuilder: (context, error, stackTrace) {
            return const Text(
              "Add Image",
              style: TextStyle(color: Colors.black, fontSize: 18),
            );
          },
        ),
        titleSpacing: 16, // Adds consistent padding from the left
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage(),
                ),
              );
            },
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InstagramDMPage(),
                ),
              );
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Horizontal Scrollable Story Avatars
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildStoryAvatar("assets/team6.png", "My story", Container()),
                _buildStoryAvatar("assets/profile.jpg", "antonin", Container()),
                _buildStoryAvatar("assets/p3.jpg", "aswin", Container()),
                _buildStoryAvatar("assets/scotti.jpg", "alan", Container()),
                _buildStoryAvatar("assets/p2.jpg", "ashil", Container()),
                _buildStoryAvatar("assets/default.jpg", "junaid", Container()),
              ],
            ),
          ),

          // Posts
          _buildPost(
            postIndex: 0,
            userImage: "assets/profile.jpg",
            postImage: "assets/adidas.jpg",
            username: "antonin",
            location: "anchal",
            caption: "yolo!",
          ),
          _buildPost(
            postIndex: 1,
            userImage: "assets/p2.jpg",
            postImage: "assets/messi.jpg",
            username: "ashil",
            location: "thengana",
            caption: "deyum! ",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab
          });

          // Handle navigation for each button
          if (index == 0) {
            // Home
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            // Search
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Search()),
            );
          } else if (index == 4) {
            // Profile
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 66, 66, 66),
        selectedIconTheme: const IconThemeData(size: 24), // Smaller icon size
        unselectedIconTheme: const IconThemeData(size: 20),
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

  Widget _buildStoryAvatar(
      String imagePath, String username, Widget destinationScreen) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => destinationScreen),
              );
            },
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            username,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPost({
    required int postIndex,
    required String userImage,
    required String postImage,
    required String username,
    required String location,
    required String caption,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post Header
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(userImage),
          ),
          title: Text(username),
          subtitle: Text(location),
          trailing: const Icon(Icons.more_vert),
        ),

        Image.asset(
          postImage,
          fit: BoxFit.cover,
          height: 300,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  likes[postIndex] = !likes[postIndex];
                });
              },
              icon: Icon(
                likes[postIndex]
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: likes[postIndex] ? Colors.red : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ],
        ),
        // Likes Count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Liked by aswin and others",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$username ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: caption,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        // Comments Section
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "View all 44 comments",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
