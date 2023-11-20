import 'package:flutter/material.dart';
import 'package:moneymanager/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange,
                  Color.fromARGB(251, 236, 191, 124),
                  Color.fromARGB(246, 240, 201, 154),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Money Manager",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 71, 71, 71),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(221, 44, 44, 44),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.only(top: 260),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {
                      final route = MaterialPageRoute(builder: (context) => const Home());
                      Navigator.push(context, route);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 241, 159, 35),
                      foregroundColor: const Color.fromARGB(255, 70, 68, 68),
                    ),
                    icon: const Icon(Icons.arrow_right_alt),
                    label: const Text("Sign In"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
