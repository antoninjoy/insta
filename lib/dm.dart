import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
// import 'package:insta_ui/loginpage.dart';

void main() {
  runApp(InstagramDMPage());
}

class InstagramDMPage extends StatelessWidget {
  const InstagramDMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DMPage(),
    );
  }
}

class DMPage extends StatelessWidget {
  const DMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "team 6",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // Tabs

          // Message List
          Expanded(
              child: ListView(
            children: [
              Container(
                width: 1700,
                height: 135,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/1.png'),
                              ),
                              Positioned(
                                top: 3,
                                right: -2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 1),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('Leave a Note'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/2.png'),
                              ),
                              Positioned(
                                top: -20,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      ' locked in',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('spongbob'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/7.png'),
                              ),
                              Positioned(
                                top: -6,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Hala Madrid..',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('messi'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/8.png'),
                              ),
                              Positioned(
                                top: -18,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Happy New \n     Year🪻',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('mohanlal'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/3.png'),
                              ),
                              Positioned(
                                top: -18,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      '    Stay \n   negative🥇',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('kanye west'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/story6.jpeg'),
                              ),
                              Positioned(
                                top: -10,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'i am not a clone🤣',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('Victor Mal'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/story7.jpeg'),
                              ),
                              Positioned(
                                top: -18,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      '   Dont lose \n  Chlidness🚸',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('sumith'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/story8.jpeg'),
                              ),
                              Positioned(
                                top: -10,
                                right: -2,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Responsible..',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('Rajeev Krishna'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const DefaultTabController(
                length: 4,
                child: TabBar(
                  labelColor: Color.fromARGB(255, 255, 255, 255),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "Primary"),
                    Tab(text: "General"),
                    Tab(text: "Channels"),
                    Tab(text: "Requests"),
                  ],
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/4.png'),
                ),
                title: const Text(
                  "homie",
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                subtitle: const Text(
                  "Sent an attachment.1d",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                trailing: IconButton(
                  onPressed: () {
                    // Navigate to DMPage when the icon is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => chat(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                onTap: () {
                  // You can also add navigation here if you want the whole ListTile to be clickable
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chat(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/5.png'),
                ),
                title: const Text(
                  "haland",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Liked a message.6w",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/6.png'),
                ),
                title: const Text(
                  "joju",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                subtitle: const Text(
                  "Seen 4w ago",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/9.png'),
                ),
                title: const Text(
                  "melbin",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "4+ new messages.2w",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/10.png'),
                ),
                title: const Text(
                  "anyan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Sent a reel by cult.2w",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/hai.png'),
                ),
                title: const Text(
                  "alin jose",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Reacted ❤ to your message.3w",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile3.png'),
                ),
                title: const Text(
                  "heeeman",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                subtitle: const Text(
                  "Sent a reel by demingo_.1d",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile5.jpg'),
                ),
                title: const Text(
                  "sucky",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "2 new messages.12w",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile4.jpg'),
                ),
                title: const Text(
                  "emil",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                subtitle: const Text(
                  "Active 2h ago",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile8.jpg'),
                ),
                title: const Text(
                  "gopela",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "wo wo",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile10.jpg'),
                ),
                title: const Text(
                  "marco",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                subtitle: const Text(
                  "active now",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile2.jpg'),
                ),
                title: const Text("debian"),
                subtitle: const Text("Seen"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile13.jpeg'),
                ),
                title: const Text(
                  "sevin",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                subtitle: const Text(
                  "sent",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.671)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile15.jpg'),
                ),
                title: const Text(
                  "despa",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "4+ new messages",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
