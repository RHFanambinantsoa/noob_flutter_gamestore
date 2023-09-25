import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    //nous modifions la couleur de la barre d'état de notre application afin qu'elle soit transparente
    //Cela permettra à notre application d'être en plein écran 
    //et de visualiser le contenu tout en haut de nos pages.

    return const MaterialApp( //represente la totalité de mon application
      debugShowCheckedModeBanner: false, //pour supprimer la bannière de débogage.
      title: 'Gamestore',
      home: Scaffold(), //scaffold represent une seul page
    );
  }
}