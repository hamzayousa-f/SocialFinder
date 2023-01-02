import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:socialfinder/responsive/mobile_screen_layout.dart';
import 'package:socialfinder/responsive/responsive_layout_screen.dart';
import 'package:socialfinder/responsive/web_screen_layout.dart';
import 'package:socialfinder/screens/login.screen.dart';
import 'package:socialfinder/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyDkvpHcqga_Uh-HDXSW6ouXjtj1ibuD1Bo',
        appId: '1:794982450228:web:fe0817b206a8c2f7863661',
        messagingSenderId: '794982450228',
        projectId: 'socialfinder-1e2b9',
        storageBucket: "socialfinder-1e2b9.appspot.com",
      ),
    );
  } else
    await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Finder App',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: LoginScreen(),
    );
  }
}
