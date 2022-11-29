// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    Key? key,
    required this.name,
    required this.profession,
    required this.phone,
    required this.email,
    required this.password,
  }) : super(key: key);

  String name;
  String profession;
  String phone;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        title: const Text(
          'ТАПШЫРМА-04',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Color(0xffF7F9F9),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              profession,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color(0xffF7F9F9),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Divider(
                thickness: 3,
                indent: 20,
                color: Color(0xffF7F9F9),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 52,
              color: const Color(0xffF7F9F9),
              child: Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  const Icon(
                    Icons.phone,
                    size: 35,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    phone,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 52,
              color: const Color(0xffF7F9F9),
              child: Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  const Icon(
                    Icons.email,
                    size: 35,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
