

import 'package:flutter/material.dart';
import 'package:okulproje/model/user_model.dart';
import 'package:okulproje/widget/page_router.dart';

class GirisView extends StatefulWidget {
  const GirisView({Key? key}) : super(key: key);

  @override
  State<GirisView> createState() => _GirisViewState();
}

class _GirisViewState extends State<GirisView> {
  TextEditingController kullaniciadi=TextEditingController();
  TextEditingController sifre =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: AnimatedContainer(height: MediaQuery.of(context).viewInsets.bottom > 0 ? 0:hight/3,duration: const Duration(milliseconds: 500),
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3924/3924420.png',
                  height: hight / 3,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
             SizedBox(
              width: 250,
              child: TextField( controller: kullaniciadi,
                decoration: const InputDecoration(hintText: 'Kullanıcı Adı Giriniz'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             SizedBox(
              width: 250,
              child: TextField(controller: sifre,
              obscureText: true,
                decoration: const InputDecoration(hintText: 'Şifre Giriniz'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 125,
                child: ElevatedButton(
                  onPressed: () {
                    final model=User(KullaniciKodu: kullaniciadi.text, Sifre: sifre.text);
                    if(model.KullaniciKodu=='admin' && model.Sifre=='1266') {}
                    {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PageRouter(),));
                    }

                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 100, 5, 117))),
                  child: const Text('Giriş Yap'),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
