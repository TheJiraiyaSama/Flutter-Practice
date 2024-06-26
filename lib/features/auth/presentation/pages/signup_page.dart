import 'package:flutter/material.dart';
import 'package:practice/core/theme/apppallete.dart';
import 'package:practice/features/auth/presentation/pages/login_page.dart';
import 'package:practice/features/auth/presentation/widgets/authfield.dart';
import 'package:practice/features/auth/presentation/widgets/authgradientbutton.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  static route()=>MaterialPageRoute(
                    builder: (context)=>const SignupPage());
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController= TextEditingController();
  final emailController= TextEditingController();
  final passwordController= TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("SignUp.", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20),
              Authfield(hintText: "Name",controller:  nameController),
              const SizedBox(height: 15),
              Authfield(hintText: "Email",controller: emailController,),
              const SizedBox(height: 15),
              Authfield(hintText: "Password",controller: passwordController,isObscure: true,),
              const SizedBox(height: 40),
              const Authgradientbutton(buttonName: "Sign Up"),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => {
                  Navigator.push(context, LoginPage.route())
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account?", 
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "Sign In.",
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