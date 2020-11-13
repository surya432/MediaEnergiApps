import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/IndustriController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class IndustriScreen extends StatefulWidget {
  @override
  _IndustriScreenState createState() => _IndustriScreenState();
}

class _IndustriScreenState extends State<IndustriScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    precacheImage(
        new AssetImage("assets/Icon/menu-button-perikanan.png"), Get.context);
    precacheImage(new AssetImage("assets/bg_01.jpg"), Get.context);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(Get.find<IndustriController>()
        .menuList[Get.find<IndustriController>().pageIndex.value]['images']
        .toString());
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: GetX<IndustriController>(builder: (controller) {
          return BoardTitleWidget(
            widgetTitle: Get.find<IndustriController>()
                .menuList[Get.find<IndustriController>().pageIndex.value]
            ['images']
                .toString(),
            widgetContent: Center(
              child: GetX<IndustriController>(
                initState: (state) =>
                    Get.find<IndustriController>().initparameter(),
                builder: (controller) {
                  print(
                      Get.find<IndustriController>().pageIndex.value.toString());
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
                            child: Get.find<IndustriController>().menuList[
                            Get.find<IndustriController>()
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
                            Obx(() =>
                            Get.find<IndustriController>().pageIndex.value > 0
                                ? GestureDetector(
                              onTap: () =>
                                  Get.find<IndustriController>()
                                      .decrement(),
                              child: Image.asset("assets/Icon/prev.png",
                                  height: 40, width: 40),
                            )
                                : Container(height: 40, width: 40)),
                            Obx(() => Get.find<IndustriController>()
                                .pageIndex
                                .value <
                                Get.find<IndustriController>()
                                    .menuList
                                    .length -
                                    1
                                ? GestureDetector(
                              onTap: () => Get.find<IndustriController>()
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
          );
        },),
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

class WidgetIndustri1 extends StatelessWidget {
  const WidgetIndustri1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Potensi dan Persebaran Sumber Daya Untuk Penyedia Bahan Industri\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "Menurut UU RI Nomor 3 Tahun 2014, Industri adalah seluruh bentuk kegiatan ekonomi yang mengolah bahan baku dan/ atau memanfaatkan sumber daya industri sehingga menghasilkan barang yang mempunyai nilai tambah atau manfaat lebih tinggi, termasuk jasa industri. Bahan baku adalah bahan mentah, barang setengah jadi, atau barang jadi yang dapat diolah menjadi barang setengah jadi atau barang jadi yang mempunyai nilai ekonomi lebih tinggi. Bahan mentah adalah bahan yang diambil langsung dari alam atau yang diperoleh dari usaha manusia untuk memenuhi kebutuhan industri. ",
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

class WidgetIndustri2 extends StatelessWidget {
  const WidgetIndustri2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Jenis-jenis industri menurut bahan bakunya :\n",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "1. Industri Ekstraktif\n" +
                "Bahan bakunya diperoleh langsung dari alam. Seluruh industri yang bergerak pada bidang dengan bahan baku utama dari hasil-hasil alam\n" +
                "2. Industri Non-Ekstraktif\n" +
                "Industri yang mengolah lebih lanjut hasil-hasil industri lain. memfasilitasi untuk memenuhi kebutuhan sehari-hari sepertikebutuhan furniture kebutuhanuhan pakaian sampai kendaraan.\n" +
                "3. Industri Fasilitatif\n" +
                "Kegiatan industri yang menjual jasa layanan untuk keperluan orang lain.",
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

class WidgetIndustri3 extends StatelessWidget {
  const WidgetIndustri3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Dalam wilayah pengembangan industri, Wilayah Pusat Perindustrian Indonesia (WPPI) berperan sebagai penggerak utama ekonomi. WPPI disusun atas dasar kriteria berikut :\n",
            style: TextStyle(
              // fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "1. Potensi sumber daya alam (agro atau migas)\n" +
                "2. Ketersediaan infrastruktur transportasi\n" +
                "3. Kebijakan affirmatif untuk pengembangan industri ke luar pulau Jawa\n" +
                "4. Kualitas dan kuantitas sumber daya manusia\n" +
                "5. Penguatan dan pendalaman rantai nilai\n" +
                "6. Memiliki potensi energi yang berasal dari sumber daya alam (batu bara, panas bumi atau air)\n" +
                "7. Memiliki potensi sumber daya air untuk aktivitas industri\n" +
                "8. Memiliki potensi dalam perwujudan revolusi hijau\n" +
                "9. Memiliki kesiapan dalam pemanfaatan jaringan inovasi dan teknologi.",
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
