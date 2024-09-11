import 'package:flutter/material.dart';
const d_black1 = Color(0xFF020101);
class Politique extends StatelessWidget {
  const Politique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Condition générales d'Utilisation",
          style: TextStyle(
              color: d_black1,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Retour à la page précédente
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: const Column(
            children: [
              Text('CONDITIONS GENERALES D’UTILISATION DE L’E-SHOP DE SONATEL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height:50),
              Text('PREAMBULE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height:50),
              Text("SONATEL, Société Anonyme au capital social de cinquante milliards (50 000 000 000) de francs CFA, immatriculée au Registre du Commerce et du Crédit Mobilier de Dakar sous le numéro SN.DKR.74.B.61, ayant son siège social au 64, Voie de Dégagement Nord (VDN), Boite postale numéro 69 Dakar, dûment représentée par son Directeur Général, a mis en place une plateforme de vente à travers son site internet boutique.orange.sn ou via son portail https://www.orange.sn (ci-après « le Site »)."

                  "Le Site est une place de marché où sont vendues diverses catégories de produits et services que les Clients de SONATEL peuvent commander et récupérer notamment dans les agences Orange de SONATEL, des points-relais ou recevoir en livraison, dans les conditions et modalités ci-après."

                  "Les présentes Conditions Générales d’Utilisation s’appliquent au Site et à tous ses utilisateurs, notamment les Acheteurs."

                  "Afin de pouvoir utiliser ce Site, l’Utilisateur se soumet aux présentes conditions Générales d’Utilisation, complétées par les Conditions Générales de Vente, sans réserve, et consent à les respecter.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height:30),
              Text("Compte et obligations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height:30),
              Text("Pour s’enregistrer en tant que membre du Site, l’Utilisateur ouvre un compte avec un identifiant et un mot de passe, le cas échéant, il fournit des informations exactes, précises et complètes le concernant requises par SONATEL dans le cadre du formulaire d’enregistrement dédié sur le site."

                  "S’il dispose déjà d’un espace Client sur le site, l’Utilisateur peut directement accéder au Site, avec les mêmes identifiants."

                  "Dans les deux cas, il acceptera les présentes Conditions Générales pour utiliser le Site."

                  "L’Utilisateur s’engage à conserver et mettre à jour ses données d'enregistrement afin de les maintenir actuelles et complètes."

                  "L’Utilisateur est le seul responsable du maintien de la confidentialité, de la restriction à l’accès et à l'utilisation de son compte et du mot de passe. Il consent à notifier dans les meilleurs délais à SONATEL toute utilisation non autorisée de son mot de passe ou de son compte ou toute autre atteinte à la sécurité."

                  "SONATEL ne peut être tenue pour responsable pour tout manque à gagner, perte de profit, gain ou dommage de quelque nature que ce soit, direct ou indirect résultant de la divulgation ou d’une utilisation par une personne non habilitée du nom de l’utilisateur et/ou mot de passe.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height:30),
              Text("A travers cette plateforme de vente, SONATEL commercialise un catalogue attractif de produits et services, notamment une large gamme de terminaux de tous genres et marques à des tarifs privilégiés, leurs accessoires, des offres de connexion. Ces produits sont susceptibles d’être commandés sept jours sur sept (7/7) et vingt-quatre heures sur vingt-quatre (24h/24).",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height:30),
              Text("Parcours d’achat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text("Pour commander un produit, l’Utilisateur qui dispose d’un Espace Client consulte le Site boutique.orange.sn ou via https://www.orange.sn et clique sur l’onglet « Boutique en ligne ». Puis, il accède à la page Produits et confirme l’achat en cliquant sur le bouton « Acheter ». L’Utilisateur qui ne dispose pas encore de compte doit en créer un pour s’identifier et faire le même parcours pour commander."

                  "L’Utilisateur accède à la page « Acheter » où il pourra visiter le catalogue de produits vendus pour passer sa commande."

                  "Après avoir effectué un choix, l’Utilisateur reçoit un récapitulatif de la commande sur son « Panier ». Il valide sa commande en cliquant sur « Payer ma commande » et y indiquera son moyen de paiement."

                  "L’Utilisateur choisit le cas échéant le mode de livraison (en agence, à domicile, dans un lieu qu’il détermine ou dans un point-relais) ainsi que le mode de paiement (en espèce, par Orange Money ou par carte bancaire). La livraison du produit interviendra dans les plus courts délais, allant de trois (3) jours ouvrés au moins à dix (10) jours ouvrés au plus, date de commande."

                  "SONATEL appellera et/ou enverra à l’Utilisateur un mail récapitulatif de commande sur son numéro de téléphone et/ou adresse mail indiqués."

                  "L’Utilisateur peut suivre sa commande depuis son espace sur « Suivi commande livraison »."

                  "Limites d’utilisation"
                  "Dans le cade de l’utilisation du site de SONATEL, l’Utilisateur s’interdit de :"

                  "poster des commentaires, poser des questions ou fournir des réponse qui ne sont pas de nature factuelle, faire des commentaires racistes, blasphématoires, abuser d'un autre utilisateur, manquer de respect envers la culture d'autrui ou faire des commentaires déplacés et inappropriés ;"
                  "poster des informations ou contenus susceptibles de contenir des attaques ou des critiques à caractère politique ou dont le contenu serait contraire ou susceptibles de constituer un trouble à l'ordre public ;"
                  "poster des informations, des contenus susceptibles d’être considérées comme non- conformes aux lois et règlements en vigueur, à la morale, et/ou à l'éthique ;"
                  "distribuer ou poster des spam, des communications électroniques non sollicitées, des enchainements de lettres ;"
                  "diffuser des virus, chevaux de Troie, des vers, des virus à déclenchement programmé, Cancelbolts, Easter Eggs, ou d'autres technologies de programmation informatique qui peuvent nuire au Site, aux intérêts ou la propriété́ des utilisateurs du Site ;"
                  "essayer de reprendre le compte d'un autre Utilisate",
                style: TextStyle(
                  fontSize:18,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
