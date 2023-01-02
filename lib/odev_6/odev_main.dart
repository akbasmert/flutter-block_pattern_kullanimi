import 'package:block_pattern_kullanimi/odev_6/odev_anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OdevMain extends StatefulWidget {
  const OdevMain({Key? key}) : super(key: key);

  @override
  State<OdevMain> createState() => _OdevMainState();
}

class _OdevMainState extends State<OdevMain> {
  int secilenIndeks = 0;
  var sayfaListesi = [const OdevAnasayfa(),const OdevAnasayfa()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: sayfaListesi[secilenIndeks],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      FloatingActionButton(
        elevation: 0,

          backgroundColor: Colors.redAccent,

          child: Icon(Icons.camera_alt,color: Colors.white,), onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 59,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               TextButton(onPressed: (){}, child: Column(
                 children: [
                   Icon(Icons.home_filled,size: 26,color: Colors.redAccent,),
                   Text("ANA SAYFA",style: TextStyle(fontSize: 12,color: Colors.redAccent),),
                 ],
               ),
               ),
                TextButton(onPressed: (){}, child: Column(
                  children: [
                    Icon(MdiIcons.messageProcessing,size: 26,color: Colors.grey),
                    Text("SOHBETLER",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  ],
                ),
                ), Padding(
                  padding: const EdgeInsets.only(bottom: 0.0,top: 20),
                  child: SizedBox(
                    width: 40,
                  child: Text("SAT",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight:FontWeight.bold)),
                  ),
                ), // The dummy child
                TextButton(onPressed: (){}, child: Column(
                  children: [
                    Icon(MdiIcons.heart,size: 26,color: Colors.grey),
                    Text("İLANLARIM",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  ],
                ),
                ),
                TextButton(onPressed: (){}, child: Column(
                  children: [
                    Icon(MdiIcons.account,size: 26,color: Colors.grey),
                    Text("HESAP",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  ],
                ),
                ),              ],
            ),
          )),
    /*  bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "ANA SAYFA"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.messageProcessing),label: "SOHBETLER"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: "SAT"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.heart),label: "İLANLARIM"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.account),label: "HESAP"),


        ],
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: secilenIndeks,
        onTap: (indeks){
          setState(() {
            secilenIndeks = indeks;
          });        },
      ),*/
    );
  }
}
