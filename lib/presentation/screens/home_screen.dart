import 'package:flutter/material.dart';
import 'package:listmaster/infrastructure/models/animal.dart';

class HomeScreen extends StatelessWidget {
  final String titulo;
  const HomeScreen({super.key, required this.titulo});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: ListView.builder(
        itemCount: animales.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ListTile(
              leading: Image.asset('assets/${animales[index].especie}', height: 80, width: 50),
              title: Text(animales[index].nombre, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              subtitle: Text(animales[index].tipo, style: const TextStyle(fontSize: 20),),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FichAnimal(animal: animales[index])));
            },
          );
        },
      ),
    );
  }

  
}

class FichAnimal extends StatelessWidget {
  final Animal animal;
  const FichAnimal({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.nombre),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/${animal.especie}',height: 350, width: 420),
          Text('Tipo: ${animal.tipo}', style: const TextStyle(fontSize: 20),)
        ],
      ),
    );
  }

}