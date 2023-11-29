import 'package:flutter/material.dart';

import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Color.fromARGB( 100,150, 130, 163)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const ClipOval(
                child: Image(
                  image: AssetImage(
                    'assets/logo_based.png',
                  ),
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              const Text(
                'welcome back',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff370781),
                ),
              ),
              const Text(
                'Login to your Account',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffefe5f1),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextInput(
                hint: 'User Name',
                icon: Icons.person,
                obscureText: false,
              ),
              const TextInput(
                hint: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(Colors.purple),
                          value: rememberMe,
                          onChanged: (bool? value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },
                        ),
                        const Text(
                          'Remember Me',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all(Colors.purple[980])),
                      child: const Text('Forget Password'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 108, 51, 222),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.purple[980]),
                ),
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 20),
                ),  // Add a semicolon here
              ),

              const Divider(
                color: Color.fromARGB(255, 100, 51, 222),
                thickness: 1,
                endIndent: 30,
                indent: 30,
              ),
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Color(0xff9c27b0),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 100, 51, 222),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Create',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInput extends StatefulWidget {
  const TextInput(
      {Key? key,
        required this.hint,
        required this.icon,
        required this.obscureText})
      : super(key: key);

  final String hint;
  final IconData icon;
  final bool obscureText;

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      child: TextField(
        cursorColor: Colors.purple[300],
        obscureText: widget.obscureText,
        style: const TextStyle(
          color: Color(0xff370781),
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          filled: true,
          fillColor: Colors.purple[200],
          prefixIcon: Icon(
            widget.icon,
            size: 24,
            color: const Color(0xff370781),
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: Color(0xff370781),
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff370781),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff370781),
            ),
          ),
        ),
      ),
    );
  }
}
