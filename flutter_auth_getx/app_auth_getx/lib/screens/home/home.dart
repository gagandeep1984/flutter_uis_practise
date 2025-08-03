import 'package:app_auth_getx/screens/auth/auth.dart';
import 'package:flutter/foundation.dart'; // for kDebugMode, kReleaseMode, kProfileMode
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Future<SharedPreferences> preferences = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        actions: [
          TextButton(
              onPressed: () async {
                final SharedPreferences prefs = await preferences;
                prefs.clear();
                // Get.to(AuthScreen);
                // debugPrint("Logout Pressed");

                Get.snackbar(
                  "Logout",
                  "Would you like to logout ?",
                  snackPosition: SnackPosition.BOTTOM,
                  icon: const Icon(Icons.logout_outlined),
                  onTap: (snack) {
                    debugPrint("Navigating to Auth Screen");
                    Get.offAll(const AuthScreen());
                  },
                  // mainButton: TextButton(
                  //     onPressed: () => Get.to(AuthScreen),
                  //     child: const Text("Agree")),
                );
              },
              child: const Text("Logout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
        ],
      ),
      body:
          // const Center( child:
          Column(
        children: [
          const Text(
            "Welcome Home",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          TextButton(
            onPressed: () {
              if (kDebugMode) {
                print("Print Token Command");
              }
            },
            child: const Text("Print Token"),
          )
        ],
      ),
      // ),
    );
  }
}
