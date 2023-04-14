import 'package:flutter/material.dart';
import 'package:okulproje/model/user_model.dart';
import 'package:okulproje/statikveriler/burclar_veri.dart';
import 'package:okulproje/view/burcdetay_view.dart';

class BurcSayfaView extends StatefulWidget {
  const BurcSayfaView({super.key});

  @override
  State<BurcSayfaView> createState() => _BurcSayfaViewState();
}

class _BurcSayfaViewState extends State<BurcSayfaView> {
  TextEditingController takvimcontroller=TextEditingController();
  DateTime? tarih;
  final Burc=BurclarVeri();
    @override
  void BurcumuOgren(DateTime tarih){
    User user =User(DogumTarihi: tarih);
    for (var item in Burc.tumburclar) {
      if(user.DogumTarihi!.isAfter(item.BasTarih!)==true && user.DogumTarihi!.isBefore(item.BitTarih!)==true)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BurcDetayView(model: item,);
        },),);
        
      }
    }

    
    
    
    
    
  }
  
   Future<void> TakvimGetir()
    async{
      
      tarih= await showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime.2024());
      takvimcontroller.text=tarih.toString().substring(0,10);
      setState(() {
         
       });
    }
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children:  [
          const ListTile(
            title: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 65),
                child: Text(
                  'Burcunuzu Öğrenin',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
           SizedBox(
            width: 250,
            child: TextField(
              controller: takvimcontroller,
               onTap:() {TakvimGetir();},
               decoration: const InputDecoration(hintText: 'Doğum Tarihinizi Giriniz',),),
          ),
          
          SizedBox(child: ElevatedButton(onPressed:(){
            if (tarih!=null)
            {
             BurcumuOgren(tarih!);
            }
            
            } ,child: const Text('Burcumu Öğren'),),)
        ],
      ),
    );
  }
}
