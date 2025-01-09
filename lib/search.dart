import 'package:flutter/material.dart';
import 'package:instagram/home.dart';
import 'package:instagram/acc.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/chat.dart';
import 'dart:math';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _currentIndex = 1;
  List<String> _allSuggestions = [
    "antonin_photos",
    "junaid.dev",
    "aswin_tech",
    "ashil_designs",
    "alan_music",
    "messi_official",
    "adidas_sports",
    "flutter_dev",
    "photography_hub",
    "tech_world",
    "gaming_universe",
    "food_lovers",
  ];
  List<String> _filteredSuggestions = [];
  bool _showDrawer = false;

  @override
  void initState() {
    super.initState();
    _filteredSuggestions = _allSuggestions;
  }

  void _filterSuggestions(String query) {
    setState(() {
      _filteredSuggestions = _allSuggestions
          .where((suggestion) =>
              suggestion.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _navigateToSuggestionPage(String suggestion) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SuggestionPage(suggestion: suggestion),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          Expanded(
            child: SizedBox(
              width: 500,
              height: 200,
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.black),
                ),
                title: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                    onTap: () => setState(() => _showDrawer = true),
                    onChanged: _filterSuggestions,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const po13(),
                            ),
                          ),
                          child: SizedBox(
                            height: 100,
                            child: Image.asset("assets/rayan.jpg",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Profile(),
                            ),
                          ),
                          child: SizedBox(
                            height: 100,
                            child: Image.asset("assets/rdr.jpg",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 100,
                            child: Image.asset("assets/SUPERMAN.jpg",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:
                        double.infinity, // Takes the full width of the screen
                    height: 500, // Adjust the height as needed
                    child: Image.asset(
                      "assets/explore.jpg",
                      fit: BoxFit
                          .cover, // Ensures the image covers the entire container
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (_showDrawer)
            Drawer(
              child: ListView.builder(
                itemCount: _filteredSuggestions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredSuggestions[index]),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() => _showDrawer = false);
                      _navigateToSuggestionPage(_filteredSuggestions[index]);
                    },
                  );
                },
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 4) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 66, 66, 66),
        selectedIconTheme: const IconThemeData(size: 24),
        unselectedIconTheme: const IconThemeData(size: 20),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Reel"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class SuggestionPage extends StatelessWidget {
  final String suggestion;
  final Random _random = Random();

  SuggestionPage({super.key, required this.suggestion});

  String _getRandomUsername() {
    List<String> prefixes = ['user_', 'the_', '', 'real_', 'official_'];
    List<String> suffixes = ['123', '_x', '', '_official', '_pro'];
    return prefixes[_random.nextInt(prefixes.length)] +
        suggestion.split('_')[0] +
        suffixes[_random.nextInt(suffixes.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(suggestion)),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar_placeholder.png"),
            ),
            title: Text(_getRandomUsername()),
            subtitle: Text('${_random.nextInt(1000)} followers'),
          );
        },
      ),
    );
  }
}
