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
                print("Logout Pressed");
                Get.snackbar("Logout", "Would you like to logout ?");
                // Get.offAll(HomeScreen());
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
