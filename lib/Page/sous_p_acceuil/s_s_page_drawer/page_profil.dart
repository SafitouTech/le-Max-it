import 'package:flutter/material.dart';

const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF020101);
const d_black2 = Color(0xFF101113);

class PageProfil extends StatelessWidget implements PreferredSizeWidget{
   PageProfil({super.key});

@override
  Size get preferredSize => const Size.fromHeight(200);

  final List compte = [
    {
      'info':'Nom',
      'donnée':'GUEYE',
    },
  {
      'info':'Prenom',
      'donnée':'SOKHNA FATOU ',
    },
  {
      'info':'Type',
      'donnée':"Carte d'identité",
    },
  {
      'info':'Numéro',
      'donnée':'28555000156351',
    },
  {
      'info':'PUK',
      'donnée':'87501245',
    },
 ];


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Mon Profil',
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
        Container(
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
      const SizedBox(height: 20,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text('Informations personnelles',
                              style: TextStyle(
                                color: d_black1,
                                fontSize: 16,
                              ),
                            textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Column(
                            children: compte.map((perso){
                              return SizedBox(
                                height: 90,
                                width: 380,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      perso['info'],style: const TextStyle(
                                      color: d_black1,
                                      fontSize: 16,
                                    ),),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 40,
                                      width: 380,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        border: Border.all(color: Colors.grey.shade700),
                                      ),
                                      child:
                                         Text(perso['donnée'],
                                          style: const TextStyle(
                                            fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                          const Align(
                            alignment:Alignment.topLeft,
                            child: Text('Numéros actifs',
                              style: TextStyle(
                                color: d_black1,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(height: 15),
                         const Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('770007700',
                                style: TextStyle(
                                  color: d_black1,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.start,
                              ),
                             Icon(Icons.radio_button_checked_outlined,color: d_orange,),
                           ],
                         ),
                
                        Container(
                         margin: const EdgeInsets.fromLTRB(0, 20, 10, 20),
                          height: 1,
                          width: 380,
                          color: Colors.grey.shade500,
                        ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 50,
                            width: 380,
                            decoration: const BoxDecoration(
                              color: d_orange,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Rattacher un de vos numéros ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.add_box_sharp,color: Colors.white,)
                              ],
                            ),
                          ),
                          const SizedBox(height: 30,)
                        ],
                      ),
                    ),
                ),
              ),

    ])
    )
    );
  }
}
