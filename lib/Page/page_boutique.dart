import 'package:flutter/material.dart';


const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF090707);
const d_black2 = Color(0xFF3A3939);
const d_yellow = Color(0xFFFFE7A0);
const d_mauve = Color(0xFFD68BE2);
const d_white = Color(0xFFF5F9F8);
const d_green = Color(0xFFD7EDDB);

class PageBoutique extends StatelessWidget {
  int _selectedIndex =3 ;

  List<Tab> tabs = [
    const Tab(child: Text('Tous')),
    const Tab(child: Text('Accessoires')),
    const Tab(child: Text('Mobile')),
    const Tab(child: Text('Internet et fi')),
  ];
  //00000000000000000

  List imgData = [

    'images/prod/casque.jpg',
    'images/prod/a32.jpg',
    'images/prod/ecouteur.jpg',
    'images/prod/airpod.jpg',
    'images/prod/iphone13.png',
    'images/prod/14pro.jpg',
    'images/prod/echo2.jpg',
    'images/prod/14promax.jpg',
    'images/prod/wifi1.jpg',
    'images/prod/wifi2.jpg',
    'images/prod/zii.jpg',

  ];

  List name = [
    'Casque Bose 700',
    'Samsung GAlaxy A32 5G',
    'Ecouteur JBL Tune 660NC',
    'AirPod',
    'iPhone  13',
    'iPhone  14',
    'Echo 4th Gen'
    'iPhone  14 Pro Max',
    'Wifi PT-LINK',
    'AZUS-Wifi4',
    'Slim Case Samsung GAlaxy Z Flip 3',
  ];
  List price = [
    '245 000 CFA',
    '250 000 CFA',
    '60 000 CFA',
    '35 000 CFA',
    '480 000 CFA',
    '575 000 CFA',
    '25 000 CFA',
    '690 000 CFA',
    '95 000 FCA',
    '125 000 CFA',
    '755 000 CFA'

  ];
  //1111111111111111


  List imgData1 = [

    'images/prod/bocinas.jpg',
    'images/prod/tv.jpg',
    'images/prod/cab2.jpg',
    'images/prod/cab3.jpg',
    'images/prod/capa.jpg',
    'images/prod/sgw5.jpg',
    'images/prod/oem.jpg',
    'images/prod/souri1.jpg',
    'images/prod/suptel.jpg',
    'images/prod/tete1.jpg',
    'images/prod/oss.jpg',
    'images/prod/cab1.jpg',
    'images/prod/hifi.jpg',
    'images/prod/tete2.jpg',
    'images/prod/montreint.jpg',
  ];

  List name1 = [
    'Bocinas15 DeLL',
    'Télécommande Multi Appareil',
    'Cablz Multi USB Rétractable.3 en 1',
    'Apple MagSafe Battery',
    'Apple AirPods com Cameta',
    'SamSumg Gallaxy Watch ',
    'Ecouteur fil ',
    'Sourie Mac Intedrée',
    'Support de Telephone avec..',
    'adaptateur',
    'Ecouteur Conduction Osseuse',
    'Chargeur ElectroMagnétique Aplle',
    'Casque LG320 PAT',
    'Chargeur USB-C 20W',
    'Montre Intelligent',
  ];
  List price1 = [
    '15 000 CFA',
    '10 000 CFA',
    '11 500 CFA',
    '26 000 CFA',
    '9 900 CFA',
    '5 000 CFA',
    '25 000 CFA',
    '8 000 CFA',
    '3 900 FCA',
    '7 000 CFA',
    '21 000 CFA',
    '8 500 CFA',
    '2 000 CFA',
    '45 000 CFA',
    '62 500 CFA',
  ];
  //2222222222222222222222
  List imgData2 = [

    'images/prod/touch.jpg',
    'images/prod/a32.jpg',
    'images/prod/iphone13.png',
    'images/prod/14pro.jpg',
    'images/prod/14promax.jpg',
    'images/prod/zii.jpg',
    'images/prod/s23.jpg',
    'images/prod/s24.jpg',
    'images/prod/tab.jpg',
    'images/prod/tele1.jpg',
    'images/prod/tablo.jpg',
    'images/prod/box.jpg',
  ];

