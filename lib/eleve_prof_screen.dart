import 'dart:ui';
import 'package:flutter/material.dart';
import 'sign_screen/eleve_sign.dart';
import 'sign_screen/prof_sign.dart';

class EleveProf extends StatelessWidget {
  const EleveProf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 10),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Image(
                width: 180.0,
                  image: AssetImage(
                    'images/Vector.png',
                  ),
                fit: BoxFit.cover,
              ),
            ),
            const Center(
                  child: Image(
                    height: 250,
                    image: AssetImage(
                      'images/Learning-cuate.png'
                    ),
                  ),
                ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: const TextSpan(
                    text: "Bienvenue sur ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  children: [
                    TextSpan(
                      text: "DanKassawa LearnHub",
                      style: TextStyle(
                        color: Color.fromRGBO(175, 108, 29, 1.0),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      )
                    )
                  ]
                )
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Quel genre de profil voulez vous creer ?",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                fontSize: 18.0,
                color: Colors.black
              ),
            ),
            const SizedBox(
              height: 55.0,
            ),
            Container(
              width: 260.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EleveSignIn()
                  ));
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                      175, 108, 29, 1.0)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0), // Coin en haut à droite
                            bottomLeft: Radius.circular(20.0), // Coin en bas à gauche
                          )
                      )
                  ),
                  elevation: MaterialStatePropertyAll(10.0),
                ),
                child: const Text(
                  "Etudiant(e)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
           Container(
              width: 260.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfSignIn())
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                      175, 108, 29, 1.0)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0), // Coin en haut à droite
                            bottomRight: Radius.circular(20.0), // Coin en bas à gauche
                          )
                      )
                  ),
                  elevation: MaterialStatePropertyAll(10.0),
                ),
                child: const Text(
                  "Enseignant(e)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
