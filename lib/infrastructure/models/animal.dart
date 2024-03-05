class Animal {
  late String nombre;
  late String especie;
  late String tipo;

  Animal({required this.nombre, required this.especie, required this.tipo});
}

final animales = <Animal>[
  Animal(
    nombre: 'Dragon', 
    especie: 'dragon.webp', 
    tipo: 'Carnivoro'
  ),
  Animal(
    nombre: 'León', 
    especie: 'leon.webp', 
    tipo: 'Carnivoro'
  ),
  Animal(
    nombre: 'Gato', 
    especie: 'cat.webp', 
    tipo: 'omnivoro'
  ),
  Animal(
    nombre: 'Perro', 
    especie: 'dog.webp', 
    tipo: 'omnivoro'
  ),
  Animal(
    nombre: 'Caballo', 
    especie: 'horse.webp', 
    tipo: 'herviboro'
  ),
  Animal(
    nombre: 'Colibri', 
    especie: 'hummingbird.webp', 
    tipo: 'Herviboro'
  ),
  Animal(
    nombre: 'Conejo', 
    especie: 'rabbit.webp', 
    tipo: 'Herviboro'
  ),
  Animal(
    nombre: 'Tigre', 
    especie: 'tiger.webp', 
    tipo: 'Carnivoro'
  ),
  Animal(
    nombre: 'Tricerator', 
    especie: 'triceratops.webp', 
    tipo: 'Herviboro'
  ),
  Animal(
    nombre: 'Zebra', 
    especie: 'zebra.webp', 
    tipo: 'Herviboro'
  ),
];