import 'package:flutter/material.dart';
import 'package:odev4/components/custom_appbar.dart';
import 'package:odev4/renkler.dart';
import 'package:odev4/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: CustomAppbar(title: "Sayfa A", barColor: sayfaAAnaRenk,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width*6/10,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaB()));
                },
                child: const Text("Sayfa B ye geçiş yap."),
                style: ElevatedButton.styleFrom(
                  primary: sayfaAButtonRenk1
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
