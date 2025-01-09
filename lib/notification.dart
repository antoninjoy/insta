import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/home.dart';
import 'package:instagram/search.dart';
import 'package:instagram/profile.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
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
      body: Expanded(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const ListTile(
                leading: Text(
                  "Today",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/p2.jpg"),
                ),
                title: Text("antonin,assil other liked your post"),
                trailing: Expanded(
                  child: SizedBox(
                    child: Image.asset("assets/default.jpg"),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/profile.jpg"),
                ),
                title: Text("_Thomas,albin_3,Joh_n other liked your post"),
                trailing: Expanded(
                  child: SizedBox(
                    child: Image.asset("assets/p2.jpg"),
                  ),
                ),
              ),
              ListTile(
                leading: Text(
                  "Yesterday",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/default.jpg"),
                ),
                title: Text("joyal,meme other liked your post"),
                trailing: Expanded(
                  child: SizedBox(
                    child: Image.asset("assets/scotti.jpg"),
                  ),
                ),
              ),
              ListTile(
                leading: Text(
                  "7 days ago",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/default.jpg"),
                ),
                title: Text("john,jimmmmy other liked your post"),
                trailing: Expanded(
                  child: SizedBox(
                    child: Image.asset("assets/rayan.jpg"),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/p2.JPG"),
                ),
                title: Text("giym,Martha_9 and 67 other liked your post"),
                trailing: Expanded(
                  child: SizedBox(
                    child: Image.asset("assets/socretis.jpg"),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/rdr.jpg"),
                ),
                title: Text("Tobey,dim,tim other liked your post"),
                trailing: Expanded(
                  child: SizedBox(
                    child: Image.asset("assets/SUPERMAN.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