  List name2 = [
    'Touch Screen Android EFT',
    'Samsung GAlaxy A32 5G',
    'iPhone  13',
    'iPhone  14',
    'iPhone  14 Pro Max',
    'Slim Case Samsung GAlaxy Z Flip 3',
    'SamsungSIM FREE Galaxy S23',
    'SamsungSIM FREE Galaxy S24',
    'Tablet-Hùlle fùr Samsung TAB A8..',
    'TElevision ED illustration isolé',
    'Ecran de projecteur electronique',
    'Box Ordinateur-Tablette tactile',
  ];

  List price2 = [
    '105 000 CFA',
    '250 000 CFA',
    '480 000 CFA',
    '575 000 CFA',
    '690 000 CFA',
    '755 000 CFA',
    '615 000 CFA',
    '686 000 CFA',
    '340 000 CFA',
    '1 200 000 CFA',
    '1 600 000 CFA',
    '1 000 000 CFA',
  ];

  //3333333333333333333333

  List imgData3 = [

    'images/prod/echo2.jpg',
    'images/prod/echo1.jpg',
    'images/prod/wifi1.jpg',
    'images/prod/wifi2.jpg',
    'images/prod/imppdf.jpg',
    'images/prod/projete.jpg',
    'images/prod/wifi3.jpg',
    'images/prod/wifi4.jpg',

  ];

  List name3 = [

    'Echo Dot(5th generation)',
    'Echo 4th Gen',
    'Wifi PT-LINK',
    'AZUS-Wifi4',
    'Imprimante PDF',
    'Projeteur DC3',
    'Mini Pocket Wifi Portable',
    'NETVIP WLAN Super Signal ',
  ];
  List price3 = [

    '125 000 CFA',
    '190 000 CFA',
    '95 000 FCA',
    '125 000 CFA',
    '300 000 CFA',
    '240 000 CFA',
    '50 000 CFA',
    '710 000 CFA',

  ];

