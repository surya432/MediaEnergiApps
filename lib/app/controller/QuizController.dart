import 'package:get/get.dart';
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
    initparameter();
    // interval(onclickj, (_) => checkanswer(),time: Duration(milliseconds: 2500));
    debounce(onclickj, (_) => checkanswer(), time: Duration(milliseconds: 2500));
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
    if (!onclickj.value) {
      print("klik lagi true");
      onclickj.value = true;
      klik.value = answer;
      jawabbenar.value = jwbbenar;
    } else {
      print("klik lagi false");
    }

   
  }

  void initparameter() async {
    numberQuiz.value = 0;
    data.value = [
      {
        "pertanyaan":
            "1. Ketahanan pangan adalah kondisi terpenuhinya pangan bagi negara sampai perseorangan, dengan tersedianya pangan yang cukup, baik jumlah maupun mutunya, aman, bergam, bergizi, merata dan terjangkau serta tidak bertentangan dengan SARA untuk dapat hidup sehat, aktif dan produktif. Pernyataan tersebut merupakan konsep ketahanan pangan menurut ?\n",
        "jawabanbenar":
            "a. Undang-Undang Republik Indonesia Nomor 18 Tahun 2012",
        "jawaban": [
          "a. Undang-Undang Republik Indonesia Nomor 18 Tahun 2012",
          "b. FAO",
          "c. Undang-Undang Republik Indonesia Nomor 3 Tahun 2014",
          "d. WHO",
          "e. UNICEF"
        ]
      },
      {
        "pertanyaan":
            "2. Ciri-ciri industri bahan baku langsung dari alam, terbagi menjadi dua jenis industri,disebut industri tersier,layanan di \t\tbidang jasa, dan menghasilkan produk baru. Ciri-ciri industri ekstraktif ditunjukan nomer ?\n",
        "jawabanbenar": "e. 1, 2 dan 5",
        "jawaban": [
          "a. 1, 2, dan 3",
          "b. 2, 3, dan 4",
          "c. 3, 4 dan 5",
          "d. 1, 2 dan 4",
          "e. 1, 2 dan 5"
        ]
      },
      {
        "pertanyaan":
            "3. Daerah penghasil bunga mawar terbesar di Indonesia adalah?\n",
        "jawabanbenar": "e. Jawa Timur",
        "jawaban": [
          "a. Jawa Barat",
          "b. Sulawesi Utara",
          "c. Jawa Tengah",
          "d. Bali",
          "e. Jawa Timur"
        ]
      },
      {
        "pertanyaan": "4.	Sumber energi :\n"
            "\t\t\t1)Biomassa,\n"
            "\t\t\t2)Minyak bumi,\n"
            "\t\t\t3)Matahari, \n"
            "\t\t\t4)Panas bumi, dan \n"
            "\t\t\t5)Gambut\n"
            "\t\t\tSumber energi terbarukan ditunjukan nomor?\n",
        "jawabanbenar": "b. 3, 4 dan 5",
        "jawaban": [
          "a. 1, 2 dan 3",
          "b. 3, 4 dan 5",
          "c. 1, 2 dan 4",
          "d. 1, 2 dan 5",
          "e. 2, 3 dan 4"
        ]
      },
      {
        "pertanyaan":
            "5. Salah satu penyebab pengembangan sumber energi terbarukan adalah?\n",
        "jawabanbenar": "c. Sumber energi fosil tidak terbarukan",
        "jawaban": [
          "a. Peningkatan permintaan energi terbarukan",
          "b. Sumber energi fosil melimpah ruah",
          "c. Sumber energi fosil tidak terbarukan",
          "d. Pengelolaan energi fosil yang lebih mudah dan murah",
          "e. Munculnya berbagai macam energi baru",
        ]
      },
      {
        "pertanyaan":
            "6.	Perkebunan rakyat dan perkebunan besar merupakan klasifikasi perkebunan berdasarkan?\n",
        "jawabanbenar": "a.	Pengelolaannya",
        "jawaban": [
          "a.	Pengelolaannya",
          "b.	Persebaran sumber daya ",
          "c.	Jenis tanaman",
          "d.	Lokasi perkebunan",
          "e.	Luas perkebunan ",
        ]
      },
      {
        "pertanyaan": "7.Wilayah perkebunan :\n"
            "\t\t\t1)	Jawa Barat, \n"
            "\t\t\t2)	Sumatera Selatan,\n"
            "\t\t\t3)	Lampung,\n"
            "\t\t\t4)	NTT, dan \n"
            "\t\t\t5)	Sulawesi Tenggara.\n"
            "\t\t\tWilayah perkebunan kopi ditunjukan nomor?\n",
        "jawabanbenar": "a.	Pengelolaannya",
        "jawaban": [
          "a.	Pengelolaannya",
          "b.	Persebaran sumber daya",
          "c.	Jenis tanaman",
          "d.	Lokasi perkebunan",
          "e.	Luas perkebunan ",
        ]
      },
      {
        "pertanyaan": "8.	Wilayah perkebunan :\n"
            "\t\t\t1)	Riau, \n"
            "\t\t\t2)	Sumatera Selatan,\n"
            "\t\t\t3)	Jawa Timur,\n"
            "\t\t\t4)	Kalimantan Tengah, dan \n"
            "\t\t\t5)	Sulawesi Tenggara.\n"
            "\t\t\tWilayah perkebunan kelapa sawit ditunjukan nomor?\n",
        "jawabanbenar": "e.	2), 3) dan 4)",
        "jawaban": [
          "a.	1), 2) dan 3)",
          "b.	3), 4) dan 5)",
          "c.	1), 2) dan 4)",
          "d.	1), 2) dan 5)",
          "e.	2), 3) dan 4)",
        ]
      },
      {
        "pertanyaan":
            "9.	Berikut ini yang bukan termasuk hewan ternak besar adalah?\n"
                "\t\t\t1)	Riau, \n"
                "\t\t\t2)	Sumatera Selatan,\n"
                "\t\t\t3)	Jawa Timur,\n"
                "\t\t\t4)	Kalimantan Tengah, dan \n"
                "\t\t\t5)	Sulawesi Tenggara.\n"
                "\t\t\tWilayah perkebunan kelapa sawit ditunjukan nomor?\n",
        "jawabanbenar": "c.	Domba",
        "jawaban": [
          "a.	Sapi potong ",
          "b.	Sapi perah",
          "c.	Domba",
          "d.	Kuda",
          "e.	Kerbau ",
        ]
      },
      {
        "pertanyaan":
            "10.Sumber daya energi adalah sumber daya alam yang dapat dimanfaatkan, baik sebagai sumber energi maupun sebagai energi.\t\tPernyataan tersebut tertuang dalam?\n",
        "jawabanbenar":
            "a.	Undang-Undang Republik Indonesia Nomor 30 Tahun 2007",
        "jawaban": [
          "a.	Undang-Undang Republik Indonesia Nomor 30 Tahun 2007",
          "b.	Undang-Undang Republik Indonesia Nomor 41 Tahun 2009",
          "c.	Undang-Undang Republik Indonesia Nomor 3 Tahun 2014",
          "d.	Peraturan Pemerintah Republik Indonesia Nomor 79 Tahun 2014",
          "e.	Peraturan Pemerintah Republik Indonesia Nomor 41 Tahun 2015",
        ]
      },
    ];
  }

  nextpertanyaan() {
    print(numberQuiz.value);
  }
}
