import 'package:flutter/material.dart';
import 'package:the_max_it/Page/page_scanner.dart';
import 'package:the_max_it/main.dart';

const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF090707);
const d_black2 = Color(0xFF3A3939);
class PageOMoney extends StatefulWidget {
  const PageOMoney({super.key});

  @override
  State<PageOMoney> createState() => _PageOMoneyState();
}

class _PageOMoneyState extends State<PageOMoney> {
  bool isHidden3 =true;

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
  final List favoris =[
    {
      'image' : 'images/fav/send.png',
      'name': 'Transfert',
    },
    {
      'image' : 'images/fav/iQR.png',
      'name': 'Paiement',
    },

    {
      'image' : 'images/fav/facture.png',
      'name': 'Factures',
    },
    {
      'image' : 'images/fav/banque.png',
      'name': 'Banque',
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
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(7.5),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                      children: [
                        Container(
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Mon compte Orange Money',
                              style: TextStyle(
                                color: d_black1,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        //LA  partie principal
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
                                                    isHidden3 =! isHidden3;
                                                  });
                                                },
                                                icon: Icon(
                                                  isHidden3 ?
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
                                            child:isHidden3 ?
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
                        const SizedBox(height: 10,),
                        //scanne code
                        SizedBox(
                          height: 160,
                          width: 380,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 160,
                                width: 175,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 2),
                                      blurRadius: 3,
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                  image: const DecorationImage(image: AssetImage('images/img/dcode.jpg'),fit: BoxFit.cover),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 165,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(11)),
                                  ),
                                  child: const Image(image: AssetImage('images/img/code.jpg'),fit: BoxFit.cover,),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PageScanner()));
                                },
                                child: Container(
                                  height: 160,
                                  width: 175,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 2),
                                        blurRadius: 3,
                                        color: Colors.grey.shade300,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          //color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft:Radius.circular(30),
                                              topRight:Radius.circular(30),
                                            ),
                                            image: DecorationImage(image: AssetImage('images/img/mainqr.png'),fit: BoxFit.cover)
                                        ),
                                        height: 130,
                                        width: 175,
                                        //child: Image(image: AssetImage('images/img/mainqr.png'),fit: BoxFit.cover,)
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft:Radius.circular(30),
                                            bottomRight:Radius.circular(30),
                                          ),
                                        ),
                                        height: 30,
                                        width: 175,

                                        child: const Text('Sacnner et Payer',style: TextStyle(
                                          fontWeight: FontWeight.bold,color: d_black1,
                                        ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
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
                        //LA J APPEL MA LIST FAVORIS
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
                        const SizedBox(height: 15,),
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
                                    'Voir tout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: d_orange,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: d_orange,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15,),
                        //LA J APPEL MA LIST serVICE
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
                        const SizedBox(
                          width: 30,
                          height: 30,
                        )
                      ]
                  ),
                )
              ],
            ),
          )
      );
    }
  }

