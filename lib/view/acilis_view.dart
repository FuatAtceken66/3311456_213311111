import 'package:flutter/material.dart';
import 'package:okulproje/view/giris_view.dart';

class AcilisView extends StatefulWidget {
  const AcilisView({super.key});

  @override
  State<AcilisView> createState() => _AcilisViewState();
}

class _AcilisViewState extends State<AcilisView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          _AcilisPage(
            title: "Günlük Burç Yorumlarını İncele",
            subtitle: "Uzman yorumcuların yorumlarına oturduğun yerden eriş",
            imagePath:
                "https://img.freepik.com/free-photo/horoscope-astrology-collage_23-2150324491.jpg?size=626&ext=jpg",
          ),
          _AcilisPage(
            title: "Günlük Burç Yorumlarını İncele",
            subtitle: "Uzman yorumcuların yorumlarına oturduğun yerden eriş",
            imagePath:
                'https://img.freepik.com/free-photo/horoscope-astrology-collage_23-2150324491.jpg?size=626&ext=jpg',
          ),
             _AcilisPage(
            title: "Günlük Burç Yorumlarını İncele",
            subtitle: "Uzman yorumcuların yorumlarına oturduğun yerden eriş",
            imagePath:
                'https://img.freepik.com/free-photo/horoscope-astrology-collage_23-2150324491.jpg?size=626&ext=jpg',
                isButonActive: true,
          ),
        ],
      ),
    );
  }
}

class _AcilisPage extends StatelessWidget {
  const _AcilisPage(
      {required this.imagePath,
      required this.title,
      required this.subtitle,
      this.isButonActive=false});

  final String title;
  final String subtitle;
  final String imagePath;
  final bool isButonActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black.withOpacity(0.3),
        ),
        Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ListTile(
                title: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 50),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            isButonActive
                ? SizedBox(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(
                      
                      style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 100, 5, 117))),
                      child: const Text(
                        "Giriş yap",
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const GirisView(),));},
                    ),
                  )
                : const SizedBox.shrink()
          ],
        )
      ],
    );
  }
}
