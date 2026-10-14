class Livre {
  String titre;
  String auteur;

  int _pages = 200;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print("Titre : $titre, Auteur : $auteur");
  }

  static void afficherTotal() {
    print("Nombre total de livres  : $totalLivres");
  }
}

void main() {
Livre livre1 = Livre("1984", "George Orwell");
Livre livre2 = Livre("Le Meilleur des mondes", "Aldous Huxley");

  livre1.afficherInfos();
  livre2.afficherInfos();

  Livre.afficherTotal();
}