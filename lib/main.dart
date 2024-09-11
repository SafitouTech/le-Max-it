import 'package:flutter/material.dart';
import 'nav_bar.dart';

const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF090707);
const d_black2 = Color(0xFF3A3939);
const d_yellow = Color(0xFFFFE7A0);
const d_mauve = Color(0xFFD68BE2);
const d_white = Color(0xFFF5F9F8);
const d_green = Color(0xFFD7EDDB);


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:NavBar(),
    );
  }
}

