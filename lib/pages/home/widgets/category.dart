import 'package:flutter/material.dart';
import 'package:noob_flutter_gamestore/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [ //liste/map categories
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcabe'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182f2),
      'title': 'More'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
          )
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.all(25),
            child: ListView.separated( 
              //listview qui va nous permettre de scroller nos différentes categorie
              // .separated nous propose de séparer nos différents widgets
              //izy ihany zany no manao ny boucle ao raha azoko tsara
              //tsara kosa kou
              scrollDirection: Axis.horizontal, //axe du scroll
              itemBuilder: (_, index) => Column( 
                //itembuilder ilay widget tsirairay ao anaty liste mandray index
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index]['color'] as Color), //cast 
                    child: Icon(
                      categories[index]['icon'] as IconData,// mila castena
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categories[index]['title'] as String,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 33), //ilay séparateur eto izy espace vide de 33px
              itemCount: categories.length, //isan'ilay hoaffichena
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: 410,
            child: Text(
              'Popular game',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          PopularGame()
        ],
      ),
    );
  }
}