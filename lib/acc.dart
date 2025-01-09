import 'package:flutter/material.dart';
import 'package:instagram/search.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/home.dart';

class po13 extends StatefulWidget {
  const po13({super.key});

  @override
  State<po13> createState() => _po13State();
}

class _po13State extends State<po13> {
  int _currentIndex = 0;
  bool ispressed1 = false;
  bool ispressed2 = false;
  bool ispressed3 = false;
  bool ispressed4 = false;
  bool ispressed5 = false;
  bool isfollowing = false;
  bool isfollowing1 = false;
  bool isfollowing2 = false;
  bool isfollowing3 = false;
  bool isfollowing4 = false;
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool b5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            flex: 1,
            child: Container(
              width: 1000,
              height: 100,
              color: Colors.white,
              child: Row(children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/gosling.jpg"),
                ),
                const Text(
                  "rayan",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset("assets/tick.jpg")),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 150,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          backgroundColor: isfollowing
                              ? Colors.indigo.shade50
                              : Colors.indigo.shade50,
                        ),
                        onPressed: () {
                          setState(() {
                            isfollowing = !isfollowing;
                          });
                        },
                        child: Text(
                          isfollowing ? 'Following' : 'Follow',
                          style: const TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))
              ]),
            ),
          )
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
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    width: 600,
                    height: 450,
                    color: Colors.green,
                    child: Image.asset(
                      "assets/rayan.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  width: 600,
                  height: 50,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ispressed1 = !ispressed1;
                                });
                              },
                              icon: Icon(
                                ispressed1
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: ispressed1 ? Colors.red : Colors.black,
                              )),
                          const Text(
                            "3K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.black,
                              )),
                          const Text(
                            "400K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              b1 = !b1;
                            });
                          },
                          icon: Icon(
                            b1
                                ? Icons.bookmark_added
                                : Icons.bookmark_add_outlined,
                            color: b1 ? Colors.black : Colors.black,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/socretis.jpg",
            fit: BoxFit.fill,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              width: 50,
              height: 450,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 1000,
                          height: 50,
                          color: Colors.white,
                          child: Row(children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/socretis.jpg"),
                            ),
                            const Text(
                              "dar_win",
                              style: TextStyle(color: Colors.black),
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 100,
                                width: 150,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 150,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: isfollowing
                                          ? Colors.indigo.shade50
                                          : Colors.indigo.shade50,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isfollowing1 = !isfollowing1;
                                      });
                                    },
                                    child: Text(
                                      isfollowing1 ? 'Following' : 'Follow',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    )),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined))
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                ispressed2 = !ispressed2;
                              });
                            },
                            child: Image.asset(
                              "assets/po8.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  width: 600,
                  height: 50,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ispressed2 = !ispressed2;
                                });
                              },
                              icon: Icon(
                                  ispressed2
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      ispressed2 ? Colors.red : Colors.black)),
                          const Text(
                            "440K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.black,
                              )),
                          const Text(
                            "200K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              b2 = !b2;
                            });
                          },
                          icon: Icon(
                            b2
                                ? Icons.bookmark_added
                                : Icons.bookmark_add_outlined,
                            color: b2 ? Colors.black : Colors.black,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/s4.jpg",
            fit: BoxFit.fill,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              width: 50,
              height: 450,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 1000,
                          height: 50,
                          color: Colors.white,
                          child: Row(children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/pi2.png"),
                            ),
                            const Text(
                              "Targareyn",
                              style: TextStyle(color: Colors.black),
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 100,
                                width: 150,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 100,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: isfollowing
                                          ? Colors.indigo.shade50
                                          : Colors.indigo.shade50,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isfollowing2 = !isfollowing2;
                                      });
                                    },
                                    child: Text(
                                      isfollowing2 ? 'Following' : 'Follow',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    )),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined))
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                ispressed3 = !ispressed3;
                              });
                            },
                            child: Image.asset(
                              "assets/po24.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  width: 600,
                  height: 50,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ispressed3 = !ispressed3;
                                });
                              },
                              icon: Icon(
                                  ispressed3
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      ispressed3 ? Colors.red : Colors.black)),
                          const Text(
                            "10M   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.black,
                              )),
                          const Text(
                            "100K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              b3 = !b3;
                            });
                          },
                          icon: Icon(
                            b3
                                ? Icons.bookmark_added
                                : Icons.bookmark_add_outlined,
                            color: b3 ? Colors.black : Colors.black,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/s3.jpg",
            fit: BoxFit.fill,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              width: 50,
              height: 450,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 1000,
                          height: 50,
                          color: Colors.white,
                          child: Row(children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/pi4.png"),
                            ),
                            const Text(
                              "gavincasalegno",
                              style: TextStyle(color: Colors.black),
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 100,
                                width: 150,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 150,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: isfollowing
                                          ? Colors.indigo.shade50
                                          : Colors.indigo.shade50,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isfollowing3 = !isfollowing3;
                                      });
                                    },
                                    child: Text(
                                      isfollowing3 ? 'Following' : 'Follow',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    )),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined))
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                ispressed4 = !ispressed4;
                              });
                            },
                            child: Image.asset(
                              "assets/po23.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  width: 600,
                  height: 50,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ispressed4 = !ispressed4;
                                });
                              },
                              icon: Icon(
                                  ispressed4
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      ispressed4 ? Colors.red : Colors.black)),
                          const Text(
                            "1M   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.black,
                              )),
                          const Text(
                            "33K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              b4 = !b4;
                            });
                          },
                          icon: Icon(
                            b4
                                ? Icons.bookmark_added
                                : Icons.bookmark_add_outlined,
                            color: b4 ? Colors.black : Colors.black,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/s1.jpg",
            fit: BoxFit.fill,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              width: 50,
              height: 450,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 1000,
                          height: 50,
                          color: Colors.white,
                          child: Row(children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/pi5.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Text(
                              "StrangerthingsTv",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/tick.png")),
                            ),
                            const SizedBox(
                              height: 100,
                              width: 50,
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 150,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: isfollowing
                                          ? Colors.indigo.shade50
                                          : Colors.indigo.shade50,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isfollowing4 = !isfollowing4;
                                      });
                                    },
                                    child: Text(
                                      isfollowing4 ? 'Following' : 'Follow',
                                      style:
                                          const TextStyle(color: Colors.black),
                                    )),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_outlined))
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                ispressed5 = !ispressed5;
                              });
                            },
                            child: Image.asset(
                              "assets/po22.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  width: 600,
                  height: 50,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ispressed5 = !ispressed5;
                                });
                              },
                              icon: Icon(
                                  ispressed5
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      ispressed5 ? Colors.red : Colors.black)),
                          const Text(
                            "5M   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.black,
                              )),
                          const Text(
                            "150K   ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 200,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              b5 = !b5;
                            });
                          },
                          icon: Icon(
                            b5
                                ? Icons.bookmark_added
                                : Icons.bookmark_add_outlined,
                            color: b5 ? Colors.black : Colors.black,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/s6.jpg",
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
