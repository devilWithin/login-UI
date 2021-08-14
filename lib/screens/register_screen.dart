import 'package:flutter/material.dart';
import 'package:login_ui/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    letterSpacing: 1),
              ),
              SizedBox(height: 5.0),
              Text(
                'Fill this form to create a new account',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              defaultFormField(
                controller: nameController,
                text: 'Please Enter Your Name',
                hintText: 'Name',
                icon: Icons.account_circle,
              ),
              defaultFormField(
                controller: emailController,
                text: 'Please Enter Your Email',
                hintText: 'Email',
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress
              ),
              defaultFormField(
                controller: phoneController,
                text: 'Please Enter Your Phone',
                hintText: 'Phone Number',
                icon: Icons.phone,
                keyboardType: TextInputType.number,
              ),
              defaultFormField(
                controller: passwordController,
                text: 'Please Enter Your Password',
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              defaultFormField(
                controller: confirmPasswordController,
                text: 'Please Confirm Your Password',
                hintText: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              defaultButton(title: 'CREATE ACCOUNT'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}