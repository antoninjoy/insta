import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String password = "";

  String username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 150,
                  child: Image.asset("assets/insta.png"),
                ),
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: username == "admin"
                                  ? Colors.grey
                                  : Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                username = value;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: "phone number,username or email",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 500,
                  child: FilledButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      if (username == "team6") {
                        if (password == "1234") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("invalid password"),
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("invalid username"),
                          ),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "forgot password?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      side: const BorderSide(color: Colors.blue, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "create new account",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
