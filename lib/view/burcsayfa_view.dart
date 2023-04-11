import 'package:flutter/material.dart';
import 'package:okulproje/model/user_model.dart';

class BurcSayfaView extends StatefulWidget {
  const BurcSayfaView({super.key});

  @override
  State<BurcSayfaView> createState() => _BurcSayfaViewState();
}

class _BurcSayfaViewState extends State<BurcSayfaView> {
  @override
  Widget build(BuildContext context) {
    final model = User();
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Burç Uygulaması"),
      //   centerTitle: true,
      //   backgroundColor: Colors.orangeAccent,
      // ),
      
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Merhaba, ${model.Isim}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
