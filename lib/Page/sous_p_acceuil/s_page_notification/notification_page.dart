import 'package:flutter/material.dart';
import 'package:the_max_it/Page/page_boutique.dart';

const d_black1 = Color(0xFF020101);
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   DefaultTabController(
                length: 2,
                child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                title: const Text('Mes notifications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                  bottom: TabBar(
                     indicator: BoxDecoration(
                         border: Border.all(color: d_orange, width: 2),
                           borderRadius: BorderRadius.circular(10),
                              color: d_orange,
                    ),
                  tabs: [
                    Tab(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 3,bottom: 2,left: 10),
                       child: Container(

                        decoration: BoxDecoration(
                        border: Border.all(color:d_orange, width: 2),
                                         borderRadius: const BorderRadius.only(
                                           topLeft: Radius.circular(10),
                                           bottomLeft: Radius.circular(10),
                       ),
                        ),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Text('Retrait en attente',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                           ),
                         ),
                     ),
                      ),
                      Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3,bottom: 2,right: 10),
                        child: Container(
                            decoration: BoxDecoration(
                            border: Border.all(color: d_orange, width: 2),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            ),
                        child: const Align(
                                alignment: Alignment.center,
                                child: Text('Notifications',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),
                             ),
                      ),
                          ),
                      ],
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        labelPadding: const EdgeInsets.all(0),
                        indicatorPadding: const EdgeInsets.all(5),
                        indicatorSize: TabBarIndicatorSize.tab,
                     ),
                  ),
                    body: const TabBarView(
                    children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                    child: Text("Vous n'avez pas de retrait en cours",  style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                       child: Text("Vous n'avez pas de notification",  style: TextStyle(
                         fontWeight: FontWeight.bold,

                       ),),
                     ),
                       ],
                      ),
                     ),
                    ));
  }
}
