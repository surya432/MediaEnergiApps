import 'package:flutter/material.dart';
import 'package:mediainteaktifpangan/app/controller/QuizController.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BGdecorationWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/BoardTitleWidget.dart';
import 'package:mediainteaktifpangan/app/ui/widgets/WidgetBackMusic.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGContainerWidget(
        kPaddingTop: context.mediaQueryPadding.top,
        content: BoardTitleWidget(
          widgetTitle: "assets/Icon/button-kuis-01.png",
          widgetContent: Container(
            child: Column(
              children: [
                SizedBox(height: 15),
                GetX<QuizController>(
                  initState: (state) =>
                      Get.find<QuizController>().initparameter(),
                  builder: (_) {
                    if (_.numberQuiz.value >= _.data.length) {
                      // String total = _.getTotalBenar.toString();

                      return Container();
                    } else {
                      int quizindex = _.numberQuiz.value;
                      String question = _.data[quizindex]["pertanyaan"];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$question',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
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
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        GetX<QuizController>(
                                          builder: (controller) {
                                            if (_.onclickj.value) {
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
                  },
                ),
              ],
            ),
          ),
        ),
        custombar: WidgetAppBarBackMusic(),
      ),
    );
  }
}
