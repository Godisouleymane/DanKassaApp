import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dan_kassawa/sign_screen/prof_sign2.dart';
import 'package:dan_kassawa/sign_screen/logIn.dart';

class ProfSignIn extends StatefulWidget {
  const ProfSignIn({super.key});

  @override
  State<ProfSignIn> createState() => _ProfSignInState();
}

class _ProfSignInState extends State<ProfSignIn> {

  bool terminaleE = false;
  bool terminaleF1 = false;
  bool terminaleG1 = false;
  bool terminaleG2 = false;
  bool terminaleF3 = false;
  bool terminaleG3 = false;
  bool terminaleF4 = false;


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
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Bienvenue sur l’espace dédié aux enseignant(es)",
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
              const SizedBox(height: 20.0,),
             const Center(
                child: Text(
                  'Sélectionner vos classes :',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0,),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CheckboxListTile(
                                  title: Text('Terminale E'),
                                  subtitle: Text('Serie industrielle'),
                                  value: terminaleE,
                                  activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      terminaleE = value!;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CheckboxListTile(
                                  title: Text('Terminale F1'),
                                  subtitle: Text('Serie industrielle'),
                                  value: terminaleF1,
                                  activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      terminaleF1 = value!;
                                    });
                                  },

                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CheckboxListTile(
                                  title: Text('Terminale G1'),
                                  subtitle: Text('Serie tertiaire'),
                                  value: terminaleG1,
                                  activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      terminaleG1 = value!;
                                    });
                                  },
                                ),
                              ),
                              CheckboxListTile(
                                title: Text('Terminale G2'),
                                subtitle: Text('Serie tertiaire'),
                                value: terminaleG2,
                                activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                checkColor: Colors.white,
                                onChanged: (bool? value) {
                                  setState(() {
                                    terminaleG2 = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 70.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CheckboxListTile(
                                  title: Text('Terminale F3'),
                                  subtitle: Text('Serie industrielle'),
                                  value: terminaleF3,
                                  activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      terminaleF3 = value!;
                                    });
                                  },

                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CheckboxListTile(
                                  title: Text('Terminale G3'),
                                  subtitle: Text('Serie tertiaire'),
                                  value: terminaleG3,
                                  activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      terminaleG3 = value!;
                                    });
                                  },

                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: CheckboxListTile(
                                  title: Text('Terminale F4'),
                                  subtitle: Text('Serie industrielle'),
                                  value: terminaleF4,
                                  activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      terminaleF4 = value!;
                                    });
                                  },

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              Container(
                width: 210.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfSign2())
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
              SizedBox(height: 20,),
               Padding(
                padding: EdgeInsets.only(bottom: 30.0),
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
                          fontSize: 16
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

