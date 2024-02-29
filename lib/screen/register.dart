import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter email',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter email' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Enter password',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.black,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
