
import 'package:flutter/material.dart';
import 'package:the_max_it/Page/sous_p_acceuil/s_s_page_drawer/parametre.dart';

import 'Page/page_acceuil.dart';
import 'Page/page_boutique.dart';
import 'Page/page_ligne.dart';
import 'Page/page_o_money.dart';
import 'Page/page_scanner.dart';
import 'Page/sous_p_acceuil/s_page_notification/notification_page.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/agence_et_pts_vente.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/assistance.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/avis.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/conseiller.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/favorites_page.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/invite_page.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/orange_money.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/page_profil.dart';
import 'Page/sous_p_acceuil/s_s_page_drawer/politique.dart';
const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF090707);
const d_black2 = Color(0xFF3A3939);
const d_yellow = Color(0xFFFFE7A0);
const d_mauve = Color(0xFFD68BE2);
const d_white = Color(0xFFF5F9F8);


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  bool _isBottomSheetOpen = false;
 // if (_selectedIndex == 4) ,
  final List<Widget> _page =
  [
    const PageAcceuil(),
    const PageOMoney(),
    const PageLigne(),
    PageBoutique(),
    const PageScanner(),
  ];


  bool switchValue1 = true;

  void _openBottomSheet() {
    setState(() {
      _isBottomSheetOpen = true;
    });
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(10),
                topRight:Radius.circular(10),
              )
          ),
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height:60 ,
                  width: double.infinity,
                  child: Center(
                    child: Text('Mes Lignes',style: TextStyle(
                    ),),
                  ),
                ),
                Container(color: Colors.grey.shade300,height: 1,width: 370,),
                SizedBox(
                  height:80 ,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text('770007700')),
                      Transform.scale(
                        scale: 0.5,
                        child:   Switch(
                          value: switchValue1,
                          onChanged: (value) {
                            setState(() {
                              switchValue1 = value;
                            },
                            );
                          },
                          activeColor: Colors.orange,
                        ),
                      ),
                    ],
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
                      Container(
                        height:30 ,
                        width:120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: const BorderRadius.all(Radius.circular(10),),
                        ),
                        child: const Center(child: Text('Fermer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),)),
                      ),
                      Container(
                        height:30 ,
                        width:120,
                        decoration: const BoxDecoration(
                          color: d_orange,
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                        ),
                        child: const Center(child: Text('Rattacher',
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
      key: _scaffoldKey,
        appBar: _selectedIndex == 3||_selectedIndex == 4 // Condition pour afficher ou cacher l'AppBar
            ? null
            : AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 47,
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('images/mymenu.png',), // Insérsion image menu
              ),
            ),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: IconButton(
                onPressed: null,
                icon: Icon(Icons.search_sharp,size: 30,color: d_black2,),
              ),
            ),
            const SizedBox(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationPage()));
              },
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Image(image: AssetImage('images/bell.png'),height: 20,width: 20,),
              ),
            )
          ],
          title: GestureDetector(
            onTap:_openBottomSheet ,
            child: const Row(
              children: [
                Text('770007700'),
                Icon(Icons.arrow_drop_down_outlined,size: 40,)
              ],
            ),
          ),
        ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 380,
        child:Column(
            children:[
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PageProfil()));
                      },
                      child: const SizedBox(
                        width: 280,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage('images/draw/profil.png'),
                            ),
                            SizedBox(height: 10),
                            Column(
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
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        // Action à effectuer quand on clique sur Accueil
                        setState(() {
                          // _isDrawerOpen = false; // Fermer le drawer
                        });
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
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    ListTile(
                      //shape: CircleBorder(),
                        leading: Container(
                          height:30,
                          width:30,
                          decoration: const BoxDecoration(
                              color: d_orange,
                              borderRadius: BorderRadius.all(Radius.circular(30),),
                              image: DecorationImage(image: AssetImage('images/draw/digit.png'),fit: BoxFit.cover)
                          ),
                        ),
                        title: const Text('Utiliser faceID/TouchID'),
                        onTap: () {

                        }
                    ),
                    const SizedBox(height: 15,),
                    Divider(color: Colors.grey.shade400,),
                    ListTile(
                      leading:Container(
                        height:30,
                        width:30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30),),
                            image: DecorationImage(image: AssetImage('images/draw/omoney.png'))
                        ),
                      ),
                      title: const Text('Gérer mon compte Orange Money'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OrangeMoney()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    Divider(color: Colors.grey.shade300,),
                    ListTile(
                      leading:Container(
                        height:30,
                        width:30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30),),
                            image: DecorationImage(image: AssetImage('images/draw/condit.png'))
                        ),
                      ),
                      title: const Text("Conditions d'utilisation"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Politique()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    ListTile(
                      leading:const Icon(Icons.map,color: d_black1,),
                      title: const Text("Nos agences & points de vente"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AgenceEtPtsVente()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    ListTile(
                      leading:Container(
                        height:30,
                        width:30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30),),
                            image: DecorationImage(image: AssetImage('images/avatar1.png'))
                        ),
                      ),
                      title: const Text("Parler à un conseiller"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Conseiller()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    ListTile(
                      leading:Container(
                        height:30,
                        width:30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/draw/invit.png'))
                        ),
                      ),
                      title: const Text("Inviter un proche à telecharger Max      it"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const InvitePage()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    Divider(color: Colors.grey.shade400,),
                    ListTile(
                      leading:const Icon(Icons.favorite,color: d_black1,),
                      title: const Text("Favoris"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FavoritesPage()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    ListTile(
                      leading:const Icon(Icons.settings,
                        color: d_black1,),
                      title: const Text("Paramètres"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Parametre()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    ListTile(
                      leading:const Icon(Icons.assignment_late_sharp,color: d_black1,),
                      title: const Text("Assistance"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Assistance()));
                      },
                    ),
                    const SizedBox(height: 15,),
                    ListTile(
                      leading:Container(
                        height:30,
                        width:30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/draw/avis.png'))
                        ),
                      ),
                      title: const Text("Votre avis nous intéresse"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Avis()));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: d_orange,width: 2))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.logout,color: d_orange,size: 35,),
                    const Text('Déconnexion',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 35,
                      width: 170,
                      decoration: BoxDecoration(
                        color:d_orange,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: const BorderRadius.all(Radius.circular(10),),
                      ),
                      child: const Text('Maxit-12.04(120004)',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),),
                    )
                  ],
                ),
              )
            ]
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) =>
            states.contains(WidgetState.selected)
                ? const TextStyle(color: d_orange)
                : const TextStyle(color: d_black1),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          surfaceTintColor: Colors.white,
          indicatorColor: Colors.white,
          backgroundColor: Colors.white,
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: [
            const NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              selectedIcon: Icon(
                Icons.home_rounded,
                size: 28,
                color: d_orange,
              ),
              label: 'Home',
            ),
            const NavigationDestination(
              icon: Icon(
                Icons.open_in_full_outlined,
                size: 28,
              ),
              selectedIcon:
              Icon(Icons.open_in_full_rounded, size: 28, color: d_orange),
              label: 'O Money',
            ),
            const NavigationDestination(
                icon: Icon(
                  Icons.sim_card_outlined,
                  size: 28,
                ),
                selectedIcon:
                Icon(Icons.sim_card_rounded, size: 28, color: d_orange),
                label: 'Ma ligne'),
            const NavigationDestination(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 28,
                ),
                selectedIcon: Icon(Icons.shopping_cart_rounded,
                    size: 28, color: d_orange),
                label: 'Boutique'),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageScanner()));
              },
              child: const NavigationDestination(
                  icon: Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 28,
                  ),
                  selectedIcon: Icon(Icons.qr_code_scanner_rounded,
                      size: 28, color: d_orange),
                  label: 'Scanner'),
            ),
          ],
        ),
      ),
      body: _page[_selectedIndex],
    );
  }
}
