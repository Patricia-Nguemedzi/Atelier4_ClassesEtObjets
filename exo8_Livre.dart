class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);

  void afficherInfos() {
    print("Livre : $titre, Auteur : $auteur");
  }
}