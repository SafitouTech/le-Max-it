import 'package:flutter/material.dart';
import 'package:the_max_it/Page/page_boutique.dart';
import 'package:the_max_it/nav_bar.dart';

class ArrowPageBoutique extends StatelessWidget {
  const ArrowPageBoutique({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Stack(
        children: [
          const NavBar(),
          PageBoutique(),
        ],
    );
  }
}
