import 'package:flutter/material.dart';
import 'package:noob_flutter_gamestore/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});

  final List<Game> games = Game.games(); 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(25),
      child: Column(
        children: games.map(
              (game) => Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        game.icon,
                        width: 60,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded( //expanded pour qu'il prend vraiment toute la place disponible
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    game.type,
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  /* Etoille Review - Notation */
                                  Row(
                                    children: [
                                      for(int i=0;i<4;i++)
                                        Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),                                    
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              /**  Bouton Install*/
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF5F67EA),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Text(
                                  'Install',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ).toList() 
        //.toList est indispensable quand on veut afficher une liste de donnée en affichage réel
        
      ),
    );
  }
}