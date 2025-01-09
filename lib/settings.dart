import 'package:flutter/material.dart';
import 'package:instagram/login.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Edit Profile", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.edit, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title:
                Text("Privacy Settings", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.lock, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            ),
            leading: Icon(Icons.notifications, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title:
                Text("Change Password", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.lock_outline, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Log Out",
              style: TextStyle(color: Colors.green),
            ),
            leading: Icon(
              Icons.logout,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Saved", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.bookmark_border, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title:
                Text("Blocked Accounts", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.block, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Close Friends", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.group_add, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Your Activity", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.access_time, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Tags and Mentions",
                style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.tag_faces, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Comments", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.comment, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Favorites", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.favorite_border, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Family Center", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.family_restroom, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("Help", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.help, color: Colors.black),
            onTap: () {},
          ),
          ListTile(
            title: Text("About", style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.info, color: Colors.black),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
