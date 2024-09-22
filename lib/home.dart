import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({required this.username, required this.password, super.key});

  final String username;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Material(
        child: Center(
            child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: const Text("Sua Home Page",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(),
            child: Text(
                "O user name digitado foi: ${username.isEmpty ? "Não foi fornecido um nome" : username}",
                style: const TextStyle(fontSize: 16, color: Colors.black)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(),
            child: Text(
                "A senha digitada foi: ${password.isEmpty ? "Não foi fornecido uma senha" : password}",
                style: const TextStyle(fontSize: 16, color: Colors.black)),
          ),
        ])),
      ),
    );
  }
}
