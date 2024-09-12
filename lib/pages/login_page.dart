import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/custom_button.dart';
import 'package:food_delivery/components/custom_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void login() async {
    showDialog(
      context: context,
      builder: (context) => const Center(child: CircularProgressIndicator(),));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passController.text);
      if(context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.code),
      ));
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
              SizedBox(height: 15,),
              //  text field: pass
              CustomTextField(
                controller: passController,
                hintText: "Password",
                obscureText: true),
                SizedBox(height: 15,),
              //  button
              CustomButton(text: 'Login', onTap: login),
              // register now
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text("Register Here", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
