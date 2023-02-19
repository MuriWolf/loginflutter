import 'package:flutter/material.dart';
import 'package:loginflutter/pages/signupPage.dart';
import 'dart:developer';
import '../classes/CustomTextFieldData.dart';
import '../widgets/CustomRoundedButon.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/HeaderLoginPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String nome = "lala";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: [
              const HeaderLoginPage(title: "Login"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 28,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const CustomTextField(icon: Icons.email, placeholder: "Enter your Email"),
                          const SizedBox(
                            height: 14,
                          ),
                          const CustomTextField(icon: Icons.key, placeholder: "Password"),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              child: const Text("Forgot Password?"))
                        ],
                      ),
                      CustomRoundedButton(
                        title: "sign in",
                        callback: () {},
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dont have an account?"),
                          const SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupPage()));
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
