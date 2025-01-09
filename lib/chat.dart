import 'package:chat_bubbles/bubbles/bubble_normal_audio.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/date_chips/date_chip.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/bubbles/bubble_normal_image.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  List<String> chatMessages = [];
  bool isPlaying = false;
  bool isLoading = true;
  bool isPause = false;
  Duration duration = Duration(seconds: 20);
  Duration position = Duration(seconds: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text("aswin",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: MessageBar(
          onSend: (typedMessage) {
            setState(() {
              chatMessages.add(typedMessage);
            });
          },
          actions: [
            InkWell(
              child: const Icon(
                Icons.add,
                color: Colors.black,
                size: 24,
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: InkWell(
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.blue,
                  size: 24,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone_missed, color: Colors.black),
                  SizedBox(width: 8),
                  Text('Missed Audio Call',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              BubbleNormalImage(
                id: 'id001',
                image: Image.network(
                  'https://www.vedantu.com/seo/content-images/13d2fe49-8407-46b5-ae0b-a8a301213f17_jamie-street-G6aNLWPUlcY-unsplash.jpg', // URL of an online tree image
                  fit: BoxFit.cover,
                ),
                color: Colors.blue,
                tail: true,
                delivered: true,
              ),
              const BubbleSpecialThree(
                text: 'happy christmas bro',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: 'long time no see',
                color: Colors.blue,
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: 'after graduation never saw u again',
                color: Colors.blue,
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: 'yeah bro life been kinda unexpected',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: 'got a job in korea had to go early',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text:
                    'then life happened didnt have any time to contact anyone even my family',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: "understandable bro same shit here",
                color: Colors.blue,
                tail: false,
                isSender: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "miss the care free time we had in college ",
                color: Colors.blue,
                tail: false,
                isSender: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "fr",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: 'wish we could go back to those days',
                color: Colors.blue,
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "yeah 🥲 remeber our internship",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text:
                    "🥲 how can we forget those days bro best days of my life",
                color: Colors.blue,
                tail: true,
                isSender: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "we should see irl",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: "yeah do u have contact with anyone else",
                color: Colors.blue,
                tail: true,
                isSender: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "nah bro",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: "we should create a group or something",
                color: Colors.blue,
                tail: true,
                isSender: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "yes",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              BubbleNormalAudio(
                color: const Color(0xFFE8E8EE),
                duration: duration.inSeconds.toDouble(),
                position: position.inSeconds.toDouble(),
                isPlaying: isPlaying,
                isLoading: isLoading,
                isPause: isPause,
                onSeekChanged: (value) => {},
                onPlayPauseButtonClick: () => {},
                sent: true,
              ),
              BubbleNormalAudio(
                color: const Color(0xFFE8E8EE),
                duration: duration.inSeconds.toDouble(),
                position: position.inSeconds.toDouble(),
                isPlaying: isPlaying,
                isLoading: isLoading,
                isPause: isPause,
                onSeekChanged: (value) => {},
                onPlayPauseButtonClick: () => {},
                sent: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: "See you soon",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: 'Yes catch u laterr',
                color: Colors.blue,
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: "bie",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              const BubbleSpecialThree(
                text: 'bye',
                color: Colors.blue,
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const BubbleSpecialThree(
                text: '🌳', // Tree emoji as a message
                color: Colors.blue,
                tail: true,
                isSender: true,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Larger font size for the emoji
                ),
              ),
              const BubbleSpecialThree(
                text: '😊', // Smile emoji as a message
                color: Colors.blue,
                tail: true,
                isSender: false,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Larger font size for the emoji
                ),
              ),
              const BubbleSpecialThree(
                text:
                    'oh deyyum i saw your ex', // Thumbs up emoji from the sender
                color: Colors.blue,
                tail: true,
                isSender: true,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Larger font size for the emoji
                ),
              ),
              const BubbleSpecialThree(
                text: 'dont talk bout it', // Party emoji from the receiver
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24, // Larger font size for the emoji
                ),
              ),
              const BubbleSpecialThree(
                text: 'hehe', // Star emoji from the sender
                color: Colors.blue,
                tail: true,
                isSender: true,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Larger font size for the emoji
                ),
              ),
              const BubbleSpecialThree(
                text: '💀', // Heart emoji from the receiver
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24, // Larger font size for the emoji
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone_missed, color: Colors.black),
                  SizedBox(width: 8),
                  Text('Missed Audio Call',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
