import 'package:flutter/material.dart';
import 'package:dan_kassawa/sign_screen/eleve_sign2.dart';
import 'logIn.dart';
class EleveSignIn extends StatefulWidget {
  const EleveSignIn({super.key});

  @override
  State<EleveSignIn> createState() => _EleveSignInState();
}

class _EleveSignInState extends State<EleveSignIn> {

  String? serieChoisi;
  List <String> listSeries = [
   "Industrielle",
    "Tertiaire"
  ];

  String? classeChoisi;
  List <String> listClasses = [
    "Terminale E",
    "Terminale F1",
    "Terminale F3",
    "Terminale F4",
    "Terminale G1",
    "Terminale G2",
    "Terminale G3",
  ];

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
                width: 110.0,
                  image: AssetImage(
                    'images/Vector.png',
                  )),
            ),
            const Text(
              "Bienvenue sur l’espace dédié aux étudiant(es)",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
           const SizedBox(
              height: 30,
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
                    "Nom"
                  ),
                  prefixIcon: Icon(Icons.person),
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
                          "Prenom"
                      ),
                      prefixIcon: Icon(Icons.person),
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
                      label: const Text(
                        "Adresse mail"
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
              width: 300.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color.fromRGBO(175, 108, 29, 1.0),
                  width: 1.0,
                ),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 0.5,
                        color: Color.fromRGBO(175, 108, 29, 1.0)
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: DropdownButton(
                  isExpanded: true,
                  hint: Text(
                    "Selectionner votre serie",
                  ),
                    value: serieChoisi,
                    onChanged: (newValue) {
                      setState(() {
                        serieChoisi = newValue;
                      });
                    },
                  items: listSeries.map((valeurSerie) {
                    return DropdownMenuItem(
                        value: valeurSerie,
                        child: Text(valeurSerie)
                    );
                  }).toList(),
                    underline: Container()
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: 300.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(175, 108, 29, 1.0),
                    width: 1.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 0.5,
                        color: Color.fromRGBO(175, 108, 29, 1.0)
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: DropdownButton(
                  isExpanded: true,
                  hint: Text(
                    "Selectionner votre classe",
                  ),
                  value: classeChoisi,
                  onChanged: (newValue) {
                    setState(() {
                      classeChoisi = newValue;
                    });
                  },
                  items: listClasses.map((valeurClasse) {
                    return DropdownMenuItem(
                        value: valeurClasse,
                        child: Text(valeurClasse)
                    );
                  }).toList(),
                    underline: Container()
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
                width: 210.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: (){
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> EleveSign2())
                     );
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
                    "Suivant",
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
                padding: EdgeInsets.only(bottom: 20.0),
                child: Row(
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
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0
                      ),),
                    )
                  ],
                )
            )
          ]
        ),
      ),
      );
  }
}


