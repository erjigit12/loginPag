// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  String email;
  String password;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Email почтаныз: ${widget.email}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Паролунуз: ${widget.password}',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
