import 'package:block_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Anasayfa extends StatelessWidget {


  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Block Kullanimi"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder <AnasayfaCubit,int>( // AnasayfaCubit ten int veri gelecek onu dinleyeceğiz
                  builder: (context, s){
                    return Text(s.toString()
                      ,style:const TextStyle(fontSize: 50),
                    );
                  },
              ),

              TextField(
                controller: tfSayi1,
                decoration: InputDecoration(
                  hintText: "Sayi 1"
                ),
              ),
              TextField(
                controller: tfSayi2,
                decoration: InputDecoration(
                    hintText: "Sayi 2"
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    String alinanSayi1 = tfSayi1.text;
                    String alinanSayi2 = tfSayi2.text;
                    context.read<AnasayfaCubit>().toplamaYap(alinanSayi1, alinanSayi2); //AnasayfaCubit e değerleri gönderdik.
                  },
                      child: const Text("Toplama"),
                  ),
                  ElevatedButton(onPressed: (){
                    String alinanSayi1 = tfSayi1.text;
                    String alinanSayi2 = tfSayi2.text;
                    context.read<AnasayfaCubit>().carpmaYap(alinanSayi1, alinanSayi2);//AnasayfaCubit e değerleri gönderdik.
                  },
                    child: const Text("Çarpma"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
