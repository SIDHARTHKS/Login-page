import 'package:flutter/material.dart';
import 'package:forms/homepage.dart';

class Homepage1 extends StatelessWidget {
  final String userName;
  final String pass;
  Homepage1({super.key, required this.userName, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          userName,
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 137, 199, 243)),
        ),
        actions: [
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          content: const Text(
                            "Do you want to log out",
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) => Logpage()));
                                },
                                child: const Text('Yes')),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('No')),
                          ],
                        ));
              },
              child: const Text(
                'Log out',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 183, 230, 243)),
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(colors:[Color.fromARGB(255, 1, 36, 66),Colors.black]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/letter-s.png',
                        width: 60,
                        height: 60,
                      ),
                      const Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'Good to see you again',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Let`s Get started',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(186, 1, 43, 69),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10), // Space between containers
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(186, 1, 43, 69),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(186, 1, 43, 69),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(186, 1, 43, 69),
                            ),
                            child: const Center(
                              child: Text(
                                "Social",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(186, 1, 43, 69),
                            ),
                            child: const Center(
                              child: Text(
                                "News",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(186, 1, 43, 69),
                            ),
                            child: const Center(
                              child: Text(
                                "Posts",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(children: [
                      Text('Your password is :$pass',style: TextStyle(color: Colors.white),)
                    ],)
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 50,),
                            Container(
                              decoration: BoxDecoration(gradient: RadialGradient(colors: [const Color.fromARGB(200, 1, 40, 71),Colors.black ]),borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (ctx) => AlertDialog(
                                                        content: const Text(
                              "Do you want to log out",
                              textAlign: TextAlign.center,
                                                        ),
                                                        actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) => Logpage()));
                                  },
                                  child: const Text('Yes')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('No')),
                                                        ],
                                                      ));
                                            },
                                            child: const Text(
                                              'Log out',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(255, 183, 230, 243)),
                                            )),
                            )
                  ],
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
