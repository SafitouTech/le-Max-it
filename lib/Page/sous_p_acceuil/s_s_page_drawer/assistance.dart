import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const d_black1 = Color(0xFF020101);
const d_orange = Color(0xFFFFA500);

class Assistance extends StatefulWidget {
  const Assistance ({super.key});

  @override
  State<Assistance> createState() => _AssistanceState();
}

class _AssistanceState extends State<Assistance> {
  final List<Map<String, String>> Faq = [
    {
      'title': 'Comment bloquer et annuler un transfert Orange Money',
      'subtitle': "Pour bloquer ou annuler instantanément un transfert Orange Money, allez sur l'historique des transferts Orange Money, choisissez l'opération à annuler et cliquez sur Annuler",
    },
    {
      'title': "Comment contacter l'assistance Technique Wifi",
      'subtitle': "Pour assistance sur votre abonnement Wifi, vous pouvez : visiter l'espace Assistance ou chatter avec Ibou",
    },
    {
      'title': "Comment s'abonner aux offres Wifi",
      'subtitle': "Vous pouvez vous connecter aux offres wifi sans vous déplacer",
    },
    {
      'title': "Illiflex comment ça marche",
      'subtitle': "Avec Illiflex, vous composez vous-même votre propre abonnement en minutes d'appel et volumes internet",
    },
    {
      'title': "Avez-vous un souci d'émission ou de réception d'appels?",
      'subtitle': "Si vous rencontrez un souci d'émission ou de réception d'appels, nous vous invitons à :\n"
          "1. Vérifier la force du signal du réseau sur votre mobile\n"
          "2. Faire un test croisé si vous disposez d'un autre terminal (mettre la SIM dans un autre téléphone et voir si le problème subsiste. Si le problème persiste après le test de signal, CONTACTEZ IBOU)",
    },
  ];

  List<bool> _isExpanded = [];

  @override
  void initState() {
    super.initState();
    _isExpanded = List.generate(Faq.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'FAQ',
          style: TextStyle(
            color: d_black1,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Retour à la page précédente
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Faq.length,
                itemBuilder: (context, index) {
                  final faqItem = Faq[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 5, // L'ombre est contrôlée par l'élévation
                      child: ExpansionTile(
                        leading: Icon(
                          CupertinoIcons.question_circle,
                          color: _isExpanded[index] ? d_orange : Colors.blue,
                        ),
                        textColor: d_orange, // Couleur du texte lorsqu'il est développé
                        iconColor: d_orange, // Couleur de l'icône lorsqu'il est développé
                        collapsedTextColor: d_black1,
                        collapsedIconColor:d_black1 ,
                        title: Text(
                          faqItem['title']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: _isExpanded[index] ? d_orange : d_black1,
                          ),
                        ),
                        onExpansionChanged: (expanded) {
                          setState(() {
                            _isExpanded[index] = expanded;
                          });
                        },
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              faqItem['subtitle']!,
                              style: const TextStyle(
                                fontSize: 17,
                                color: d_black1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Center(
                  child: Text(
                    'Quitter',
                    style: TextStyle(
                      fontSize: 18,
                      color: d_black1,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
