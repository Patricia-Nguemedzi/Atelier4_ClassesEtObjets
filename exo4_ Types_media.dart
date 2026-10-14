class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("ceci est un media générique");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("ceci est un livre : $titre par $auteur");
  }
}