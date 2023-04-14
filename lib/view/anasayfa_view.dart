import 'package:flutter/material.dart';
import 'package:okulproje/model/user_model.dart';
import 'package:okulproje/statikveriler/burclar_veri.dart';
import 'package:okulproje/view/burcdetay_view.dart';

class AnaSayfaView extends StatefulWidget {
   const AnaSayfaView({super.key, required this.user});
   final User user;

  @override
  State<AnaSayfaView> createState() => _AnaSayfaViewState();
}

class _AnaSayfaViewState extends State<AnaSayfaView> {
  final veri = BurclarVeri();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Merhaba, ${widget.user.Isim}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
              child: GridView.builder(
                itemCount: veri.tumburclar.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>  BurcDetayView(model:veri.tumburclar[index]),),);
                },
                child: Card(
                  child: ListTile(
                    title: Image.asset(veri.tumburclar[index].BurcResmi,height: 100,),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Text(veri.tumburclar[index].BurcAdi??"",textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.w600),),
                    ),
                  ),
                  
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
