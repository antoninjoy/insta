import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/home.dart';

void main() {
  runApp(InstagramDMPage());
}

// Create User class to store user data
class User {
  final String name;
  final String profilePicture;
  final String lastMessage;
  final String? note;
  final bool isUnread;

  User({
    required this.name,
    required this.profilePicture,
    required this.lastMessage,
    this.note,
    this.isUnread = false,
  });
}

class InstagramDMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DMPage(),
    );
  }
}

class DMPage extends StatefulWidget {
  @override
  _DMPageState createState() => _DMPageState();
}

class _DMPageState extends State<DMPage> {
  final List<User> users = [
    User(
      name: "aswin",
      profilePicture: "assets/p3.jpg",
      lastMessage: "Sent an attachment.5d",
      isUnread: true,
    ),
    User(
      name: "ashil",
      profilePicture: "assets/p2.jpg",
      lastMessage: "Liked a message.2w",
      isUnread: true,
    ),
    User(
      name: "junaid",
      profilePicture: "assets/junaid.jpg",
      lastMessage: "Seen 2w ago",
    ),
    User(
      name: "alan",
      profilePicture: "assets/scotti.jpg",
      lastMessage: "4+ new messages.2w",
      isUnread: true,
    ),
    User(
      name: "antonin",
      profilePicture: "assets/profile.jpg",
      lastMessage: "Sent a reel by cult.2w",
      isUnread: true,
    ),
    // Add more users as needed
  ];

  final List<User> storyUsers = [
    User(
      name: "Leave a Note",
      profilePicture: "assets/team6.png",
      lastMessage: "",
    ),
    User(
      name: "antonin",
      profilePicture: "assets/profile.jpg",
      lastMessage: "",
      note: " deyyum that was fast",
    ),
    User(
      name: "aswin",
      profilePicture: "assets/p3.jpg",
      lastMessage: "",
      note: "Halal madrid☪️",
    ),
    User(
      name: "alan",
      profilePicture: "assets/scotti.jpg",
      lastMessage: "",
      note: "Happy New",
    ),
    // Add more story users as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "team 6",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.video_call,
                    color: Color.fromARGB(255, 255, 255, 255)),
                SizedBox(width: 16),
                Icon(Icons.edit, color: Color.fromARGB(255, 255, 255, 255)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // Stories section
          Container(
            height: 135,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storyUsers.length,
              itemBuilder: (context, index) {
                return _buildStoryItem(
                  storyUsers[index].name,
                  storyUsers[index].profilePicture,
                  index == 0,
                  note: storyUsers[index].note,
                );
              },
            ),
          ),

          // Tabs
          const DefaultTabController(
            length: 4,
            child: TabBar(
              labelColor: Color.fromARGB(255, 0, 0, 0),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Primary"),
                Tab(text: "General"),
                Tab(text: "Channels"),
                Tab(text: "Requests"),
              ],
            ),
          ),

          // Messages list
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return makeMessageTile(
                  users[index].name,
                  users[index].profilePicture,
                  users[index].lastMessage,
                  context,
                  isUnread: users[index].isUnread,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStoryItem(String name, String image, bool isFirst,
      {String? note}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(image),
              ),
              if (isFirst)
                Positioned(
                  top: 3,
                  right: -2,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                ),
              if (note != null)
                Positioned(
                  top: -20,
                  right: -2,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      note,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeMessageTile(
      String name, String image, String message, BuildContext context,
      {bool isUnread = false}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        message,
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
          fontSize: 14,
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => chat()));
        },
        icon: const Icon(Icons.camera_alt_outlined,
            color: Color.fromARGB(255, 0, 0, 0)),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => chat()));
      },
    );
  }
}
