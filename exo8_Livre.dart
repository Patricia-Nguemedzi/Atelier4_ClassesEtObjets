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

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  @override
  void afficherInfos() {
    print("Titre : $titre, Auteur : $auteur, Genre : $genre, Pages : $pages");
  }
}

void main() {
  Livre livre1 = Livre("Le petit prince", "Antoine de Saint-Exupéry");
  Livre livre2 = Livre("Le Meilleur des mondes", "Aldous Huxley");
  
  Roman roman1 = Roman("Sous la cendre", "Jean-Paul Sartre", "Philosophique");
  Roman roman2 = Roman("entre les lignes", "Margaret Atwood", "Science-fiction");

  livre1.afficherInfos();
  livre2.afficherInfos();
  roman1.afficherInfos();
  roman2.afficherInfos();
 
  Livre.afficherTotal();
}
