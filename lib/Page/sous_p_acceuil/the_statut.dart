import 'dart:async';
import 'package:flutter/material.dart';
import 'package:the_max_it/main.dart';

class TheStatut extends StatefulWidget {
  final int selectedIndex;

  const TheStatut({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _TheStatutState createState() => _TheStatutState();
}

class _TheStatutState extends State<TheStatut> {
  int _currentIndex = 0;
  double _progress = 0.0; // Progrès de la barre
  late Timer _timer;

  final List Statut = [
    {'profile': 'images/prof1.png', 'name': 'Promos'},
    {'profile': 'images/prof2.png', 'name': 'Money'},
    {'profile': 'images/prof3.png', 'name': 'Boutique'},
    {'profile': 'images/prof4.png', 'name': 'Wido'},
    {'profile': 'images/prof5.png', 'name': 'Nouveautés'},
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex; // Démarrer à partir du statut sélectionné
    _startPlayingStatus();
  }

  void _startPlayingStatus() {
    // Simulation de la lecture des statuts
    Future.delayed(Duration(seconds: 2), () {
      if (_currentIndex < Statut.length - 1) {
        setState(() {
          _currentIndex++;
          _progress = 0.0; // Réinitialise la progression à chaque changement de statut
        });
        _startPlayingStatus(); // Continuer à jouer le statut suivant
      } else {
        Navigator.pop(context); // Retourner à la page d'accueil lorsque tous les statuts sont lus
      }
    });

    // Met à jour la barre de progression
    _timer = Timer.periodic(Duration(milliseconds: 10), (Timer timer) {
      setState(() {
        _progress += 0.008; // Augmente la progression
        if (_progress >= 1.0) {
          _progress = 1.0; // S'assure que la progression n'excède pas 1.0
          timer.cancel(); // Arrête le timer
        }
      });
    });
  }

  void _nextStatus() {
    if (_currentIndex < Statut.length - 1) {
      setState(() {
        _currentIndex++;
        _progress = 0.0; // Réinitialise la progression
      });
    } else {
      Navigator.pop(context); // Retourner à la page d'accueil
    }
  }

  void _previousStatus() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _progress = 0.0; // Réinitialise la progression
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          if (details.localPosition.dx < MediaQuery.of(context).size.width / 2) {
            _previousStatus(); // Passer au statut précédent
          } else {
            _nextStatus(); // Passer au statut suivant
          }
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: LinearProgressIndicator(
                value: _progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(d_orange),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(Statut[_currentIndex]['profile']),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
