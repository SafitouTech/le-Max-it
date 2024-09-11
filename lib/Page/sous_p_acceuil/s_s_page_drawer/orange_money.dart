import 'package:flutter/material.dart';
import 'package:the_max_it/Page/sous_p_acceuil/s_s_page_drawer/page_profil.dart';
const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF020101);
const d_black2 = Color(0xFF101113);
const d_yellow = Color(0xFFFFE7A0);
const d_mauve = Color(0xFFD68BE2);
const d_white = Color(0xFFF5F9F8);
const d_green = Color(0xFFD7EDDB);

class OrangeMoney extends StatelessWidget {
  const OrangeMoney({super.key});

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
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  PageProfil()));
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
                  padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            image: const DecorationImage(image: AssetImage('images/draw/ccc.png'))
                          ),
                        ),
                        const SizedBox(width: 30,),
                        const Expanded(child: Text('Changer de code secret',
                          style: TextStyle(
                              color: d_black1,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),))
                      ],
                    ),
                ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(

                children: [
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                    ),
                    child: const Icon(Icons.https,color: d_orange,),
                  ),
                  const SizedBox(width: 30,),
                  const Expanded(child: Text('Mot de passe oublié',
                    style: TextStyle(
                        color: d_black1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 70, 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text('Votre compte a été plafonné à un cummul de transaction à 200 000 FCFA',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey.shade500,
              height: 1,
            ),
             Container(
              width: 380,
              height: 45,
               decoration: BoxDecoration(
                   color: Colors.white,
                 border: Border.all(color: d_black2,),
                 borderRadius: const BorderRadius.all(Radius.circular(10))
               ),
               child: const Center(
                 child: Text('Déplafonner',
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),),
               ),

            ),

          ],
        ),
      )
    );
  }
}
