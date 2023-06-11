import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
          child: Container(
              child:
                  Text("Name-Syed Daniyal Zia ,Email - dsyed1935@gmail.com"))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //      DrawerHeader(
            //        child: Text("Towkar", style: TextStyle(color: Colors.black87)),
            //        decoration: BoxDecoration(color: Colors.orange),
            //      ),
            UserAccountsDrawerHeader(
              accountName: Text("Syed Daniyal"),
              accountEmail: Text("Daniyal@gmail.com"),
              currentAccountPicture: Image.asset("assets/aa.jpg"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Mail"),
              subtitle: Text("personal"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
