import 'package:flutter/material.dart';

void main() {
  runApp(Hoja());
}

class Hoja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoja de Vida',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoja de Vida Estebxn'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú Principal', style: TextStyle(color: Colors.white, fontSize: 24)),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 76, 78, 80)),
            ),
            ListTile(
              title: Text('Perfil Ocupacional'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PerfilOcupacionalScreen()));
              },
            ),
            ListTile(
              title: Text(' Mis Datos Personales'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DatosPersonalesScreen()));
              },
            ),
            ListTile(
              title: Text(' Mis Referencias Laborales'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReferenciasLaboralesScreen()));
              },
            ),
            ListTile(
              title: Text('Estudios Completados'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EstudiosScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Bienvenido a mi Hoja de Vida')),
    );
  }
}

class PerfilOcupacionalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil Ocupacional')),
      body: Center(child: Text('Aquí va tu perfil ocupacional')),
    );
  }
}

class DatosPersonalesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Datos Personales')),
      body: Center(child: Text('Aquí van tus datos personales')),
    );
  }
}

class ReferenciasLaboralesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Referencias Laborales')),
      body: Center(child: Text('Aquí van tus referencias laborales')),
    );
  }
}

class EstudiosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Estudios')),
      body: Center(child: Text('Aquí van tus estudios')),
    );
  }
}
