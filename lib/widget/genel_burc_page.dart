import 'package:flutter/material.dart';
import 'package:okulproje/model/burc_model.dart';

class GenelBurcPagee extends StatelessWidget {
  const GenelBurcPagee({
    super.key,
    required this.model,
  });

  final Burc model;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Container(
            width: 390,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xffb92b27), Color(0xff1565C0)],
                )),
            child: Column(
              children: [
                ListTile(
                  title: Text(model.BurcAdi!),
                   subtitle: Padding(padding: const EdgeInsets.only(top: 10),child: Text('${model.BasTarih.toString().substring(5,10)}//${model.BitTarih.toString().substring(5,10)}',),),
                                                      
                ),
                Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      model.BurcResmi,
                      width: 100,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xffaa4b6b),
                    Color(0xff6b6b83),
                    Color(0xff3b8d99)
                  ]),
                  borderRadius: BorderRadius.circular(10)),
              width: 390,
              
              child: ListTile(
                title: const Text('Burç Özellikleri'),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(model.BurcGenelOzellik!),
                ),
              )),
        )
      ],
    );
  }
}
