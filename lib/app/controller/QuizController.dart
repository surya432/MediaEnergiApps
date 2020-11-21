import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/ui/quiz/Quiz2Screen.dart';
import 'package:mediainteaktifpangan/app/ui/quiz/QuizDoneScreen.dart';

class QuizController extends GetxController {
  var data = List<Map<dynamic, dynamic>>().obs;
  var numberQuiz = 0.obs;
  var onclickj = false.obs;
  var klik = "".obs;
  int javabne = 0;
  var jawabbenar = "".obs;
  get getTotalBenar => javabne;

  @override
  void onInit() {
    // initparameter();
    // interval(onclickj, (_) => checkanswer(),
    //     time: Duration(milliseconds: 2500));
    // debounce(onclickj, (_) => checkanswer(),
    // time: Duration(milliseconds: 2500));
    // debounce(numberQuiz, (_) => nextpertanyaan(),
    //     time: Duration(milliseconds: 250));
    super.onInit();
  }

  checkanswer() {
    if (klik.value == jawabbenar.value) {
      javabne++;
      print("Jawaban Benar");
    } else {
      print("Jawaban salah");
    }
    onclickj.value = false;

    numberQuiz.value = numberQuiz.value + 1;
    // update();
    if (numberQuiz >= data.length) {
      Get.off(QuizDoneScreen(), arguments: javabne);
    }
  }

  klikjawab(String answer, String jwbbenar) {
    if (onclickj.value == false) {
      print("klik lagi true");
      onclickj.value = true;
      klik.value = answer;
      jawabbenar.value = jwbbenar;
      new Future.delayed(const Duration(seconds: 2), () => checkanswer());
    } else {
      print("klik lagi false");
    }
  }

  void initparameter() async {
    numberQuiz.value = 0;
    data.value = [];
  }

  nextpertanyaan() {
    print(numberQuiz.value);
  }

  initQuiz() {
    numberQuiz.value = 0;
    data.clear();
    data.assignAll([
      {"route": WidgetQuiz1(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz2(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz3(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz4(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz5(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz6(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz7(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz8(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz9(), "images": "assets/Icon/button-kuis-01.png"},
      {"route": WidgetQuiz10(), "images": "assets/Icon/button-kuis-01.png"},
    ]);
  }
}
