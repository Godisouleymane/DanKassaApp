import 'package:flutter/material.dart';
import 'eleve_prof_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 10),
      body: Column(
        children: [
         Container(
           alignment: Alignment.topLeft,
           child: const Image(
             width: 180.0,
             image: AssetImage(
               'images/Vector.png',
             ),
           ),
         ),
          const SizedBox(
            height: 100.0,
          ),
          const Center(
           child: ClipOval(
             child: Image(
               width: 150,
               height: 150,
               image: AssetImage(
                 'images/images-removebg-preview.png'
               ),
             ),
           ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Column(
            children: [
              Text(
                "REUSSIR VOTRE BAC TECHNIQUE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "PERDER PAS DE TEMPS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70.0,
          ),
          Container(
            width: 230.0,
            height: 50.0,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EleveProf())
                  );
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
                  "Commencer",
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
    );
  }
}
