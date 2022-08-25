import 'package:flutter/material.dart';
import 'package:odev4/components/custom_appbar.dart';
import 'package:odev4/renkler.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  _SayfaBState createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      appBar: CustomAppbar(title: "Sayfa B", barColor: sayfaBAnaRenk,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width*6/10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: sayfaBButtonRenk1,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaY()));
                },
                child: const Text("Sayfa Y ye geçiş yap."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
