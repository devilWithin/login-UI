import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  TextInputType? keyboardType,
  required String text,
  required String hintText,
  required IconData icon,
  bool obscureText = false,
}) =>
    Padding(
      padding: EdgeInsets.all(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          margin: EdgeInsets.only(bottom: 6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: TextFormField(
            obscureText: obscureText,
            controller: controller,
            keyboardType: keyboardType,
            validator: (value) {
              if (value!.isEmpty) {
                return text;
              }
            },
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                icon,
                color: Colors.green,
              ),
            ),
            showCursor: false,
          ),
        ),
      ),
    );

Widget defaultButton({
  required String title,
}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 60.0,
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Colors.green,
        ),
      ),
    );
