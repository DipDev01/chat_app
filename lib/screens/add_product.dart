import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  Widget getTextField(message) {
    return Column(
      children: [
        Text("$message"),
        Container(
          margin:
              const EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 5),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is product Page"),
      ),
      body: Column(
        children: [
          getTextField("Laptop"),
          getTextField("price"),
          getTextField("Quantity"),
        ],
      ),
    );
  }
}
