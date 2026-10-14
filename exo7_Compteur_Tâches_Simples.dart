class Tache{
  String description;
  static int nombreTotal = 0;
  Tache(this.description){
    nombreTotal++;
  }
}

void main() {
  var tache1 = Tache("Apprendre les bases de Dart");
  var tache2 = Tache("Comprendre les classes et objets");
  var tache3 = Tache("Maîtriser les concepts avancés de Dart");

  print("Nombre total de tâches créées : ${Tache.nombreTotal}");
}