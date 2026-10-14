class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);

  void afficherInfos() {
    print("Titre : $titre, Auteur : $auteur");
  }
}

void main() {
Livre livre1 = Livre("1984", "George Orwell");
Livre livre2 = Livre("Le Meilleur des mondes", "Aldous Huxley");

  livre1.afficherInfos();
  livre2.afficherInfos();
}