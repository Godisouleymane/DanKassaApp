import 'package:flutter/material.dart';

class HomeScreenF4 extends StatefulWidget {
  const HomeScreenF4({super.key});

  @override
  State<HomeScreenF4> createState() => _HomeScreenF4State();
}

class _HomeScreenF4State extends State<HomeScreenF4> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Home Tab
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                centerTitle: true,
                title: Text(
                    'Terminale F4',
                  textAlign: TextAlign.center,
                ),
                floating: true, // Vous pouvez personnaliser les paramètres de SliverAppBar ici
                pinned: true,
                expandedHeight: 200, // Hauteur de l'en-tête de l'app bar
                flexibleSpace: FlexibleSpaceBar(
                  background: Center(
                    child: Text("Test", style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
                backgroundColor: Color.fromRGBO(175, 108, 29, 1.0),
              ),
              SliverFillRemaining(
               child: Container(
                 child: Text('Home'),
               ),
              ),
            ],
          ),
          // Notifications Tab
          Container(
            color: Colors.green, // Exemple de widget pour l'onglet "Notifications"
            child: const Center(
              child: Text('Aucunes Notifications'),
            ),
          ),
          // Discussions Tab
          Container(
            color: Colors.orange, // Exemple de widget pour l'onglet "Discussions"
            child: const Center(
              child: Text('Aucunes Discussions'),
            ),
          ),
          // Profile Tab
          Container(
            color: Colors.purple, // Exemple de widget pour l'onglet "Profile"
            child: const Center(
              child: Text(' Profile'),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: Image(image: AssetImage('images/Learning-cuate.png')),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(175, 108, 29, 1.0),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(175, 108, 29, 1.0),
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(175, 108, 29, 1.0),
            icon: Icon(Icons.message),
            label: 'Discussions',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(175, 108, 29, 1.0),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index){
         setState(() {
           _currentIndex = index;
         });
        },
      ),
    );
  }
}
