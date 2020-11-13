import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/PengelolahanController.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';

class PengelolahanScreen extends StatefulWidget {
  @override
  _PengelolahanScreenState createState() => _PengelolahanScreenState();
}

class _PengelolahanScreenState extends State<PengelolahanScreen>
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
    print(Get.find<PengelolahanController>()
        .menuList[Get.find<PengelolahanController>().pageIndex.value]['images']
        .toString());
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: GetX<PengelolahanController>(
          builder: (controller) {
            return BoardTitleWidget(
              widgetTitle: Get.find<PengelolahanController>()
                  .menuList[Get.find<PengelolahanController>().pageIndex.value]
                      ['images']
                  .toString(),
              widgetContent: Center(
                child: GetX<PengelolahanController>(
                  initState: (state) =>
                      Get.find<PengelolahanController>().initparameter(),
                  builder: (controller) {
                    print(Get.find<PengelolahanController>()
                        .pageIndex
                        .value
                        .toString());
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
                              child:
                                  Get.find<PengelolahanController>().menuList[
                                      Get.find<PengelolahanController>()
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
                              Obx(() => Get.find<PengelolahanController>()
                                          .pageIndex
                                          .value >
                                      0
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<PengelolahanController>()
                                              .decrement(),
                                      child: Image.asset("assets/Icon/prev.png",
                                          height: 40, width: 40),
                                    )
                                  : Container(height: 40, width: 40)),
                              Obx(() => Get.find<PengelolahanController>()
                                          .pageIndex
                                          .value <
                                      Get.find<PengelolahanController>()
                                              .menuList
                                              .length -
                                          1
                                  ? GestureDetector(
                                      onTap: () =>
                                          Get.find<PengelolahanController>()
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
          },
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

class WidgetPengelolahan1 extends StatelessWidget {
  const WidgetPengelolahan1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pengelolaan Sumber Daya Penyediaan Bahan Pangan, Industri dan Energi Baru dam Terbarukan di Indonesia\n",
            style: TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: "FredokaOne",
              wordSpacing: 4,
              color: Colors.white,
            ),
          ),
          Text(
            "1. Pengelolaan Bahan Pangan\n" +
                "Pertanian merupakan komponen utama dalam penyediaan bahan pangan. Pelestarian pertanian adalah tindakan pengelolaan dan penggunaan lahan pertanian untuk usaha perbaikan dan pengingkatan mutunya serta pemeliharaan keseimbangan ekologis untuk memperoleh sistem produksi berkelanjutan.",
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

class WidgetPengelolahan2 extends StatelessWidget {
  const WidgetPengelolahan2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Tindakan pelestarian harus memperhatikan :\n" +
                "a. Pencegahan erosi permukaan tanah (kulturteknis, biologis, teknis mekanis)\n" +
                "b. Pencegahan teknik budi daya tanaman yang bersifat penambangan hara tanah secara esploitatif\n" +
                "c. Pergiliran varietas dan penanaman multivarietas pada satu hamparan\n" +
                "d. Pemeliharaan prasarana irigrasi, tata guna air, waduk, sumber air dan wilayah resapan air\n" +
                "e. Pendidikan, pelatihan dan penyadaran petani akan pentingnya pemeliharaan kelestarian lahan pertanian",
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

class WidgetPengelolahan3 extends StatelessWidget {
  const WidgetPengelolahan3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "2. Pengelolaan Bahan Industri\n" +
                "Salah satu tujuan perindustrian adalah mewujudkan industri yang mandiri, berdaya saing, maju serta industri hijau yang mana dalam proses produksinya mengutamakan upaya efisiensi dan efektivitas penggunaan sumber daya secara berkelanjutan sehingga mampu menyelaraskan pembangunan industri dengan kelestarian fungsi lingkungan hidup.",
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

class WidgetPengelolahan4 extends StatelessWidget {
  const WidgetPengelolahan4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pemanfaatan SDA secara efisien dilakukan melalui :\n" +
                "a. Penghematan\n" +
                "b. Penggunaan teknologi yang ramah lingkungan\n" +
                "c. Optimalisasi kinerja proses produksi\n" +
                "Pemanfaatan SDA ramah lingkungan dan berkelanjutan dilakukan melalui:\n" +
                "a. Pengurangan limbah\n" +
                "b. Penggunaan kembali\n" +
                "c. Pengolahan kembali\n" +
                "d. Pemulihan",
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

class WidgetPengelolahan5 extends StatelessWidget {
  const WidgetPengelolahan5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          Text("3. Pengelolaan Energi Baru dan Terbarukan\n"+
            "Pengembangan sumber energi yang terbarukan sebagai sumber energi alternatif harus dilakukan karena :\n" +
                "a. Permintaan energi meningkat dengan pesat karena industrialisasi dan pertumbuhan penduduk yang pesat\n" +
                "b. Sumber energi fosil tidak terbarukan\n" +
                "c. Sumber konvensional  (bahan bakar fosil) juga menyebabkan polusi",
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

class WidgetPengelolahan6 extends StatelessWidget {
  const WidgetPengelolahan6({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Pemanfaatan sumber energi terbarukan :\n" +
                "1. Jenis energi aliran dan air terjun, energi panas bumi, energi gerakan dan perbedaan suhu lapisan laut dan energi angin diarahkan untuk ketenagalistrikan\n" +
                "2. Pemanfaatan sumber energi terbarukan dari jenis energi sinar matahari diarahkan untuk ketenagalistrikan dan energi nonlistrik untuk industri, rumah tangga, dan transportasi",
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
