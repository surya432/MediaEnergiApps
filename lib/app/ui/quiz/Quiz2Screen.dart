import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/QuizController.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetAnswer.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class Quiz2Screen extends StatelessWidget {
  const Quiz2Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<QuizController>(
          init: QuizController(),
          initState: (state) => Get.find<QuizController>().initQuiz(),
          builder: (QuizController controller) {
            if (controller.numberQuiz.value >= controller.data.length) {
              // String total = _.getTotalBenar.toString();

              return BGContainerWidget(
                kPaddingTop: context.mediaQueryPadding.top,
                content: BoardTitleWidget(
                  widgetContent: Container(),
                  widgetTitle: controller.data[0]['images'],
                ),
                custombar: WidgetAppBarBackMusic(),
              );
            } else {
              return BGContainerWidget(
                kPaddingTop: context.mediaQueryPadding.top,
                content: BoardTitleWidget(
                  widgetContent: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Align(
                      child: controller.data[controller.numberQuiz.toInt()]
                          ['route'],
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  widgetTitle: controller.data[controller.numberQuiz.toInt()]
                      ['images'],
                ),
                custombar: WidgetAppBarBackMusic(),
              );
            }
          },
        ),
      ),
    );
  }
}

class WidgetQuiz1 extends StatelessWidget {
  const WidgetQuiz1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "d. Undang-Undang Republik Indonesia Nomor 18 Tahun 2012";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Ketahanan pangan adalah kondisi terpenuhinya pangan bagi negara sampai perseorangan, dengan tersedianya pangan yang cukup, baik jumlah maupun mutunya, aman, bergam, bergizi, merata dan terjangkau serta tidak bertentangan dengan SARA untuk dapat hidup sehat, aktif dan produktif. Pernyataan tersebut merupakan konsep ketahanan pangan menurut ?",
      "jawaban": [
        "a. WHO",
        "b. Undang-Undang Republik Indonesia Nomor 3 Tahun 2014",
        "c. FAO",
        "d. Undang-Undang Republik Indonesia Nomor 18 Tahun 2012",
        "e. UNICEF"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
              String jawabannya = jawabanBenar;
              var icon = jawabannya == answer
                  ? Image.asset(
                      "assets/Icon/btn-check-05.png",
                      height: 16,
                      width: 16,
                    )
                  : Image.asset(
                      "assets/Icon/btn-05.png",
                      height: 16,
                      width: 16,
                    );
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        answer,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GetX<QuizController>(
                        builder: (controller) {
                          if (controller.onclickj.value) {
                            return icon;
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz2 extends StatelessWidget {
  const WidgetQuiz2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. 1, 2 dan 5";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Ciri-ciri industri: \n1. Bahan baku langsung dari alam\n2. Terbagi menjadi dua jenis industri\n3. Disebut industri tersier\n4. Layanan di bidang jasa\n5. Menghasilkan produk baru\nCiri-ciri industri ekstraktif ditunjukan nomer ?",
      "jawabanbenar": "e. 1, 2 dan 5",
      "jawaban": [
        "a. 1, 2, dan 3",
        "b. 2, 3, dan 4",
        "c. 3, 4 dan 5",
        "d. 1, 2 dan 4",
        "e. 1, 2 dan 5"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz3 extends StatelessWidget {
  const WidgetQuiz3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e. Jawa Timur";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Daerah penghasil bunga mawar terbesar di Indonesia adalah?",
      "jawabanbenar": "e. Jawa Timur",
      "jawaban": [
        "a. Jawa Barat",
        "b. Sulawesi Utara",
        "c. Jawa Tengah",
        "d. Bali",
        "e. Jawa Timur"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
              String jawabannya = jawabanBenar;
              var icon = jawabannya == answer
                  ? Image.asset(
                      "assets/Icon/btn-check-05.png",
                      height: 16,
                      width: 16,
                    )
                  : Image.asset(
                      "assets/Icon/btn-05.png",
                      height: 16,
                      width: 16,
                    );
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        answer,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GetX<QuizController>(
                        builder: (controller) {
                          if (controller.onclickj.value) {
                            return icon;
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz4 extends StatelessWidget {
  const WidgetQuiz4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "b. 3, 4 dan 5";
    Map<String, dynamic> quiz = {
      "pertanyaan": "Sumber energi :\n"
          "1)Biomassa,\n"
          "2)Minyak bumi,\n"
          "3)Matahari, \n"
          "4)Panas bumi, dan \n"
          "5)Gambut\n"
          "Sumber energi terbarukan ditunjukan nomor?",
      "jawabanbenar": "b. 3, 4 dan 5",
      "jawaban": [
        "a. 1, 2 dan 3",
        "b. 3, 4 dan 5",
        "c. 1, 2 dan 4",
        "d. 1, 2 dan 5",
        "e. 2, 3 dan 4"
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz5 extends StatelessWidget {
  const WidgetQuiz5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c. Sumber energi fosil tidak terbarukan";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Salah satu penyebab pengembangan sumber energi terbarukan adalah?",
      "jawabanbenar": "c. Sumber energi fosil tidak terbarukan",
      "jawaban": [
        "a. Peningkatan permintaan energi terbarukan",
        "b. Sumber energi fosil melimpah ruah",
        "c. Sumber energi fosil tidak terbarukan",
        "d. Pengelolaan energi fosil yang lebih mudah dan murah",
        "e. Munculnya berbagai macam energi baru",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$numberQuiz.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 16),
                    child: Text(
                      quiz['pertanyaan'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 8),
              itemCount: quiz['jawaban'].length,
              itemBuilder: (context, index) {
                String answer = quiz['jawaban'][index];
                String jawabannya = jawabanBenar;
                var icon = jawabannya == answer
                    ? Image.asset(
                        "assets/Icon/btn-check-05.png",
                        height: 16,
                        width: 16,
                      )
                    : Image.asset(
                        "assets/Icon/btn-05.png",
                        height: 16,
                        width: 16,
                      );
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () => controller.klikjawab(answer, jawabanBenar),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          answer,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GetX<QuizController>(
                          builder: (controller) {
                            if (controller.onclickj.value) {
                              return icon;
                            } else {
                              return Container();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetQuiz6 extends StatelessWidget {
  const WidgetQuiz6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "a.	Pengelolaannya";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Perkebunan rakyat dan perkebunan besar merupakan klasifikasi perkebunan berdasarkan?",
      "jawabanbenar": "a.	Pengelolaannya",
      "jawaban": [
        "a.	Pengelolaannya",
        "b.	Persebaran sumber daya ",
        "c.	Jenis tanaman",
        "d.	Lokasi perkebunan",
        "e.	Luas perkebunan ",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
              String jawabannya = jawabanBenar;
              var icon = jawabannya == answer
                  ? Image.asset(
                      "assets/Icon/btn-check-05.png",
                      height: 16,
                      width: 16,
                    )
                  : Image.asset(
                      "assets/Icon/btn-05.png",
                      height: 16,
                      width: 16,
                    );
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        answer,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GetX<QuizController>(
                        builder: (controller) {
                          if (controller.onclickj.value) {
                            return icon;
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz7 extends StatelessWidget {
  const WidgetQuiz7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "e.	2), 3) dan 4)";
    Map<String, dynamic> quiz = {
      "pertanyaan": "Wilayah perkebunan :\n"
          "1)	Jawa Barat, \n"
          "2)	Sumatera Selatan,\n"
          "3)	Lampung,\n"
          "4)	NTT, dan \n"
          "5)	Sulawesi Tenggara.\n"
          "Wilayah perkebunan kopi ditunjukan nomor?",
      "jawabanbenar": "e.	2), 3) dan 4)",
      "jawaban": [
        "a.	1), 2) dan 3)",
        "b.	3), 4) dan 5)",
        "c.	1), 2) dan 4)",
        "d.	1), 2) dan 5)",
        "e.	2), 3) dan 4)",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz8 extends StatelessWidget {
  const WidgetQuiz8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c.	1), 2) dan 4)";
    Map<String, dynamic> quiz = {
      "pertanyaan": "Wilayah perkebunan :\n"
          "1)	Riau, \n"
          "2)	Sumatera Selatan,\n"
          "3)	Jawa Timur,\n"
          "4)	Kalimantan Tengah, dan \n"
          "5)	Sulawesi Tenggara.\n"
          "Wilayah perkebunan kelapa sawit ditunjukan nomor?",
      "jawabanbenar": "c.	1), 2) dan 4)",
      "jawaban": [
        "a.	1), 2) dan 3)",
        "b.	3), 4) dan 5)",
        "c.	1), 2) dan 4)",
        "d.	1), 2) dan 5)",
        "e.	2), 3) dan 4)",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][0],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][1],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][2],
                    ),
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][3],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    WidgetAnswer(
                      quiz: quiz,
                      jawabanBenar: jawabanBenar,
                      answer: quiz['jawaban'][4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz9 extends StatelessWidget {
  const WidgetQuiz9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar = "c.	Domba";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Berikut ini yang bukan termasuk hewan ternak besar adalah?",
      "jawabanbenar": "c.	Domba",
      "jawaban": [
        "a.	Sapi potong ",
        "b.	Sapi perah",
        "c.	Domba",
        "d.	Kuda",
        "e.	Kerbau ",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
              String jawabannya = jawabanBenar;
              var icon = jawabannya == answer
                  ? Image.asset(
                      "assets/Icon/btn-check-05.png",
                      height: 16,
                      width: 16,
                    )
                  : Image.asset(
                      "assets/Icon/btn-05.png",
                      height: 16,
                      width: 16,
                    );
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        answer,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GetX<QuizController>(
                        builder: (controller) {
                          if (controller.onclickj.value) {
                            return icon;
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class WidgetQuiz10 extends StatelessWidget {
  const WidgetQuiz10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.find();
    String jawabanBenar =
        "a.	Undang-Undang Republik Indonesia Nomor 30 Tahun 2007";
    Map<String, dynamic> quiz = {
      "pertanyaan":
          "Sumber daya energi adalah sumber daya alam yang dapat dimanfaatkan, baik sebagai sumber energi maupun sebagai energi.\t\tPernyataan tersebut tertuang dalam?",
      "jawabanbenar": "a.	Undang-Undang Republik Indonesia Nomor 30 Tahun 2007",
      "jawaban": [
        "a.	Undang-Undang Republik Indonesia Nomor 30 Tahun 2007",
        "b.	Undang-Undang Republik Indonesia Nomor 41 Tahun 2009",
        "c.	Undang-Undang Republik Indonesia Nomor 3 Tahun 2014",
        "d.	Peraturan Pemerintah Republik Indonesia Nomor 79 Tahun 2014",
        "e.	Peraturan Pemerintah Republik Indonesia Nomor 41 Tahun 2015",
      ]
    };
    String numberQuiz = (controller.numberQuiz.toInt() + 1).toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$numberQuiz.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 16),
                  child: Text(
                    quiz['pertanyaan'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemCount: quiz['jawaban'].length,
            itemBuilder: (context, index) {
              String answer = quiz['jawaban'][index];
              String jawabannya = jawabanBenar;
              var icon = jawabannya == answer
                  ? Image.asset(
                      "assets/Icon/btn-check-05.png",
                      height: 16,
                      width: 16,
                    )
                  : Image.asset(
                      "assets/Icon/btn-05.png",
                      height: 16,
                      width: 16,
                    );
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () => controller.klikjawab(answer, jawabanBenar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        answer,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GetX<QuizController>(
                        builder: (controller) {
                          if (controller.onclickj.value) {
                            return icon;
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
