abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurApi implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion 'établie pour [$utilisateur]'");
  }

  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion reussie");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Connexion a la base de données autorisée pour [$utilisateur].");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Déconnexion de la base de données reussie");
  }
}

void main() {
  List<Connectable> services = [
    ServeurApi(),
    BaseDeDonnees(),
  ];
 for (var service in services) {
    service.connecter("Admin");
    service.deconnecter();
    print(""); // Ligne vide pour séparer les services
 }
}