import 'package:flutter/material.dart';
import 'package:practice/core/theme/apppallete.dart';
import 'package:practice/features/auth/presentation/pages/signup_page.dart';
import 'package:practice/features/auth/presentation/widgets/authfield.dart';
import 'package:practice/features/auth/presentation/widgets/authgradientbutton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static route()=> MaterialPageRoute(
                    builder: (context)=>const LoginPage());
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController= TextEditingController();
  final passwordController= TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login.", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20),
              Authfield(hintText: "Email",controller: emailController,),
              const SizedBox(height: 15),
              Authfield(hintText: "Password",controller: passwordController,isObscure: true,),
              const SizedBox(height: 40),
              const Authgradientbutton(buttonName: "Login",),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, SignupPage.route());
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account?", 
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "Sign Up.",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ]
                    )
                    ),
              )
            ],),
        ),
      ),
    );
  }
}