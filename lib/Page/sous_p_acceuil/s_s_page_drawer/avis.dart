import 'package:flutter/material.dart';
import 'package:the_max_it/main.dart';

class Avis extends StatelessWidget {
  const Avis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: d_orange,
        title: const Text("Discuter avec nous",
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
      body: Center(
        child: Container(
          color: Colors.white,
          padding:const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Votre avis',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),),
                    Text('Maxit',
                      style: TextStyle(
                        fontSize: 30,
                      ),)
                  ],
                ),
              ),
              const SizedBox(height:40),
              const SizedBox(
                height: 250,
                width: 250,
                child: Image(image: AssetImage('images/avatar1.png'),fit: BoxFit.cover,),
              ),
              const SizedBox(height:30),
              Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                width: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black,
                ),
                child: const Text('Votre avis nous interesse '
                    "Aidez à nousnaméliorer l'ewperience de l'application Maxit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,),
              ),
              const SizedBox(height:30),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color:Colors.grey.shade700,
                ),
                child: const Center(
                  child: Text('continuer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
