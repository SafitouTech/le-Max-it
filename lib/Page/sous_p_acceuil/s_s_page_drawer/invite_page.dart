import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF020101);
const d_black2 = Color(0xFF101113);

class InvitePage extends StatelessWidget {
  const InvitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invitez un proche à télécharger Max it',
          style: TextStyle(
              color: d_black1,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Retour à la page précédente
          },
        ),
      ),
      body: Padding(
        padding:const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text("Invitez vos amies à télécharger l'application Max it",
              style: TextStyle(
                  color:Colors.green,
                  fontSize: 16.5,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nombre totol de filleuls",
                  style: TextStyle(
                      color: d_black1,
                      fontSize: 17,
                      //fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text('0',
                      style: TextStyle(
                          color: d_black1,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(CupertinoIcons.person_2_fill,color: d_orange,),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 1,width: 160,color: d_orange,),
                const Icon(CupertinoIcons.person_2_fill,color: d_orange,),
                Container(height: 1,width: 160,color: d_orange,),
              ],
            ),
            const SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("La list de vos filleuls",
                  style: TextStyle(
                    color: d_black1,
                    fontSize: 17,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.lightBlue.shade700),
                  ),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.add,color: Colors.lightBlue.shade700,size: 15,),
                      const SizedBox(width: 10,),
                      Text('Inviter un proche',
                        style: TextStyle(
                            color:Colors.lightBlue.shade700,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                        ),
                      ),

                    ],
                  )
                )
              ],
            ),
            const SizedBox(height: 30,),

            const Text("Vous n'avez pas encore de filleur",
              style: TextStyle(
                color:d_black1,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: const Center(
                      child: Text('Quitter',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );

  }
}
