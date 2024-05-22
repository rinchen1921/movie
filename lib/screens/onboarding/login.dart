import 'package:flutter/material.dart';
import 'package:movie/hoc/home_layout.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://sm.ign.com/t/ign_tr/screenshot/default/b93b8b1b3260ccf4ac0642ddeb554e53_deed.1280.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, // Change font color to white
                        fontSize: 24, // Change font size to 28
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: const TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to home_layout.dart
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeLayout()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 200, 47, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 115,
                            vertical: 10,
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18, // Set font size to 18
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 20), // Add some space between Login and Sign Up
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 200, 47, 0),
                      // Set text color to orange
                      fontSize: 18, // Set font size to 18
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    // Navigate back to the splash screen
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
