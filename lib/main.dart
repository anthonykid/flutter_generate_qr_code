import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

//remember to import the package qr_flutter/qr_flutter.dart';
//link for the lvl of the QR : https://www.qrcode.com/en/about/version.html
//you can change the lvl of the qr, open the link above and the link will explain about the lvl of the qr

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[200],
        appBar: AppBar(
          title: Text("QR Generator For Github"),
          backgroundColor: Colors.indigo[800],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Scan The QR Code And You Will Be Redirected To My Github Link", //this is a text to explain my QR Code
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  ),
            ),
            Center(
              child: QrImage(
                //this is the child that we are using to make the qr code
                version: 6,
                backgroundColor: Colors.cyan[
                    200], //background inside the qr code that we are making
                foregroundColor: Colors.black, //qr code colors
                errorCorrectionLevel: QrErrorCorrectLevel
                    .M, //this is the lvl for the error correction
                padding: EdgeInsets.all(
                    0), //Creates insets where all the offsets are value.
                size: 300, //this making the size of the wr turns to 300x300
                data:
                    "https://github.com/anthonykid", //this is the inside data of the qr that we are gonna generate
              ),
            ),
          ],
        ),
      ),
    );
  }
}
