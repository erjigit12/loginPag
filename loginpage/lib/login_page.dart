// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:loginpage/second_page.dart';
// import 'package:passwordfield/passwordfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  String profession = '';
  String phone = '';
  String email = '';
  String password = '';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 200,
            //   width: 200,
            //   margin: const EdgeInsets.fromLTRB(30, 30, 25, 30),
            //   decoration: BoxDecoration(
            //     image: const DecorationImage(
            //       image: AssetImage('assets/images/mash2.png'),
            //       fit: BoxFit.fill,
            //     ),
            //     borderRadius: BorderRadius.circular(50),
            //   ),
            // ),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onChanged: (String value) {
                name = value;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                hintText: 'Name',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onChanged: (String value) {
                profession = value;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                hintText: 'Profession',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onChanged: (String value) {
                phone = value;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                hintText: 'Phone',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onChanged: (String value) {
                email = value;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              obscureText: _isObscure,
              obscuringCharacter: "*",
              onChanged: (String value) {
                password = value;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 19),
              ),
            ),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: InkWell(
                onTap: () {
                  if (email == '' && password == '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Логин жана паролду жазыныз!!!'),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          name: name,
                          profession: profession,
                          phone: phone,
                          email: email,
                          password: password,
                        ),
                      ),
                    );
                  }
                },
                child: const Center(
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
