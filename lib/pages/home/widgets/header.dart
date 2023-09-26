import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,// nous voulons que notre Container() puisse commencer après la barre d'état ou barre de statut.
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //horizontal an'ilay row
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, //horizontal amin'ilay column, tsy haiko tsara manazava azy fa azoko haahah
            children: const [
              Text(
                "Welcome,",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "What would you like to play?",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover, //mameno ilay espace ilay sary
            ),
          )
        ],
      ),
    );
  }
}
