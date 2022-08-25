import 'package:flutter/material.dart';
import 'package:odev4/components/custom_appbar.dart';
import 'package:odev4/renkler.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  _SayfaYState createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  Future<bool> geriDon(BuildContext context) async{
    showDialog(
        context: context,
        builder: (ctx)=>AlertDialog(
          title: const Text("Ana Sayfaya Dönmek İstediğinizden Emin Misiniz?"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text("Ana Sayfaya Dön")
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Sayfa Y de kal")
              ),
            ],
          ),
        )
    );
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Sayfa Y", barColor: sayfaYAnaRenk,),
      body: WillPopScope(
        onWillPop: ()=>geriDon(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sayfaların Sonuna Geldiniz.", style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic
              ),),
              const Text("Tekrar Ana Sayfaya Dönmek İçin Geri Tuşuna Basmalısınız.", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
              ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
