import 'package:flutter/material.dart';
import 'package:login_app/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String _username = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
        centerTitle: true,
      ),
      body: Material(
        child: Center(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: const Text("Bem Vindo!",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(),
              child: const Text("Sign in",
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: TextField(
                decoration: const InputDecoration(hintText: "User Name"),
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Password", fillColor: Colors.grey),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(),
              child: TextButton(
                onPressed: () {},
                child: const Text("Forgot Password"),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(
                                password: _password,
                                username: _username,
                              )));
                },
                child: const Text("Login"),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Does not have account?"),
                      TextButton(onPressed: () {}, child: const Text("Sign up"))
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
