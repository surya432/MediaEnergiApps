import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/PertanianController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class MateriPertanian extends StatefulWidget {
  MateriPertanian({Key key}) : super(key: key);

  @override
  _MateriPertanianState createState() => _MateriPertanianState();
}

class _MateriPertanianState extends State<MateriPertanian> {
  @override
  void initState() {
    precacheImage(
        new AssetImage("assets/Icon/menu-button-pertanian.png"), Get.context);
    precacheImage(new AssetImage("assets/bg_01.jpg"), Get.context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/Icon/btn_pangan-01.png",
          widgetContent: Center(
            child: GetX<PertanianController>(
              initState: (state) =>
                  Get.find<PertanianController>().initparameter(),
              builder: (controller) {
                print(
                    Get.find<PertanianController>().pageIndex.value.toString());
                return Stack(
                  children: [
                    // Expanded(
                    //   flex:1,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //         left: 16, right: 16, top: 16, bottom: 8),
                    //     child: Align(
                    //       alignment: Alignment.topLeft,
                    //       child:
                    //           Get.find<PertanianController>().menuList[
                    //               Get.find<PertanianController>()
                    //                   .pageIndex
                    //                   .value]['route'],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 40),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Get.find<PertanianController>().menuList[
                              Get.find<PertanianController>()
                                  .pageIndex
                                  .value]['route'],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Get.find<PertanianController>()
                                      .pageIndex
                                      .value >
                                  0
                              ? GestureDetector(
                                  onTap: () => Get.find<PertanianController>()
                                      .decrement(),
                                  child: Image.asset("assets/Icon/prev.png",
                                      height: 40, width: 40),
                                )
                              : Container(height: 40, width: 40)),
                          Obx(() => Get.find<PertanianController>()
                                      .pageIndex
                                      .value <
                                  Get.find<PertanianController>()
                                          .menuList
                                          .length -
                                      1
                              ? GestureDetector(
                                  onTap: () => Get.find<PertanianController>()
                                      .increment(),
                                  child: Image.asset("assets/Icon/next.png",
                                      height: context.isTablet ? 60 : 40,
                                      width: context.isTablet ? 60 : 40),
                                )
                              : Container(
                                  height: context.isTablet ? 60 : 40,
                                  width: context.isTablet ? 60 : 40)),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        custombar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset("assets/Icon/button-10.png",
                  height: 60, width: 60),
            ),
            GestureDetector(
              onTap: () => {},
              child: Image.asset("assets/Icon/button-music.png",
                  height: 60, width: 60),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetPangan1 extends StatelessWidget {
  const WidgetPangan1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "A.\tPotensi dan Persebaran Ketahanan Pangan\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "Menurut UU RI Nomor 18 Tahun 2012, Ketahanan pangan adalah kondisi terpenuhinya pangan bagi negara sampai perseorangan, dengan" +
                "tersedianya pangan yang cukup, baik jumlah maupun mutunya, aman, beragam, bergizi, merata dan terjangkau serta tidak bertentangan" +
                "dengan SARA untuk dapat hidup sehat, aktif dan produktif.\n" +
                "Komponen yang harus dipenuhi untuk mencapai kondisi ketahanan pangan :\n\n" +
                "a.	Kecukupan ketersediaan pangan\n" +
                "b.	Stabilitas ketersediaan pangan \n" +
                "c.	Aksesibilitas/ keterjangkauan terhadap pangan\n" +
                "d.	Kualitas/ keamanan pangan",
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 13,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPangan2 extends StatelessWidget {
  const WidgetPangan2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String decs =
        "Pertanian merupakan sektor utama yang menjadi tumpuan ketahanan pangan.\n"+
        "Lahan pertanian berkelanjutan adalah bidang pertanian yang ditetapkan untuk dilindungi dan dikembangkan secara konsisten guna menghasilkan pangan pokok bagi ketahanan pangan nasional.\n"+
        "Sementara lahan cadangan pertanian pangan berkelanjutan adalah lahan potensial yang dilindungi pemanfaatannya agar kesesuaian dan ketersediaannya tetap terkendali untuk dimanfaatkan pada masa yang akan datang";
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "1.	Potensi dan Persebaran Sumber Daya Pertanian\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            decs,
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 13,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPangan3 extends StatelessWidget {
  const WidgetPangan3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String decs = "Adalah lahan pertanian yang berpetak-petak dan dibatasi oleh pematang, saluran untuk air, yang biasanya ditanami padi sawah tanpa memandang dimana diperoleh lahan tersebut.\n" +
        "Lahan sawah terdiri dari :\n" +
        "a.	Lahan sawah irigasi, yang keperluan airnya di suplai oleh irigasi\n" +
        "b.	Lahan sawah tadah hujan, yang bergantuk pada air hujan\n" +
        "c.	Lahan sawah pasang surut, pengairannya bergantung pada air sungai yang dipengaruhi pasang surutnya air laut\n" +
        "d.	Lahan sawah lebak, pengairannya dari reklamasi rawa lebak\n" +
        "e.	Polder dan sawah lainnya, lahan sawah yang terdapat di delta sungai yang pengairannya dipengaruhi oleh air sungai tersebut";
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Lahan Sawah\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            decs,
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 12,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPangan4 extends StatelessWidget {
  const WidgetPangan4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Lahan sawah terluas di Indonesia terletak pada Pulau Jawa dan Sumatera, sedangkan lahan sawah terkecil berada di Pulau Maluku dan Papua.\n",
            style: TextStyle(
              // fontSize: 16,
              // fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Center(child: Container(child: Image.asset('assets/pertanian_1.png')))
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPangan5 extends StatelessWidget {
  const WidgetPangan5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String decs = "Lahan pertanian bukan sawah terdiri dari : \n" +
        "1.	Tegal/kebun dengan luas 12,02 juta hektare yang sebagian besar berada di Pulau Jawa dan Maluku\n" +
        "2.	Ladang/huma dengan luas sebesar 5,03 juta hektare dengan ladang terluas di Papua Barat\n" +
        "3.	Lahan yang sementara tidah diusahakan dan di tanami tanaman semusim atau tahunan seluas 11,68 juta hektare sebagian di pulau Jawa. Terluas terdapat di Banten dengan 12,94 ribu hektare\n";
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Lahan Pertanian Bukan Sawah\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            decs,
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 12,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

class WidgetPangan6 extends StatelessWidget {
  const WidgetPangan6({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String decs = "1.	Tanaman Pangan (sumber karbohidrat dan protein), padi dengan produksi tertinggi di Jawa Timur, Jawa, Tengah, Jawa Barat. Lalu jagung, kedelai, kacang tanah, kacang hijau, ubi kayu, ubi jalar\n" +
        "2.	Tanaman hortikultura (buah, sayur, rempah) Buah-buahan : Pisang di Lampung, Jawa Timur, Jawa Barat. Mangga di Jawa Timur dan Jawa " +
        "Tengah. Nanas di Lampung. Jeruk di Jawa Timur dan +Aceh.\n"
            "Sayur-sayuran : Kubis di Jawa Timur, Jawa Tengah, Jawa Barat dan Sumatera Utara, kentang, bawang merah dan cabai.\n" +
        "3.	Florikultura (tanaman hias) yang utama adalah krisan di Jawa Tengah dan Jawa Barat. Mawar di Jawa Timur, sedap malam di Jawa Timur dan "
            "Jawa Tengah. Anggrek di Jawa Barat dan Banten. \n" +
        "4.	Rempah yang utama adalah Jahe di Jawa Timur. Kunyit di Jawa Timur dan Jawa Tengah. Lengukas di Jawa Tengah. Kencur di Jawa Tengah dan \n" +
        "Kalimantan Selatan. Temu Lawak di Jawa Timur dan Jawa Tengah";
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Lahan Pertanian menghasilkan beberapa kelompok tanam, yakni : \n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              wordSpacing: 4,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
          Text(
            decs,
            textAlign: TextAlign.justify,
            style: TextStyle(
              // fontSize: 12,
              wordSpacing: 2,
              color: Colors.white,
              fontFamily: "FredokaOne",
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
