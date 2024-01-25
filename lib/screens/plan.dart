import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/models/ads_test/banner_ad_model.dart';

import 'package:instagram_app/shared/colors.dart';

import 'package:instagram_app/shared/snackbar.dart';

class Myplan extends StatefulWidget {
  const Myplan({Key? key}) : super(key: key);

  @override
  State<Myplan> createState() => _MyplanState();
}

class _MyplanState extends State<Myplan> {
  TextEditingController controller1 = TextEditingController();
  // TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  int? num1, num3, num4, num5, num6, num7, resulttt;
  dynamic num2, result, progress, nsba, resulto;

  mahfaza() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num4 = int.parse(controller4.text);

        resulttt = (((9000000 - num1!) / num4!) + num1!).ceil();

        if (resulttt! <= num1!) {
          result = (num1! + 200000);
        } else {
          result = resulttt;
        }
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  entagya() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num4 = int.parse(controller4.text);
        num6 = int.parse(controller6.text);
        progress = ((8500000 - num1!) / num4!).ceil();
        if (progress <= 200000) {
          result = ((num6! * 100 / 124) + 200000).ceil();
        } else if (progress > 200000) {
          result = ((num6! * 100 / 123) + progress).ceil();
        }
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  employees() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num5 = int.parse(controller5.text);
        if (num5! >= 10) {
          result = (num5! + 1);
        } else if (num5! < 10) {
          result = (num5! + 2);
        }
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  elnsba() {
    try {
      setState(() {
        num6 = int.parse(controller6.text);
        num7 = int.parse(controller7.text);

        result = 100 - ((num7! / num6!) * 100);
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  @override
  void dispose() {
    controller1.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    controller7.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          widthScreen > 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    icon: const Icon(
                      Icons.logout,
                    )),
              ],
              backgroundColor: mobileBackgroundColor,
              title: const Text(
                "         خطة عمل وحدة",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                // color: primaryColor,
              ),
            ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
              color: mobileBackgroundColor,
              borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.symmetric(
              vertical: 11,
              horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  result == null ? 'الخطة المتوقعة هنا' : '$result',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 240, 220, 9)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller1,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText:
                          "ادخل المحفظة(أصل) عند الاغلاق (الشهر السابق) ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
   
                TextField(
                  controller: controller5,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "ادخل عددالمسئولين عندالاغلاق(الشهرالسابق)",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller6,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "ادخل متحصلات الشهر الحالى إجمالى",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller4,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "ادخل المدة المتبقية للخطة بالشهور",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller7,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText:
                          "(ابونجمة)ادخل قيمة متاخرات الشهرالسابق بدون متاخرات الشهرالاخير",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //العك هنا
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 149,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 102, 134, 14)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        onPressed: () {
                          elnsba();
                          // controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          "النسبة المطلوبة ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 149,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 102, 134, 14)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        onPressed: () {
                          mahfaza();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          "المحفظة المطلوبة",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 149,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 102, 134, 14)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        onPressed: () {
                          entagya();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          "الانتاجية المطلوبة",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 149,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 102, 134, 14)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        onPressed: () {
                          employees();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          "مسئولين مستهدف",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const AdBanner2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
