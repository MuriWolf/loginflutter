import 'package:flutter/material.dart';
import 'package:loginflutter/pages/loginPage.dart';
import 'dart:developer';
import '../classes/CustomTextFieldData.dart';
import '../widgets/CustomRoundedButon.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/HeaderLoginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    vertical: 18,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          CustomTextField(
                              icon: Icons.person, placeholder: "Full name"),
                          SizedBox(
                            height: 14,
                          ),
                          CustomTextField(
                              icon: Icons.email, placeholder: "Email"),
                          SizedBox(
                            height: 14,
                          ),
                          CustomTextField(
                              icon: Icons.phone, placeholder: "Phone number"),
                          SizedBox(
                            height: 14,
                          ),
                          CustomTextField(
                              icon: Icons.key,
                              placeholder: "Password",
                              hiddenTxt: true),
                          SizedBox(
                            height: 14,
                          ),
                        ],
                      ),
                      CustomRoundedButton(
                        title: "sign up",
                        callback: () {},
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already a member? "),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              "Sign in",
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
