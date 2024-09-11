import 'package:flutter/material.dart';
import 'package:the_max_it/main.dart';

const d_black2 = Color(0xFF3A3939);
class PageLigne extends StatefulWidget {
  const PageLigne({super.key});

  @override
  State<PageLigne> createState() => _PageLigneState();
}

class _PageLigneState extends State<PageLigne> {
  bool isHidden4 = true;
  bool isHidden5 = true;

  final List favoris =[
    {
      'image' : 'images/fav/achatcrd.png',
      'name': 'Achat Crédit',
    },
    {
      'image' : 'images/fav/iQR.png',
      'name': 'Paiement',
    },
    {
      'image' : 'images/fav/home.png',
      'name': 'Internet à la maison',
    },
    {
      'image' : 'images/fav/banque.png',
      'name': 'Banque',
    },
  ];
  final List conso = [
    {
      'image' : 'images/fav/achatcrd.png',
      'type': 'Rechargement',
      'taille': '1296 FCFA',
      'date' : 'Expire le 02/11'
    },
    {
      'image' : 'images/fav/achatcrd.png',
      'type': 'Bonus Boites Destinations',
      'taille': '3000 FCFA',
      'date' : 'Expire le 02/11'
    },
  ];
  final List services =[
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
    },
  ];
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
                      RichText(
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
        _myBottomSheetOpen = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children:[
              Column(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(left: 10),
                      child: const Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'Ma Ligne',
                          style: TextStyle(
                            color: d_black1,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ]
              ),

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                    child:Column(
                      children: [
                        Container(
                          height: 150,
                          width: 380,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: const Offset(0,3),
                                    blurRadius: 3
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              //LA PARTI PRINCIPAL
                              Container(
                                height: 100,
                                width: 380,
                                decoration: const BoxDecoration(
                                  color: d_black1,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                ),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 5,right: 10),
                                      height: 30,
                                      width: 380,
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
                                            children: [
                                              IconButton(
                                                onPressed: (){
                                                  setState(() {
                                                    isHidden4 =! isHidden4;
                                                  });
                                                },
                                                icon: Icon(
                                                  isHidden4 ?
                                                  Icons.visibility:Icons.visibility_off,
                                                  color: d_orange,
                                                  size: 20,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
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
                                      padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                                      height: 70,
                                      width: 380,
                                      //color: d_yellow,
                                      child: Column(
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
                                            child:isHidden4 ?
                                            const Text(
                                              '2568 CFA',
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
                              Container(
                                padding: const EdgeInsets.all(15),
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
                                    Row(
                                      children: [
                                        const Text(
                                          'Accéder',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: d_orange,
                                            fontSize: 15,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
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

                            ],
                          ),
                        ),
                        const SizedBox(height: 7,),
                        //LA PARTI SARGAL
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
                                    child:isHidden5 ?
                                    const Text(
                                      '2568 CFA',
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
                                children: [
                                  IconButton(
                                    onPressed: (){
                                      setState(() {
                                        isHidden5 =! isHidden5;
                                      });
                                    },
                                    icon: Icon(
                                      isHidden5 ?
                                      Icons.visibility:Icons.visibility_off,
                                      color: d_orange,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
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
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15,),

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
                        const SizedBox(height: 15,),
                        //J'APPEL MA LIST FAVORIS
                        SizedBox(
                          height: 110,
                          width: double.infinity,
                          //color: d_orange,
                          child: Row(
                            children: favoris.map((favo){
                              return Container(
                                  padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                                  margin: const EdgeInsets.only(left: 5,right: 5),
                                  height: 110,
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
                                      const SizedBox(height:5,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(favo['name'],style: const TextStyle(
                                            fontSize: 14
                                        ),),
                                      ),
                                    ],
                                  )

                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 15,),

                        InkWell(
                          onTap: (){},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ma Conso',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: d_black1,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Voir details',
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
                            ],
                          ),
                        ),
                        const SizedBox(height: 15,),

                        //JE N AI PAS FAIT DE LIST  ==>PARTIE CONSO

                        Row(
                            children:[
                              Container(
                                height: 140,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: d_green,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.grey.shade300,width: 1),
                                ),
                                padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      const Icon(Icons.phone,color: Colors.green,),
                                      const Text('Rechargement',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,

                                        ),),
                                      const Text('1296.0 FCFA',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        ),),
                                      Text('Expire le 02/11',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: Colors.grey.shade600
                                        ),),
                                    ]
                                ),

                              ),
                              const SizedBox(width: 15,),
                              Container(
                                height: 140,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: d_green,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.grey.shade300,width: 1),
                                ),
                                padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      const Icon(Icons.phone,color: Colors.green,),
                                      const Text('Bonus Boites Destinations',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13

                                        ),),
                                      const Text('3000 FCFA',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        ),),
                                      Text('Expire le 03/11',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: Colors.grey.shade600
                                        ),),
                                    ]
                                ),
                              ),

                            ]
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Mes Services',
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
                                    'Voir details',
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
                        const SizedBox(height: 20),
                        //J'APPEL MA LIST SERVICES
                        SizedBox(
                          height: 110,
                          width: double.infinity,
                          //color: d_orange,
                          child: SingleChildScrollView(
                            child: Row(
                              children: services.map((favo){
                                return Container(
                                    padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                                    margin: const EdgeInsets.only(left: 5,right: 5),
                                    height: 110,
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
                                        const SizedBox(height:20,),
                                        Text(favo['name'],style: const TextStyle(
                                            fontSize: 15
                                        ),),
                                      ],
                                    )

                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
