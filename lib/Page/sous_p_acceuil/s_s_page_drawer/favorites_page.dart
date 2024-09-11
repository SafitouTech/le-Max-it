import 'package:flutter/material.dart';
import 'package:the_max_it/Page/sous_p_acceuil/s_s_page_drawer/page_profil.dart';

const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF020101);
const d_black2 = Color(0xFF101113);
const d_yellow = Color(0xFFFFE7A0);
const d_mauve = Color(0xFFD68BE2);
const d_white = Color(0xFFF5F9F8);
const d_green = Color(0xFFD7EDDB);

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Gérer mes favoris',
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
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageProfil()));
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 35, 25, 20),
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,1),
                        color:d_orange,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('images/draw/profil.png'),
                      ),
                      const SizedBox(height: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SOKHNA FATOU GUEYE',
                            style: TextStyle(
                                color: d_black1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            " Jamono New S'cool",
                            style: TextStyle(
                              color: d_black1,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context); // Fermer le drawer
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(18, 18, 0, 0),
                          child: Icon(Icons.close,
                            weight: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),

                Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                width: 360,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.grey),
                  ),
                child:const Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 300,
                      child:  TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Codes marchant',
                            hintStyle: TextStyle(
                              color: d_black2,
                            ))),
                    ),
                     Expanded(child: Icon(Icons.arrow_drop_down_sharp,size: 40,))
                  ],
                )
              ),
              const SizedBox(height: 20,),
              const Text(
                'Pas de favoris disponible',
                style: TextStyle(
                  color: d_black1,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
    );
  }
}
