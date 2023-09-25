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
            Transform( //permet de faire tourner ou déplacer
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),//décalage en fonction de l'axe vertical et horizontal
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(//va permettre dans un widget stack de positionner de manière absolu les différents enfants
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Container()
          ],
          )
      ),
    );
  }
}