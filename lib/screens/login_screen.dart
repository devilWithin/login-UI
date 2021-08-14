import 'package:flutter/material.dart';
import 'package:login_ui/widgets/widgets.dart';

import 'register_screen.dart';

class LoginScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 150,
                  color: Colors.grey[200],
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      letterSpacing: 1),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 15),
                defaultFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  text: 'Please Enter Your EmailAddress',
                  hintText: 'Email Address',
                  icon: Icons.email_outlined,
                ),
                defaultFormField(
                  controller: passwordController,
                  obscureText: true,
                  text: 'Please Enter Your Password',
                  hintText: 'Password',
                  icon: Icons.lock,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                defaultButton(title: 'LOGIN'),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),),);
                        },
                        child: Text(
                          'Create New Account',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
