import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/hoc/home_layout.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'data:image/jpeg;base64,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'),
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
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: const TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                    ),
                  ),
                  SizedBox(height: 20),
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
                                builder: (context) => HomeLayout()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 200, 47, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 115,
                            vertical: 25,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18, // Set font size to 18
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 20), // Add some space between Login and Sign Up
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 200, 47, 0),
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
                  icon: Icon(Icons.arrow_back, color: Colors.white),
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
