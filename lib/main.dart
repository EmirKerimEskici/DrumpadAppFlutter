import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black54,
            body:
                DrumPad() //kısa bir şekilde clean kod mantığı ile aşağıya stateless olarak Drumpad tanımladım
            ));
  }


class DrumPad extends StatelessWidget {
  final oynatici = AudioCache();        //final ve AudioCache ile tanımladım değişkenimi

  ////////////
  //void sesiCal(String ses){
   // oynatici.play('$ses.wav');
  //}
  //AÇIK BİR ŞEKİLDE BİR FONKSİYON TANIMLADIM VE TANIMLANAN FONKSİYONA İSE STRİNG SES ADINDA
  // BİR TANE İNPUT GİRDİM VE BU OYNATİCİ.PLAY DEMEK YERİNE FONKSİYON İÇERİSİNE SES DOSYASI
  // YAZMAK YETERLİ OLACAKTIR
  ////////////77

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(  //Herşeyi column içerisine aldım çünkü yukarıdan aşağıya doğru olmasını istedim
        children: [
          Expanded(
            child: Row(
              //Yanyana olacakları için burada Column'ı Row'a dahil ettik
              children: [
                Expanded(
                  //Şimdi ise expanded widget'ı ile ekrana iki container'ıda sığdırmış olduk
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'crash.wav'); //Basit bir şekilde anonim fonksiyon ile sesei yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.red[400],
                      )),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'bip.wav'); //Basit bir şekilde anonim fonksiyon ile sesei yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.green[300],
                      )),
                ),
              ],
            ),
          ),

          Expanded(   //Ve Her eleman içerisine başına Expanded ile girdim bir birlerin alt alta karışmasın diye
            child: Row(
              //Yanyana olacakları için burada Column'ı Row'a dahil ettik
              children: [
                Expanded(
                  //Şimdi ise expanded widget'ı ile ekrana iki container'ıda sığdırmış olduk
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'clap1.wav'); //Basit bir şekilde anonim fonksiyon ile sesi yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.blue[300],
                      )),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'clap2.wav'); //Basit bir şekilde anonim fonksiyon ile sesi yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey,
                      )),
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              //Yanyana olacakları için burada Column'ı Row'a dahil ettik
              children: [
                Expanded(
                  //Şimdi ise expanded widget'ı ile ekrana iki container'ıda sığdırmış olduk
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'clap3.wav'); //Basit bir şekilde anonim fonksiyon ile sesei yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.orangeAccent,
                      )),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'how.wav'); //Basit bir şekilde anonim fonksiyon ile sesi yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.purple[300],
                      )),
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              //Yanyana olacakları için burada Column'ı Row'a dahil ettik
              children: [
                Expanded(
                  //Şimdi ise expanded widget'ı ile ekrana iki container'ıda sığdırmış olduk
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'ridebel.wav'); //Basit bir şekilde anonim fonksiyon ile sesi yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.deepOrange,
                      )),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        oynatici.play(
                            'woo.wav'); //Basit bir şekilde anonim fonksiyon ile sesi yerleştirdim
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.cyan,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
