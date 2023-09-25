import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F67EA),
      body: SingleChildScrollView( //widget qui nous permet de scroller du contenu
        child: Stack( //nous permet de supperposer différents éléments
          children: [
            Image.asset('assets/images/bg_liquid.png'),
          ],
          )
      ),
    );
  }
}