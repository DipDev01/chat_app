import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    print(usernameController.text);
    print(passwordController.text);
    print("Logged in");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("hello");
        },
        child: const Icon(Icons.add),
      ),
      body: SizedBox(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Enter your username",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 30, top: 0, right: 30, bottom: 5),
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ))),
              ),
            ),
            const Text(
              "Enter your password",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 30, top: 0, right: 30, bottom: 0),
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  login();
                },
                child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
