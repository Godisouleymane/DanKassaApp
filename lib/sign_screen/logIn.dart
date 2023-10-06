import 'package:flutter/material.dart';
import 'package:dan_kassawa/eleve_prof_screen.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                width: 160.0,
                image: AssetImage(
                  'images/Vector.png',
                ),
              ),
            ),
            Text('Content de vous revoir !',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Welcome back to school !',
              style: TextStyle(
                color: Color.fromRGBO(175, 108, 29, 1.0),
                fontStyle: FontStyle.italic,
                fontSize: 15.0
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image(
                  width: 250.0,
                  height: 200.0,
                  image: AssetImage(
                'images/homme-affaires-detenant-smartphone-boite-bulles-message-alarme-cloche-or-pour-notification-concept-technologique-par-illustration-rendu-3d-removebg-preview.png'
              )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Color.fromRGBO(175, 108, 29, 1.0)
                    )
                  ]
              ),
              width: 300.0,
              height: 50.0,
              child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                          "Email"
                      ),
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(175, 108, 29, 1.0),
                            width: 1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  )
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Color.fromRGBO(175, 108, 29, 1.0)
                    )
                  ]
              ),
              width: 300.0,
              height: 50.0,
              child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                          "Mot de passe"
                      ),
                      prefixIcon: Icon(
                        Icons.lock
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(175, 108, 29, 1.0),
                            width: 1.0
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  )
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 210.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {

                  });
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
                  "Connexion",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "Vous n’avez pas de compte ?",
                      style: TextStyle(
                        fontSize: 16.0,

                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EleveProf()
                          ));
                        });
                      },
                      child: Text("S’identifier", style: TextStyle(
                          color: Color.fromRGBO(175, 108, 29, 1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0
                      ),),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
