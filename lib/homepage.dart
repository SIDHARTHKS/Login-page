import 'package:flutter/material.dart';
import 'package:forms/homepage1.dart';

class Logpage extends StatelessWidget {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String truname = 'sid@gmail.com';
  final String trupass = 'Flutter@1234';

  Logpage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/images/letter-s.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Enter your login details',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 251, 251, 251)),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'username cannot be empty';
                        } else if (!value.endsWith('@gmail.com')) {
                          return 'invalid format';
                        } else if (value != truname) {
                          return 'Incorrect username';
                        } else {
                          return null;
                        }
                      },
                      controller: _usernamecontroller,
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: const TextStyle(
                              fontSize: 15, color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 191, 255))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 191, 255)))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'password cannot be empty';
                        } else if (!RegExp(
                                r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).+$')
                            .hasMatch(value)) {
                          return 'password must contain at leat one captal letter, one number and one special charecter';
                        } else if (value != trupass) {
                          return 'Incorrect password';
                        } else {
                          return null;
                        }
                      },
                      controller: _passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                              fontSize: 15, color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 191, 255))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 191, 255)))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: width * 1,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => Homepage1(
                            userName: _usernamecontroller.text,
                            pass:_passwordcontroller.text,
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(235, 2, 164, 251)),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
