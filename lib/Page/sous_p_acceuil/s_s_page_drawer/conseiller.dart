import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const d_black1 = Color(0xFF020101);

class Conseiller extends StatelessWidget {
  const Conseiller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Discuter avec nous',
            style: TextStyle(
                color: d_black1, fontSize: 20, fontWeight: FontWeight.bold),
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
                child: Center(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(80),
                    child: const Text(
                      "Bonjour"
                      " je suis Ibou chargé de gérer les demandes et réclamation relatives à nos produits et services\n"
                      "En quoi puis-je -vous aidez ?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 4),
                      blurRadius: 5,
                      spreadRadius: 2),
                ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      child: Icon(CupertinoIcons.square_arrow_down,color: Colors.grey.shade400,size: 40,),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '  Send a message ...',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade500.withOpacity(0.7),
                                )
                            )
                        ),
                      ),
                    ),  SizedBox(
                      width: 70,

                      child: Icon(CupertinoIcons.greaterthan_circle_fill,color: Colors.grey.shade400,size: 50,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
