import 'package:flutter/material.dart';
import 'package:the_max_it/Page/sous_p_acceuil/s_s_page_drawer/page_profil.dart';
import 'package:the_max_it/main.dart';
const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF020101);
const d_black2 = Color(0xFF101113);
class Parametre extends StatelessWidget {
  const Parametre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Paramètre',
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
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [

                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Langue',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ),
                const SizedBox(height: 15,),

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
                                  hintText: 'Français',
                                  hintStyle: TextStyle(
                                    color: d_black2,
                                  )
                              )),
                        ),
                        Expanded(child: Icon(Icons.arrow_drop_down_sharp,size: 40,))
                      ],
                    )
                ),
                const SizedBox(height: 15,),


                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Apparence',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
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
                                  hintText: 'Auto',
                                  hintStyle: TextStyle(
                                    color: d_black2,
                                  )
                              )),
                        ),
                        Expanded(child: Icon(Icons.arrow_drop_down_sharp,size: 40,))
                      ],
                    )
                ),
                const SizedBox(height: 15,),

                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Choisir un thème',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                     decoration: BoxDecoration(
                       color: d_orange,
                       border: Border.all(color: d_black1, width: 5),
                      borderRadius: const BorderRadius.all(Radius.circular(30))
                     ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                     decoration: const BoxDecoration(
                       color: d_mauve,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                    ),
                  Container(
                      height: 50,
                      width: 50,
                     decoration: const BoxDecoration(
                       color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                    ),
                  Container(
                      height: 50,
                      width: 50,
                     decoration: const BoxDecoration(
                       color:Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                    ),
                  Container(
                      height: 50,
                      width: 50,
                     decoration: const BoxDecoration(
                       color: Colors.pinkAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                    ),
                  Container(
                      height: 50,
                      width: 50,
                     decoration: const BoxDecoration(
                       color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                     ),
                    ),
                  ],
                )
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
