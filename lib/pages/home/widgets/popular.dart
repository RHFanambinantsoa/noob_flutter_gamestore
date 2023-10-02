import 'package:flutter/material.dart';
import 'package:noob_flutter_gamestore/models/game.dart';
import 'package:noob_flutter_gamestore/pages/detail/detail.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games(); 

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height:200,
        child: ListView.separated( 
          //tsy maintsy misy size ilay container-ny parce que c'est logique, 
          //hiscroll ho aiza ary izy raha tsy fantany ny size
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector( //widget clickable izay childny
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(games[index]),
              ),
            ),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect( //permet de rogner l'image directement
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(games[index].bgImage),
                ),
            ),
          ),
          )), 
          separatorBuilder: ((context,index)=>SizedBox(width: 15,)), 
          itemCount: games.length),
    );
  }
}