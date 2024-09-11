import 'package:flutter/material.dart';
import 'package:the_max_it/Page/sous_p_acceuil/s_s_page_drawer/conseiller.dart';

const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF090707);
const d_black2 = Color(0xFF3A3939);
const d_yellow = Color(0xFFFFE7A0);
const d_mauve = Color(0xFFD68BE2);
const d_white = Color(0xFFF5F9F8);
const d_green = Color(0xFFD7EDDB);


class PageAcceuil extends StatefulWidget {
  const PageAcceuil({super.key});

  @override
  State<PageAcceuil> createState() => _PageAcceuilState();
}
class _PageAcceuilState extends State<PageAcceuil> {
  int _selectedIndex =0;
  bool _isBottomSheetOpen = false;
  bool isHidden = true;
  bool isHidden1 = true;
  bool isHidden2 = true;

  final List MesAchats = [
    {
      'image' : 'images/fav/home.png',
      'name': 'Internet ',
    },
    {
      'image' : 'images/fav/facture.png',
      'name': 'Factures',
    },
    {
      'image' : 'images/fav/time.png',
      'name': 'Historique',
    },
    {
      'image' : 'images/fav/om6.png',
      'name': 'Achat Pass',
    },
    {
      'image' : 'images/fav/depot.png',
      'name': 'Dépôt',
    },
     {
      'image' : 'images/fav/om5.png',
      'name': 'Suivi conso',
    },

    {
      'image' : 'images/fav/iQR.png',
      'name': 'Paiement',
    },
   {
     'image' : 'images/fav/om4.png',
     'name': 'Illimax',
   },
    {
      'image' : 'images/fav/facture.png',
      'name': 'Factures',
    },
    {
      'image' : 'images/fav/banque.png',
      'name': 'Banque',
    },
    {
      'image' : 'images/fav/om3.png',
      'name': 'Seddo',
    },
    {
      'image' : 'images/fav/send.png',
      'name': 'Transfert',
    },
    {
      'image' : 'images/fav/time.png',
      'name': 'historique',
    },

    {
      'image' : 'images/fav/depot.png',
      'name': 'Dépôt',
    },
    {
      'image' : 'images/fav/retire.png',
      'name': 'Retrait',
    },{
      'image' : 'images/fav/om.png',
      'name': 'agences',
    },
    {
      'image' : 'images/fav/facture.png',
      'name': 'Factures',
    },
    {
      'image' : 'images/fav/iQR.png',
      'name': 'Paiement',
    },
  ];

