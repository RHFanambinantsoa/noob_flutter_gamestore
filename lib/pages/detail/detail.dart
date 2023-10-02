import 'package:flutter/material.dart';
import 'package:noob_flutter_gamestore/models/game.dart';
import 'package:noob_flutter_gamestore/pages/detail/widgets/detailSliverDelegate.dart';
import 'package:noob_flutter_gamestore/pages/detail/widgets/info.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          )
        ],
      ),
    );
  }
}
