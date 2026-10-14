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