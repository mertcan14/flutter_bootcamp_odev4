import 'package:flutter/material.dart';
import 'package:odev4/components/custom_appbar.dart';
import 'package:odev4/renkler.dart';
import 'package:odev4/sayfa_a.dart';
import 'package:odev4/sayfa_x.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      appBar: CustomAppbar(title: "Ana Sayfa", barColor: anaSayfaAnaRenk,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width*6/10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: anaSayfaButtonRenk1
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaA()));
                },
                child: const Text("Sayfa A ya geçiş yap."),
              ),
            ),
            SizedBox(
              width: width*6/10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: anaSayfaButtonRenk2,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaX()));
                },
                child: const Text("Sayfa X e geçiş yap."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
