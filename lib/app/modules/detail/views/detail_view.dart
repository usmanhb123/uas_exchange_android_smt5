import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isi Berita'),
        backgroundColor: Color.fromARGB(255, 245, 49, 49),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://cdn0-production-images-kly.akamaized.net/OUEK-EV3u1-cjqYwsvIQIEtgZSU=/640x358/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2995637/original/004642800_1576229234-20191213-Wapres-Ma_ruf-Amin-Buka-Musyawarah-Bersama-Ormas-Ormas-Islam-4.jpg",
                ),
                SizedBox(
                  height: 5,
                ),
               
                Text(
                    "Sistem Pemilu Proporsional Terbuka, Ma'ruf Amin: Pemerintah Mendukung",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.justify),
                SizedBox(
                  height: 5,
                ),
                Text("25 Feb 2023, 07:47 WIB"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "    Wakil Presiden Ma'ruf Amin mengatakan, pemerintah mendukung penerapan sistem pemilu proporsional terbuka, sebagaimana tertuang dalam Undang-Undang Nomor 7 Tahun 2017 tentang Pemilu Pemerintah juga mendukung pemilu terbuka, partai-partai delapan partai mendukung terbuka. Banyak opini masyarakat juga seperti itu (memilih pemilu terbuka),` kata dia di Mamuju, Sulawesi Barat, Jumat (24/2/2023).",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "    Ma’ruf menyatakan, pemerintah telah siap menyelenggarakan Pemilu 2024 dengan sistem terbuka. Meski begitu, dia tetap menghormati proses hukum yang tengah berjalan di Mahkamah Konstitusi (MK).",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "    Diketahui, UU Nomor 7 Tahun 2017 terkait sistem pemilu proporsional terbuka dilakukan uji materi. Adapun, sejumlah pihak mengingingkan Pemilu 2024 diterapkan dengan sistem proporsional tertutup.",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "    ''Kita tunggu MK ini mempertimbangkan seperti apa, atau punya alasan seperti apa,'' jelas Ma'ruf.",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "   Lebih lanjut, Ma’ruf juga menyatakan siap menaati hasil dari keputusan MK, termasuk apabila Pemilu 2024 digelar dengan sistem propsional tertutup.",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "   ''Tapi andai kata MK memutuskan lain kan keputusan MK harus tunduk, final dan binding,'' Ma’ruf menandaskan.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 10,
                        height: 80,
                        color: Color.fromARGB(255, 175, 13, 13),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: Get.width * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  Baca Juga"),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                    "Zainudin Amali Temui Wapres Ma’ruf Amin, Pamit Undur Diri Sebagai Menpora")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Sikap PDIP yang Mendukung Proporsional Tertutup",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.justify),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "   Sekretaris Jenderal DPP PDI Perjuangan (PDIP) Hasto Kristiyanto mengatakan, pihaknya tidak memiliki motif elektoral terkait sidang di Mahkamah Konstitusi (MK) mengenai sistem pemilu proporsional terbuka atau pemilu proporsional tertutup. Sistem apa pun yang diputuskan oleh MK, PDIP siap menghadapinya.",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "   Hasto berharap semua pihak, termasuk partai-partai politik, mengedepankan sikap kenegarawanan dan menghormati apa pun keputusan MK.",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "   ''Jadi lebih baik kita serahkan pada keputusan Mahkamah Konstitusi. Dengan sikap kenegarawanannya untuk kepentingan bangsa dan negara. Kita tunggu keputusan dari MK tersebut. Dan PDI Perjuangan siap menerima apa pun keputusan dari Mahkamah Konstitusi,'' kata Hasto di Sekolah Partai PDIP, Kamis (23/2/2023).",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "   Lebih lanjut, Hasto menilai bahwa sistem proporsional tertutup akan membawa kemanfaatannya dan mudah merekrut dan mencari calon-calon yang terbaik.",
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "   ''Kita mencari calon presiden yang terbaik, maka proporsional tertutup jauh lebih memungkinkan bagi partai untuk merekrut tokoh-tokoh akademisi, tokoh-tokoh yang memiliki kepakaran sesuai pembagian setiap komisi, tokoh-tokoh yang memahami aspek politik, pertanian untuk Indonesia yang berdaulat,'' terang Hasto.",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
