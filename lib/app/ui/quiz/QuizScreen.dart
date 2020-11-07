import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/QuizController.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardDecorationWidget.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
                height: Get.height * 0.7,
                child: BoardBackground(
                  dataContent: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        GetX<QuizController>(
                          builder: (_) {
                            if (_.numberQuiz.value >= _.data.length) {
                              String total = _.getTotalBenar.toString();
                              return Text(
                                  "Jawaban Yang Benar $total Soal dari 10 Soal");
                            } else {
                              int quizindex = _.numberQuiz.value;
                              String question = _.data[quizindex]["pertanyaan"];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '$question',
                                    style: TextStyle(
                                      // fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: "Gothic",
                                    ),
                                  ),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    padding: EdgeInsets.only(top: 0),
                                    itemBuilder: (context, index) {
                                      String answer =
                                          _.data[quizindex]["jawaban"][index];
                                      String jawabannya =
                                          _.data[quizindex]["jawabanbenar"];
                                      var icon = jawabannya == answer
                                          ? Icon(
                                              Icons.print,
                                              size: 16,
                                            )
                                          : Icon(
                                              Icons.close,
                                              size: 16,
                                            );
                                      return Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: GestureDetector(
                                          onTap: () =>
                                              _.klikjawab(answer, jawabannya),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                answer,
                                                style: TextStyle(
                                                  // fontSize: 13,
                                                  wordSpacing: 4,
                                                  color: Colors.white,
                                                  fontFamily: "Gothic",
                                                ),
                                              ),
                                              if (_.onclickj.value) icon,
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Icon/button-soal-01.png",
                  height: Get.height * 0.2, width: Get.width * 0.3),
            )
          ],
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
