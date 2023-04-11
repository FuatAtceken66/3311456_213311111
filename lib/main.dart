import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUyg());
}






class BenimUyg extends StatelessWidget {
  const BenimUyg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: Scaffold(      
          appBar: AppBar(
            title: const Center(child: Text("Burç Yorumları")),
            centerTitle: true,
            /*actions: <Widget>[IconButton(icon: Icons(Icons.notifications),
            onPressed: () {},)],*/
            backgroundColor: Colors.orangeAccent,
             leading: IconButton(onPressed: () {
               
             },
              icon: const Icon(Icons.menu),),
              /*shape: const RaundedRectangleBorder(BorderRadius:BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),
              ),
              ),*/
             ),
          body: 
           Center(
             child:Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
             ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Günlük Burç Yorumu İçin Tıkla",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),    
             ElevatedButton(               
              onPressed: () {},
              child: const Text(
                "Günlük Tarot Falı İçin Tıkla",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ]
           ),
      ),
      ),
    );
  }
}




