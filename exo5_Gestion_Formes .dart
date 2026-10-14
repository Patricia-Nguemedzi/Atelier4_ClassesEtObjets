import 'dart:math';
abstract class Forme {
   double calculAire();
 
   void afficherMessage() {
     print("calcule l'aire d'une forme géométrique");
   }
 }

 class Cercle extends Forme {
   final double rayon;
 
   Cercle(this.rayon);
 
   @override
   double calculAire() {
     return pi * rayon * rayon;
   }
 }

 class Rectangle extends Forme {
   final double longueur;
   final double largeur;
 
   Rectangle(this.longueur, this.largeur);
 
   @override
   double calculAire() {
     return longueur * largeur;
   }
 }

 main() {
   List<Forme> formes = [
     Cercle(10),
     Rectangle(12, 36),
   ];
 
   for (var forme in formes) {
     forme.afficherMessage();

     String nomForme = forme is Cercle ? "Cercle" : "Rectangle";
     print("Aire $nomForme : ${forme.calculAire(). toStringAsFixed(2)}\n");
   }
 }