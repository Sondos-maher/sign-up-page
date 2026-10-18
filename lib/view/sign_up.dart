import 'package:flutter/material.dart';

import '../widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const green = Color(0xFF43A35B);

  ///Responsive Design
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: height * .1,
          left: 24,
          right: 24,
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to our\ngrocery shop",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * .06),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  const CustomTextfield(text: "Name"),
                  SizedBox(height: height * .03),
                  const CustomTextfield(text: "Phone Number"),
                  SizedBox(height: height * .03),
                  const CustomTextfield(text: "Password", isPassword: true),
                  SizedBox(height: height * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // TODO: sign up logic
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 60,
                          height: 50,
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * .04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have Account?",
                        style: TextStyle(
                          color: Color(0xFF8B8B97),
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: const Text(
                          "  Log In",
                          style: TextStyle(
                            color: green,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}