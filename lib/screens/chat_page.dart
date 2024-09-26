import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget getChatBubble(alignment, message) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(221, 113, 151, 118),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$message",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            Image.network(
              "https://imgs.search.brave.com/EstDqn1B1XObyh4BnYFcqSYf8_pj-6NRdhzXJUMbSO8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvcG9rZW1vbi9w/b2tlbW9uX1BORzEx/LnBuZw",
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Name"),
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                getChatBubble(Alignment.bottomRight, "Hey"),
                getChatBubble(Alignment.bottomLeft, "Hi"),
                getChatBubble(Alignment.bottomRight, "WOw buddy"),
                getChatBubble(Alignment.bottomLeft, "Its working"),
              ],
            ),
          ),
          Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
