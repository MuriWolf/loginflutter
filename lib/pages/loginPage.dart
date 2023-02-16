import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Container(
                width: double.infinity,
                height: 240,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.deepOrange, Colors.orange]),
                    // color: Colors.deepOrange,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                child: Stack(
                  children: const [
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    Center(
                      child: Icon(Icons.smartphone,
                          size: 100, color: Colors.white),
                    ),
                  ],
                ),
              ),
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
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              hintText: "Enter your Email",
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key),
                              hintText: "Password",
                              // border: InputBorder.none,
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              child: const Text("Forgot Password?"))
                        ],
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
                              print("clicou!");
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.deepOrange,
                              ),
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
