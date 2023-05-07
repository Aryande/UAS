import 'package:flutter/material.dart';
import 'package:project_uts/List%20Wisata/wisata.dart';
import 'package:project_uts/ListWisata/detail_ListWisata.dart';

class HomeListWisata extends StatelessWidget {
  const HomeListWisata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata'),// memberi nama pada aplikasi dengan nama wisata
      ),
      body: ListView.builder(
          itemCount: dataWisata.length,// intemCount diguanakn untuk menentukan berapa jumlah list yang kita gunakan
          itemBuilder: (context, index) {
            return GestureDetector( //untuk menampilkan text yang akan di panggil
              onTap: () { // untuk membuka text yang akan di panggil nantinya
                Navigator.push(context, // Navigator diguanakn untuk pindah kehalaman berikutnya yang menunjukan detai dari wisata yang di list
                    MaterialPageRoute(builder: (context) => DetailListWisata(wisata: dataWisata[index],))); // disini kita memanggil class wisata
              },
              child: Card(
                child: Row( // row digunakan untuk membuat posisi garis dari list beberapat tempat wisata
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                          height: 160,
                          child: Image.asset(dataWisata[index].image)),
                      // height disini di guanakan untuk membuat ukuran dari gambar yang kita gunakan
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // digunakan untuk memposisikan text di tengah
                      children: [
                        Text(dataWisata[index].name),
                        Text('HTM : ${dataWisata[index].htm}')
                      ],
                      // menambahakan kolom dan membuat kolam untuk text data wisata dan HTM nya
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}