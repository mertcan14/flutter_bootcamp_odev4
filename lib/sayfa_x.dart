import 'package:flutter/material.dart';
import 'package:odev4/components/custom_appbar.dart';
import 'package:odev4/renkler.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  _SayfaXState createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: CustomAppbar(title: "Sayfa X", barColor: sayfaXAnaRenk,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width*6/10,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: sayfaXButtonRenk1,
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
