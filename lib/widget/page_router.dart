import 'package:flutter/material.dart';
import 'package:okulproje/view/anasayfa_view.dart';
import 'package:okulproje/view/burcsayfa_view.dart';

class PageRouter extends StatefulWidget {
  const PageRouter({super.key});

  @override
  State<PageRouter> createState() => _PageRouterState();
}

class _PageRouterState extends State<PageRouter> {
  int index=0;
  PageController controller=PageController();
 void SayfaDegistir(int value){
  setState(() {
    index=value;
  });
 }
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        title: Image.network('https://cdn-icons-png.flaticon.com/512/3924/3924420.png',width: 1000,),      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          controller.animateToPage(value, duration: const Duration(milliseconds: 500), curve: Curves.ease);
        },
        currentIndex: index,
        items: const [
           BottomNavigationBarItem(
            
            icon: Icon(Icons.view_compact_alt),
            label: 'Burçlar'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Burcunun Öğren'
          ),
         
        ],
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          SayfaDegistir(value);
        },
        children: const [
          AnaSayfaView(),
          BurcSayfaView()
        ],
      )
    );
  }
}
