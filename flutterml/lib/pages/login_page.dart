import 'package:flutter/material.dart';
import 'package:flutterml/components/my_button.dart';
import 'package:flutterml/components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300]!,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),

            // welcome back
            const Text(
              'Welcome back, you\'ve been missed!',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),

            // email text field
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscuretext: false,
            ),
            const SizedBox(
              height: 25,
            ),

            // password text field
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscuretext: true,
            ),
            const SizedBox(
              height: 25,
            ),
            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password ? ',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // sign-in button
            MyButton(onTap: signUserIn),
            const SizedBox(
              height: 25,
            ),
            // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or continue with ",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            // google + Apple
            Row(
              children: [
                Image.asset('lib/images/google.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
