class Compte {
  final String numeroCompte;
 double _solde;

  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde => '${_solde.toStringAsFixed(2)} \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  var compte = Compte('CPT-001');
  compte.depot(150.00);
  compte.depot(-50.00);
  print(compte.solde);
}