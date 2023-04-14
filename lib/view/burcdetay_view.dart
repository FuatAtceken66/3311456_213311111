import 'package:flutter/material.dart';
import 'package:okulproje/model/burc_model.dart';
import 'package:okulproje/widget/genel_burc_page.dart';
import 'package:okulproje/widget/gunluk_burc_page.dart';


class BurcDetayView extends StatefulWidget {
  const BurcDetayView({super.key, required this.model});
  final Burc model;

  @override
  State<BurcDetayView> createState() => _BurcDetayViewState();
}

class _BurcDetayViewState extends State<BurcDetayView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black45,
          bottom: const TabBar(
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Text('Genel Burç Özellikleri'),
              ),
              Tab(
                child: Text('Günlük Burç Yorumları'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GenelBurcPagee(model: widget.model),
            GunlukBurcPage(model: widget.model),
          ],
        ),
      ),
    );
  }
}

