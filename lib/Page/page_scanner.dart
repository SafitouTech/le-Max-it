import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


const d_orange = Color(0xFFF36F05);
const d_black1 = Color(0xFF090707);
const d_black2 = Color(0xFF3A3939);
class PageScanner extends StatefulWidget {
  const PageScanner({super.key});

  @override
  State<PageScanner> createState() => _PageScannerState();
}

class _PageScannerState extends State<PageScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? _qrController;
  String _result = '';

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      _qrController?.pauseCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR & Paiement marchant',style: TextStyle(
          color: d_black1,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
             // Retourne à l'écran précédent
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 123,
                    decoration: BoxDecoration(
                      color:d_orange,
                      borderRadius: const BorderRadius.only(
                        topLeft:Radius.circular(10),
                        bottomLeft:Radius.circular(10),
                      ),
                      border: Border.all(color: d_orange),
                    ),
                    child: const Center(
                      child: Text('Paiement',style: TextStyle(
                        color: Colors.white,
                        fontWeight:FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 123,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: d_orange),
                      ),
                      child: const Center(
                        child: Text('Galerie',style: TextStyle(
                          color: d_black1,
                          fontWeight:FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 123,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topRight:Radius.circular(10),
                        bottomRight:Radius.circular(10),
                      ),
                      border: Border.all(color: d_orange),
                    ),
                    child: const Center(
                      child: Text('Mes cartes QR',style: TextStyle(
                        color: d_black1,
                        fontWeight:FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: d_orange,
                    borderRadius:20,
                    borderLength: 40,
                    borderWidth: 5,
                    cutOutSize: MediaQuery.of(context).size.width * 0.8,
                    overlayColor: const Color(0xFF0E0D0D),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),

              height: 70,
              width: double.infinity,
              color: const Color(0xFF0E0D0D),
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                height: 50,
                width: 280,
                decoration: const BoxDecoration(
                  color: d_orange,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 34,
                        width: 50,
                        child: Image(image: AssetImage('images/scan/home.png'))),
                    Text('Code marchand',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

           SizedBox(
             height: 80,
             width: double.infinity,
             child:

             Row(

               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height: 40,
                   width: 160,
                 decoration: BoxDecoration(
                     color:Colors.white,
                   border: Border.all(color: Colors.grey),
                   borderRadius: const BorderRadius.all(Radius.circular(10))
                 ),
                   child: const Center(
                     child: Text('Quitter',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: d_black1,
                       ),
                     ),
                   ),
                 ),
               Container(
                   height: 40,
                   width: 160,
                 decoration: BoxDecoration(
                     color:d_orange.withOpacity(0.8),
                   border: Border.all(color: Colors.grey),
                   borderRadius: const BorderRadius.all(Radius.circular(10))
                 ),
                   child: const Center(
                     child: Text('Valider',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: Colors.white54,
                       ),
                     ),
                   ),
                 )
               ],
             ),
           )

          ],
        ),
      ),
      bottomNavigationBar: null,  // Masquer la BottomNavigationBar sur cette page
    );
  }

// controller le scanner en utilisant les données origines
  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      _qrController = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        _result = scanData.code ?? 'No result';  // Vérifie le champ `code`
      });
    });
  }

  @override
  void dispose() {
    _qrController?.dispose();
    super.dispose();
  }
}
