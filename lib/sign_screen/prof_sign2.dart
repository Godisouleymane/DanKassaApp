import 'package:flutter/material.dart';
import 'logIn.dart';

class ProfSign2 extends StatefulWidget {
  const ProfSign2({super.key});

  @override
  State<ProfSign2> createState() => _ProfSign2State();
}

class _ProfSign2State extends State<ProfSign2> {
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
                  )),
            ),
            SizedBox(height: 50.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Color.fromRGBO(175, 108, 29, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: const ClipOval(
                    child: Image(
                      width: 80.0,
                      height: 80.0,
                      image: AssetImage(
                          'images/5856.jpg'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 130.0,
                    height: 40.0,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                            175, 108, 29, 1.0)),
                        elevation: MaterialStatePropertyAll(10.0),
                      ),
                      child: const Text(
                        "Charger une image",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
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
                obscureText: true,
                  decoration: InputDecoration(
                      label: Text(
                          "Entrer votre mot de passe "
                      ),
                      prefixIcon: Icon(Icons.lock),
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
            SizedBox(height: 40,),
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
                obscureText: true,
                  decoration: InputDecoration(
                      label: Text(
                          "Confirmer votre mot de passe"
                      ),
                      prefixIcon: Icon(Icons.lock),
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
            SizedBox(height: 60,),
            Container(
              width: 210.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){},
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Vous avez deja un compte ?",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()
                      ));
                    });
                  },
                  child: Text("Se connecter", style: TextStyle(
                      color: Color.fromRGBO(175, 108, 29, 1.0),
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