  final List Statut = [
    {
      'profile': 'images/prof1.png',
      'name': 'Promos',
    },
    {
      'profile': 'images/prof2.png',
      'name': 'Money',
    },
    {
      'profile': 'images/prof3.png',
      'name': 'Boutique',
    },
    {
      'profile': 'images/prof4.png',
      'name': 'Wido',
    },
    {
      'profile': 'images/prof5.png',
      'name': 'Nouveautés',
    },
  ];
  final List Favoris =[
    {
      'image' : 'images/fav/iQR.png',
      'name': 'Paiement',
    },
    {
      'image' : 'images/fav/time.png',
      'name': 'Historique',
    },
    {
      'image' : 'images/fav/depot.png',
      'name': 'Dépôt',
    },
    {
      'image' : 'images/fav/facture.png',
      'name': 'Factures',
    },
  ];
  final List Profite =[
    {
      'image' : 'images/pro/credit.png',
      'name': 'Recharge crédit',
      'surname': 'Achat de crédit',
    },
    {
      'image' : 'images/pro/wido.png',
      'name': 'Abonnement Wido',
      'surname': 'Abonnement Wido',
    }
  ];
  bool _myBottomSheetOpen =false;
  bool switchValue2 = true;
  //je crée la class _openBottomSheet
  void _openBottomSheet() {
    setState(() {
      _myBottomSheetOpen = true;
    });
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 800,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(10),
                topRight:Radius.circular(10),
              )
          ),
            child: Column(
              children: [
                SizedBox(
                  height:80 ,
                  width: double.infinity,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context); // Retour à la page précédente
                        },
                      ),
                      const Text('Choisissez vos favoris',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:20,
                      ),
                      ),
                      RichText(//pour avoir des textes aligner de tailles differentes
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '0',
                              style:  TextStyle(
                                color: d_orange,
                                fontWeight: FontWeight.w900,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text: '/4 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
                const SizedBox( height: 20,),
                   Expanded(
                     child: SingleChildScrollView(
                       scrollDirection: Axis.vertical,
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                        childAspectRatio: 1.1,
                        mainAxisSpacing: 2,
                      ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: MesAchats.length, // Ajoutez la longueur de la liste ici
                        itemBuilder: (context, index) {
                          var achat = MesAchats[index];
                          return Container(
                                  padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                                 margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                  height: 100,
                                  width: 107,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Colors.grey.shade300, width: 1),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: ClipRect(
                                          child: Image(
                                            image: AssetImage(achat['image']),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          achat['name'],
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  );
                              }
                          ),
                      ),
                     ),
                   ),
                Container(color: Colors.grey.shade300,height: 1,width: 370,),
                Container(
                  height:100 ,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height:30 ,
                          width:120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: const BorderRadius.all(Radius.circular(10),),
                          ),
                          child: const Center(child: Text('Quitter',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),)),
                        ),
                      ),
                      Container(
                        height:30 ,
                        width:120,
                        decoration: const BoxDecoration(
                          color: d_orange,
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        child: const Center(child: Text('Valider',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        );
      },
    ).whenComplete(() {
      setState(() {
        _isBottomSheetOpen = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        var setState = (() {
          _selectedIndex = 0;
        },
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Conseiller() ))
        );
      },
        shape: const CircleBorder(),
        child: Image.asset('images/avatar1.png'),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          padding: const EdgeInsets.all(10),
          child: Stack(children: [
            Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bonjour SOKHNA FATOU',
                    style: TextStyle(
                      color: d_black1,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //LA J APPEL MA LIST statut
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  //color: d_mauve,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Statut.map((fav) {
                        return Container(
                          child: Column(
                            children: [
                              //mes statuts
                              Container(
                                padding: const EdgeInsets.all(2),
                                margin: const EdgeInsets.fromLTRB(3, 15, 17, 5),
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.all(Radius.circular(30)),  c'est inutile
                                  color: Colors.white,
                                  border: Border.all(color: d_orange, width: 2, strokeAlign: 0),
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(fav['profile']),
                                  child: const ClipOval(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  fav['name'],
                                  style: const TextStyle(
                                      color: d_black1,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //mon solde CREDIT principale
                Container(
                  height: 150,
                  width: 380,
                  decoration: const BoxDecoration(
                    //color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 380,
                        decoration: const BoxDecoration(
                          color: d_black1,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            //la partie Principal
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 190,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: const Image(
                                            image: AssetImage('images/om.png'),
                                            height: 35,
                                            width: 35,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: (){
                                                setState(() {
                                                  isHidden =! isHidden;
                                                });
                                              },
                                              icon: Icon(
                                                isHidden ?
                                                Icons.visibility:Icons.visibility_off,
                                                color: d_orange,
                                                size: 20,
                                              ),
                                            ),

                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                //color: Colors.white,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/ilist.png'))),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    height: 70,
                                    width: 190,
                                    //color: d_yellow,
                                    child:  Column(
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Principal',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        //SizedBox(height: 2,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child:isHidden
                                              ? const Text(
                                            '2 568 CFA',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 22,
                                            ),
                                          ) :
                                          const Text(
                                            '---',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 22,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: double.infinity,
                              width: 2,
                              child: Container(
                                color: d_black2,
                              ),
                            ),
                            //la partie credit recharge
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10, right: 10),
                                    height: 30,
                                    width: 188,
                                    //color: d_yellow,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: const Image(
                                            image: AssetImage('images/itel.png'),
                                            height: 35,
                                            width: 25,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: (){
                                                setState(() {
                                                  isHidden1 =! isHidden1;
                                                });
                                              },
                                              icon: Icon(
                                                isHidden1 ?
                                                Icons.visibility:Icons.visibility_off,
                                                color: d_orange,
                                                size: 20,
                                              ),
                                            ),

                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                //color: Colors.white,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/ilist.png'))),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    height: 70,
                                    width: 188,
                                    //color: d_yellow,
                                    child:  Column(
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Credit Recharge',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        //SizedBox(height: 2,),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child:isHidden1 ?
                                          const Text(
                                            '0 CFA',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 22,
                                            ),
                                          ) :
                                          const Text(
                                            '---',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 22,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //LA PARTIE HISTORIQUE
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 50,
                        width: 380,
                        decoration: const BoxDecoration(
                          color: d_black2,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/ihist.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Text(
                                  '    Historique transactions',
                                  style: TextStyle(

                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Accéder',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: d_orange,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: d_orange,
                                  size:35,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7,),
                //LA PARTIE SARGAL
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 60,
                  width: 380,
                  decoration: const BoxDecoration(
                      color: d_black1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/isargal.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15,),
                          const Text('Sargal',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Align(
                            alignment: Alignment.topLeft,
                            child:isHidden2 ?
                            const Text(
                              '2219 CFA',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 22,
                              ),
                            ) :
                            const Text(
                              '---',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 22,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: (){
                              setState(() {
                                isHidden2 =! isHidden2;
                              });
                            },
                            icon: Icon(
                              isHidden2 ?
                              Icons.visibility:Icons.visibility_off,
                              color: d_orange,
                              size: 20,
                            ),
                          ),

                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              //color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/ilist.png'))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Mes Favoris',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: d_black1,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: _openBottomSheet,
                      child: const Row(
                        children: [
                          Text(
                            'Personnaliser',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: d_orange,
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: d_orange,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),

                //LA J APPEL MA LIST FAVORIS
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  //color: d_orange,
                  child: Row(
                    children: Favoris.map((favo){
                      return Container(
                          padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                          margin: const EdgeInsets.only(left: 5,right: 5),
                          height: 100,
                          width: 87,
                          decoration: BoxDecoration(
                            color: d_white,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey.shade300,width: 1),
                          ),
                          child:Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: ClipRect(
                                  child: Image(
                                    image:AssetImage(favo['image']),fit: BoxFit.cover,),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(favo['name'],style: const TextStyle(
                                  fontSize: 15
                              ),),
                            ],
                          )

                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 25,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("J'en profite",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: d_black1,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                //LA J APPEL MA LIST PROFIL
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Column(

                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 5,bottom: 2),
                              height: 74,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: d_yellow,
                                borderRadius: BorderRadius.only(
                                  topLeft:Radius.circular(20),
                                  topRight:Radius.circular(20),
                                ),
                              ),
                              child: const Image(image: AssetImage('images/pro/credit.png')),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 74,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft:Radius.circular(20),
                                  bottomRight:Radius.circular(20),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Recharge crédit',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Achat de crédit',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: d_orange
                                      ),),
                                      Icon(
                                        Icons.arrow_forward_rounded,
                                        color: d_orange,
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Column(

                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 5,bottom: 2),
                              height: 74,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: d_mauve,
                                borderRadius: BorderRadius.only(
                                  topLeft:Radius.circular(20),
                                  topRight:Radius.circular(20),
                                ),
                              ),
                              child: const Image(image: AssetImage('images/pro/wido.png')),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 74,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft:Radius.circular(20),
                                  bottomRight:Radius.circular(20),
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Abonnement wido',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Abonnement Wido',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: d_orange
                                      ),),
                                      Icon(
                                        Icons.arrow_forward_rounded,
                                        color: d_orange,
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /* if (!_isDrawerOpen)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: NavBar(), // j'amener mon BottomNavigationBar
              ),*/

            //Condition si je tap sur my NUM
           if (_isBottomSheetOpen)
              Container(
                color: Colors.black.withOpacity(0.3), // Opacité faible du fond
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isBottomSheetOpen = false;
                    });
                  },
                  child: Container(),
                ),
              ),
          ]
          ),
        )],
      ),
    );
  }
}