  PageBoutique({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(

        floatingActionButton: FloatingActionButton(
          onPressed: (){
          var setState = (() {
            _selectedIndex = 3;
          });
        },
          shape: const CircleBorder(),
          backgroundColor: d_orange,
          splashColor: Colors.orange.shade600,
          elevation: 10,
          child: const Icon(Icons.shopping_cart_rounded,color: Colors.white,),
        ),
        appBar: AppBar(
          //elevation: 1,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: TabBar(
              //dragStartBehavior: DragStartBehavior.down,
              padding: const EdgeInsets.all(18),
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: d_orange,
                    width: 1.5,
                  )),

              tabAlignment: TabAlignment.start,
              tabs: tabs,
              dividerColor: Colors.grey.shade500,
              dividerHeight: 1,
              indicatorPadding: const EdgeInsets.all(-7),
              indicatorWeight: 0.3,
              automaticIndicatorColorAdjustment: true,
              indicatorColor: d_orange,
              isScrollable: true,
              labelColor: d_orange,
              mouseCursor: MouseCursor.defer,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10),
              labelStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              unselectedLabelColor: d_black1,
              unselectedLabelStyle: const TextStyle(
                fontSize: 20,
              ),
              //controller: TabController(length: 4, vsync: ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //MES PRODUITS
            SingleChildScrollView(

              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    //color: Colors.red,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Tous les produits',
                        style: TextStyle(
                          color: d_black1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                   //scrollDirection: Axis.vertical,
                    child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.1,
                              mainAxisSpacing: 30,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: name.length,
                            itemBuilder: (context,index) {
                              return InkWell(
                                onTap: (){},
                                child: Stack(
                                  children:[
                                    Container(
                                    padding: const EdgeInsets.all(2),
                                    margin: const EdgeInsets.only(left: 15,right: 10),
                                    decoration: BoxDecoration(
                                      //color: Colors.blue,
                                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(color: Colors.grey.shade400),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children :[
                                          SizedBox(
                                              height: 90,
                                              width: 170,
                                              child: Image.asset(imgData[index])),
                                          Text(name[index],style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,),
                                          Text(price[index],style: const TextStyle(
                                            color: d_orange,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),)
                                        ]
                                    ),
                                  ),
                                    const Image(image: AssetImage('images/prod/new.png'),width: 30,),
                                  ],
                                ),
                              );
                            }
                        )),
                  )
                ],
              ),
            ),
            //MES ACCESSOIRES
            SingleChildScrollView(

              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    //color: Colors.red,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Accessoires',
                        style: TextStyle(
                          color: d_black1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                   //scrollDirection: Axis.vertical,
                    child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.1,
                              mainAxisSpacing: 30,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: name1.length,
                            itemBuilder: (context,index1) {
                              return InkWell(
                                onTap: (){},
                                child: Stack(
                                  children:[
                                    Container(
                                    padding: const EdgeInsets.all(2),
                                    margin: const EdgeInsets.only(left: 15,right: 10),
                                    decoration: BoxDecoration(
                                      //color: Colors.blue,
                                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(color: Colors.grey.shade400),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children :[
                                          SizedBox(
                                              height: 90,
                                              width: 170,
                                              child: Image.asset(imgData1[index1])),
                                          Text(name1[index1],style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,),
                                          Text(price1[index1],style: const TextStyle(
                                            color: d_orange,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),)
                                        ]
                                    ),
                                  ),
                                    const Image(image: AssetImage('images/prod/new.png'),width: 30,),
                                  ],
                                ),
                              );
                            }
                        )),
                  )
                ],
              ),
            ),
            //MES MOBILES
            SingleChildScrollView(

              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    //color: Colors.red,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Mobiles',
                        style: TextStyle(
                          color: d_black1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    //scrollDirection: Axis.vertical,
                    child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.1,
                              mainAxisSpacing: 30,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: name2.length,
                            itemBuilder: (context,index2) {
                              return InkWell(
                                onTap: (){},
                                child: Stack(
                                  children:[
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      margin: const EdgeInsets.only(left: 15,right: 10),
                                      decoration: BoxDecoration(
                                        //color: Colors.blue,
                                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                                        border: Border.all(color: Colors.grey.shade400),
                                      ),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children :[
                                            SizedBox(
                                                height: 90,
                                                width: 170,
                                                child: Image.asset(imgData2[index2])),
                                            Text(name2[index2],style: TextStyle(
                                              color: Colors.grey.shade800,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                              textAlign: TextAlign.center,),
                                            Text(price2[index2],style: const TextStyle(
                                              color: d_orange,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),)
                                          ]
                                      ),
                                    ),
                                    const Image(image: AssetImage('images/prod/new.png'),width: 30,),
                                  ],
                                ),
                              );
                            }
                        )),
                  )
                ],
              ),
            ),
            //MES INTERNET ET FI
            SingleChildScrollView(

              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    //color: Colors.red,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Internet et fixe',
                        style: TextStyle(
                          color: d_black1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    //scrollDirection: Axis.vertical,
                    child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.1,
                              mainAxisSpacing: 30,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: name3.length,
                            itemBuilder: (context,index3) {
                              return InkWell(
                                onTap: (){},
                                child: Stack(
                                  children:[
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      margin: const EdgeInsets.only(left: 15,right: 10),
                                      decoration: BoxDecoration(
                                        //color: Colors.blue,
                                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                                        border: Border.all(color: Colors.grey.shade400),
                                      ),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children :[
                                            SizedBox(
                                                height: 90,
                                                width: 170,
                                                child: Image.asset(imgData3[index3])),
                                            Text(name3[index3],style: TextStyle(
                                              color: Colors.grey.shade800,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                              textAlign: TextAlign.center,),
                                            Text(price3[index3],style: const TextStyle(
                                              color: d_orange,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),)
                                          ]
                                      ),
                                    ),
                                    const Image(image: AssetImage('images/prod/new.png'),width: 30,),
                                  ],
                                ),
                              );
                            }
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
