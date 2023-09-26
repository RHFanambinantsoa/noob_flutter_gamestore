import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( 
        //padding symetric zany hoe top sy bottom ilay vertical d right sy left ilay horizontal
        horizontal: 25,
        vertical: 30,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: const Color(0xFF5F67EA), //cpuleur du curseur
            decoration: InputDecoration(
              fillColor: const Color(0xFFF6F8FF), 
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide( //ilay border be manodidina iny par defat 1px solid black
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(//padding an'ilay input
                horizontal: 20,
                vertical: 20,
              ),
              prefixIcon: const Icon( //icon eny aloha
                Icons.search_outlined,
                size: 30,
              ),
              hintText: "Search game", //place holder
              hintStyle: TextStyle( //afaka stylisena
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7),
              ),
            ),
          ),
          Positioned( //ty ilay position relative zany sa tsy azoko tsara
            bottom: 10,
            right: 12,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(//style an'ilay box
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF5F67EA), //background
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
