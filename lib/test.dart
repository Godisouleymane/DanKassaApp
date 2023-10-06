import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

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
      body: Center(
        child: Row(
          children: [
            Container(
              width: 170.0,
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text('Terminale E'),
                    value: terminaleE,
                    activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        terminaleE = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Terminale F1'),

                    value: terminaleF1,
                    activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        terminaleF1 = value!;
                      });
                    },

                  ),
                  CheckboxListTile(
                    title: Text('Terminale G1'),
                    value: terminaleG1,
                    activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        terminaleG1 = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Terminale G2'),

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
            Container(
              width: 170.0,
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text('Terminale F3'),

                    value: terminaleF3,
                    activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        terminaleF3 = value!;
                      });
                    },

                  ),
                  CheckboxListTile(
                    title: Text('Terminale G3'),

                    value: terminaleG3,
                    activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        terminaleG3 = value!;
                      });
                    },

                  ),
                  CheckboxListTile(
                    title: Text('Terminale F4'),

                    value: terminaleF4,
                    activeColor: Color.fromRGBO(175, 108, 29, 1.0),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        terminaleF4 = value!;
                      });
                    },

                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
