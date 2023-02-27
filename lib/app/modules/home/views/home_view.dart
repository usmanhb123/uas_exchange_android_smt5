import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeroWoro 76'),
        backgroundColor: Color.fromARGB(255, 245, 49, 49),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Highlight",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          BannerCarousel(
            banners: BannerImages.listBanners,
            customizedIndicators: const IndicatorModel.animation(
                width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
            height: Get.height * 0.25,
            activeColor: Colors.amberAccent,
            disableColor: Colors.white,
            animation: true,
            borderRadius: 10,
            onTap: (id) => Get.toNamed(Routes.DETAIL),
            width: Get.width * 1,
            indicatorBottom: false,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
            child: const Divider(
              color: Color.fromARGB(255, 146, 146, 146),
            ),
          ),
          Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular News",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.ALL_NEWS),
                      child: Text("Selengkapnya")),
                ],
              )),
          Container(
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Material(
              // borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              child: InkWell(
                onTap: () => Get.toNamed(Routes.DETAIL),
                // borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Image.network(
                          "https://cdn0-production-images-kly.akamaized.net/cERxnY1jeQRM-wAOn9w0FCIrHH8=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4063174/original/063223800_1656064426-mega_pdip.jpg",
                          height: 100),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "National",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 194, 177, 29)),
                          ),
                          Container(
                            width: Get.width * 0.4,
                            child: Text(
                              "Megawati Masih Sembunyikan Nama",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Text(
                            "New - 24 menit yang lalu",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 155, 150, 150)),
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ),
           Container(
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Material(
              // borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              child: InkWell(
                onTap: () => Get.toNamed(Routes.DETAIL),
                // borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Image.network(
                          "https://cdn0-production-images-kly.akamaized.net/Ox8GFxWue89yV3FigOijxCH1JjU=/640x358/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4338538/original/040155200_1677450186-000_33A48QN.jpg",
                          height: 100),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Inrternational",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 194, 177, 29)),
                          ),
                          Container(
                            width: Get.width * 0.4,
                            child: Text(
                              "AC Milan sukses menang meyakinkan ketika menjamu Atalanta di lanjutan Liga Italia Serie A.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Text(
                            "New - 24 jam yang lalu",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 155, 150, 150)),
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ),
          
          Container(
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Material(
              // borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              child: InkWell(
                onTap: () => Get.toNamed(Routes.DETAIL),
                // borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Image.network(
                          "https://cdn0-production-images-kly.akamaized.net/jhI7P1tbDEzHKtOev7-Zosp0_Us=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1086792/original/018004700_1450323230-Jack-Ma.jpg",
                          height: 100),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "International",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 194, 177, 29)),
                          ),
                          Container(
                            width: Get.width * 0.4,
                            child: Text(
                              "Miliarder Jack Ma Rugi Rp 51,8 Triliun, Ini Gara-garanya",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Text(
                            "26 Feb 2023, 21:00 WIB",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 155, 150, 150)),
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ),
        
          Container(
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Material(
              // borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              child: InkWell(
                onTap: () => Get.toNamed(Routes.DETAIL),
                // borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Image.network(
                          "https://cdn0-production-images-kly.akamaized.net/8jYAXeyJiQ8AnZrFzCLNzJj1bZU=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4333176/original/008295800_1677051522-IMG-20230222-WA0037.jpg",
                          height: 100),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "National",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 194, 177, 29)),
                          ),
                          Container(
                            width: Get.width * 0.4,
                            child: Text(
                              "Kronologi Mario Dandy Aniaya David: Disuruh Push Up, Sikap Tobat, Lalu Ditendang",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Text(
                            "25 Feb 2023, 07:47 WIB",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 155, 150, 150)),
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            ),
          ),
        
        ]),
      ),
      bottomNavigationBar: SweetNavBar(
        currentIndex: 0,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 251, 52, 2),
                const Color.fromARGB(255, 72, 3, 80)
              ]),
              sweetBackground: Color.fromARGB(255, 247, 247, 247)),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.newspaper),
              sweetLabel: 'News',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.history),
              sweetLabel: 'History',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.person),
              sweetLabel: 'Profile',
              iconColors: List<Color>.from([
                Color.fromARGB(255, 133, 130, 132),
                const Color.fromARGB(255, 72, 3, 80)
              ])),
        ],
        onTap: (index) {
          if (index == 0) {
            Get.offAllNamed(Routes.HOME);
          } else if (index == 1) {
            Get.offAllNamed(Routes.ALL_NEWS);
          } else if (index == 2) {
            Get.offAllNamed(Routes.HISTORY);
          } else if (index == 3) {
            Get.offAllNamed(Routes.PROFILE);
          }
        },
      ),
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://cdn0-production-images-kly.akamaized.net/Yq5aTTiiGJ0ZBPOuZXHxpMPVdOw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3989249/original/028192300_1649401686-liputan6_update_8_April_2022.jpeg";
  static const String banner2 =
      "https://cdn0-production-images-kly.akamaized.net/FgOKM86PQaIgbOzjLpW6Xno13mM=/500x0/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4333824/original/079077500_1677073249-1280x720_HEADLINE__4_.jpg";
  static const String banner3 =
      "https://cdn1-production-images-kly.akamaized.net/2PQaCcpPt6PK_B8rwdSnlUmV0Kg=/500x0/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4333073/original/084808100_1677047430-Bupati_Lebak_Sudah_Anggap_Anies_Baswedan_Jadi_Presiden.jpg";
  static const String banner4 =
      "https://cdn0-production-images-kly.akamaized.net/FgOKM86PQaIgbOzjLpW6Xno13mM=/500x0/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4333824/original/079077500_1677073249-1280x720_HEADLINE__4_.jpg";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
