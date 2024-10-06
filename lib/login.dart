import 'package:flutter/material.dart';
import 'SignupPage.dart';

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        flexibleSpace: const Center(
          child: Text('Login Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: const TextField(
                decoration: InputDecoration(
              labelText: "Username:",
              border: OutlineInputBorder(),
            ))),
        const SizedBox(height: 20.0),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: const TextField(
                decoration: InputDecoration(
              labelText: "Password:",
              border: OutlineInputBorder(),
            ))),
        Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.4,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot your password?",
                style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                minimumSize: const Size(200, 60),
                backgroundColor: const Color(0XFF2661FA), // Background color
                foregroundColor: Colors.white, // Text color
              ),
              child: const Text('Login'),
            )),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Don't you have an account?"),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                ),
              )
            ])
      ])),
    ));
  }
}
