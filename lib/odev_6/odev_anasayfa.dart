import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OdevAnasayfa extends StatefulWidget {
  const OdevAnasayfa({Key? key}) : super(key: key);

  @override
  State<OdevAnasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<OdevAnasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(MdiIcons.mapMarker,color: Colors.grey,),
                  Text("Ordu, Tütkiye" ,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  ),
                  Icon(Icons.keyboard_arrow_down,color: Colors.grey,)
                ],
              ),
            ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 3,bottom: 3),
                    child: SizedBox(
                      height: 46,
                      width: MediaQuery.of(context).size.width,

                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black38,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(MdiIcons.bell),
                            hintText: "Araba, telefon, bisiklet ve daha fazlası...",
                              contentPadding: EdgeInsets.only(bottom: 0),

                        ),

                    ),

              ),
                  ),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: <Widget>[

                      // Max Siz
                      Padding(padding:EdgeInsets.all(10),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset("resimler/otoplus2.png",
                            ),
                          ),
                      ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 130),
                        child: Container(
                          //color: Colors.blue,
                          width: 160,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Araba al"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 215,top: 130),
                        child: Container(
                          width: 160,
                          height: 40,

                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Araba sat"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("  Kategorilere Göz At",style: TextStyle(fontSize: 16),),
                        Text("Tümünü gör  ",style: TextStyle(color: Colors.redAccent,
                          decoration: TextDecoration.underline,
                          fontSize: 16
                        ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 25,),
                        Container(
                          width: 80,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                child: ClipOval(
                                  child:Image.asset("resimler/otoplus.jpg",
                                )
                                ),
                              ),
                              Spacer(),

                              Text("OTOPLUS",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          width: 80,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),

                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                child: ClipOval(
                                    child: Icon(MdiIcons.car,color: Colors.white,size: 40,),

                                ),
                                backgroundColor: Colors.indigo,
                              ),
                              Spacer(),

                              Text("ARABA",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          width: 80,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                child: ClipOval(
                                    child:Icon(Icons.phone_android,color: Colors.white,
                                        size: 40,)
                                ),
                                backgroundColor: Colors.purple,
                              ),
                              Spacer(),
                              Text("TELEFON",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          width: 80,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                child: ClipOval(
                                    child:Icon(MdiIcons.seat,color: Colors.white,
                                      size: 40,)
                                ),
                                backgroundColor: Colors.yellow,
                              ),
                              Spacer(),

                              Text("EV EŞYALARI",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          width: 80,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                child: ClipOval(
                                    child:Image.asset("resimler/otoplus.jpg",
                                    )
                                ),
                              ),
                              Spacer(),

                              Text("ELEKTRONİK",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10,top: 30,bottom: 10),
                    child: Text("   Güncel ilanlar",style: TextStyle(fontSize: 16),),
                  ),
                  // Güncel ilanlar
                  Padding(
                      padding: EdgeInsets.only(right: 0,left: 20),
                    child: Row(
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 200,

                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),

                            ),
                            Padding(padding:EdgeInsets.all(0),
                              child: Container(
                                width: 180,
                                height: 100,
                                child: ClipRRect(

                                  child: Image.asset("resimler/araba1.jpeg",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                top: 110
                              ),
                              child: Container(
                                child: Text("900.000 TL"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 130
                              ),
                              child: Container(
                                child: Text("Opel Corsa"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 140.0,
                                  top: 10
                              ),
                              child: Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(MdiIcons.heartOutline, color: Colors.grey,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0,
                                  top: 15
                              ),
                              child: Container(
                                width: 70,
                                height: 20,
                                child: Text(" öne çıkan"),
                                decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 15,),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 200,

                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),

                            ),
                            Padding(padding:EdgeInsets.all(0),
                              child: Container(
                                width: 180,
                                height: 100,
                                child: ClipRRect(

                                  child: Image.asset("resimler/araba2.jpeg",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 110
                              ),
                              child: Container(
                                child: Text("1900.000 TL"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 130
                              ),
                              child: Container(
                                child: Text("Audi A4"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 140.0,
                                  top: 10
                              ),
                              child: Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(MdiIcons.heartOutline, color: Colors.grey,),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(right: 0,left: 20),
                    child: Row(
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 200,

                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),

                            ),
                            Padding(padding:EdgeInsets.all(0),
                              child: Container(
                                width: 180,
                                height: 100,
                                child: ClipRRect(

                                  child: Image.asset("resimler/araba1.jpeg",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 110
                              ),
                              child: Container(
                                child: Text("900.000 TL"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 130
                              ),
                              child: Container(
                                child: Text("Opel Corsa"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 140.0,
                                  top: 10
                              ),
                              child: Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(MdiIcons.heartOutline, color: Colors.grey,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0,
                                  top: 15
                              ),
                              child: Container(
                                width: 70,
                                height: 20,
                                child: Text(" öne çıkan"),
                                decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 15,),
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 200,

                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),

                            ),
                            Padding(padding:EdgeInsets.all(0),
                              child: Container(
                                width: 180,
                                height: 100,
                                child: ClipRRect(

                                  child: Image.asset("resimler/araba2.jpeg",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 110
                              ),
                              child: Container(
                                child: Text("1900.000 TL"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 130
                              ),
                              child: Container(
                                child: Text("Audi A4"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 140.0,
                                  top: 10
                              ),
                              child: Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(MdiIcons.heartOutline, color: Colors.grey,),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),

                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
