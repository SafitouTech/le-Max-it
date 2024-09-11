import 'package:flutter/material.dart';
import 'package:the_max_it/main.dart';

const d_black1 = Color(0xFF020101);

class AgenceEtPtsVente extends StatelessWidget {
  const AgenceEtPtsVente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Nos Agences',
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
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Agence & point de vente indisponible',
            style: TextStyle(
                color: d_mauve,
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),),
        ),
      ),
    );
  }
}
