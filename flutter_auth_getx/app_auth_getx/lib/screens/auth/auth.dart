import 'package:app_auth_getx/screens/home/home.dart';
import 'package:app_auth_getx/widgets/button.dart';
import 'package:app_auth_getx/widgets/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var isLogin = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(36),
            child: Center(
                child: Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text("WELCOME",
                            style: TextStyle(
                                fontSize: 30,
                                letterSpacing: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                        makeSpace(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              onPressed: () => isLogin.value = false,
                              color:
                                  !isLogin.value ? Colors.amber : Colors.white,
                              child: const Text("Register"),
                            ),
                            MaterialButton(
                              onPressed: () => isLogin.value = true,
                              color:
                                  isLogin.value ? Colors.amber : Colors.white,
                              child: const Text("Login"),
                            ),
                          ],
                        ),
                        makeSpace(40),
                        isLogin.value ? loginFields() : registerFields(),
                        makeSpace(30),
                        TextButton(
                            onPressed: () => Get.to(const HomeScreen()),
                            child: const Text("Enter as Guest")),
                      ],
                    )))));
  }

  Widget makeSpace(double space) {
    return SizedBox(height: space);
  }

  Widget loginFields() {
    return Column(
      children: [
        // Field : Email
        const InputFieldsWidget(
            isPassword: false,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: "Enter your name",
            errorText: "",
            labelText: "Name"),

        // Field : Email
        const InputFieldsWidget(
            isPassword: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: "Enter Email @",
            errorText: "",
            labelText: "Email"),

        // Field : Email
        const InputFieldsWidget(
            isPassword: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            hintText: "Enter Password",
            errorText: "",
            labelText: "Password"),

        ButtonWithCallback(
            title: 'Login', callback: () => Get.off(const HomeScreen())
            // Get.snackbar('Authentication', 'You clicked Login attempt')
            ),
      ],
    );
  }

  Widget registerFields() {
    return Column(
      children: [
        // Field : Email
        const InputFieldsWidget(
            isPassword: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: "Enter Email",
            errorText: "",
            labelText: "Email"),

        // Field : Password
        const InputFieldsWidget(
            isPassword: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            hintText: "Enter Password",
            errorText: "",
            labelText: "Password"),

        // Button : Register
        ButtonWithCallback(
            title: 'Register', callback: () => Get.off(const HomeScreen())
            // Get.snackbar('Authentication', 'You clicked Register attempt')
            ),
      ],
    );
  }
}
