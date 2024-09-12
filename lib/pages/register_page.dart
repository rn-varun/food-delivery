import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/custom_button.dart';
import 'package:food_delivery/components/custom_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confPassController = TextEditingController();

  void register() async {
    if (passController.text != confPassController.text) {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Passowrds don't match"),
                ),
              ));
    } else {
      try {
        UserCredential? userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passController.text);
        if(context.mounted) Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        showDialog(context: context, builder: (context) => AlertDialog(
          title: Text(e.code),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  logo
              Icon(
                Icons.food_bank,
                size: 100,
              ),
              SizedBox(
                height: 60,
              ),
              // title
              Text(
                'Food Delivery App',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              //  text field: mail
              CustomTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),
              SizedBox(
                height: 15,
              ),
              //  text field: pass
              CustomTextField(
                  controller: passController,
                  hintText: "Password",
                  obscureText: true),
              SizedBox(
                height: 15,
              ),
              //  text field: pass
              CustomTextField(
                  controller: confPassController,
                  hintText: "Confirm Password",
                  obscureText: true),
              SizedBox(
                height: 15,
              ),
              //  button
              CustomButton(text: 'Register', onTap: register),
              // register now
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
