import 'package:flutter/material.dart';
import 'package:revv_commerce/navigation/login_page.dart';
import 'package:revv_commerce/screens/add_product.dart';
import 'package:revv_commerce/screens/chat_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to home page"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => LoginPage()));
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Product List",
                    style: TextStyle(
                        color: Color.fromARGB(255, 109, 164, 156),
                        fontSize: 22),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const AddProduct()));
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const ChatPage()));
                  },
                  icon: const Icon(Icons.chat)),
            ],
          )
        ],
      ),
    );
  }
}
