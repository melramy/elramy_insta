import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/models/ads_test/banner_ad_model.dart';

import 'package:instagram_app/shared/colors.dart';

import 'package:instagram_app/shared/snackbar.dart';

class Mycalc extends StatefulWidget {
  const Mycalc({Key? key}) : super(key: key);

  @override
  State<Mycalc> createState() => _MycalcState();
}

class _MycalcState extends State<Mycalc> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result, num1, num2;

  add1() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num2 = int.parse(controller2.text);

        result = ((num1! * 0.30 * num2! / 12) / num2! + (num1! / num2!)).ceil();
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  add2() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num2 = int.parse(controller2.text);

        result = ((num1! * 0.31 * num2! / 12) / num2! + (num1! / num2!)).ceil();
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  add3() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num2 = int.parse(controller2.text);

        result =
            ((num1! * 0.315 * num2! / 12) / num2! + (num1! / num2!)).ceil();
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  add4() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num2 = int.parse(controller2.text);

        result = (num1! - (num1! * 3.75 / 100 * num2! / 12)).ceil();
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  add5() {
    try {
      setState(() {
        num1 = int.parse(controller1.text);
        num2 = int.parse(controller2.text);

        result = (num1! * 3.75 / 100 * num2! / 12).ceil();
      });
    } catch (e) {
      showSnackBar(context, "ياعم ادخل البيانات ");
    }
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
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
                "Calculator",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                // color: primaryColor,
              ),
            ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: mobileBackgroundColor,
                borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.symmetric(
                vertical: 11,
                horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
            child: Column(
              children: [
                Text(
                  result == null ? 'النتيجة هنا' : '$result',
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 102, 134, 14)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller1,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "ادخل المبلغ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller2,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "ادخل المدة",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 20,
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
                          add2();
                          // controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          " متوسط المخاطر",
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
                          add1();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          "منخفض المخاطر",
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
                          add4();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          " المبلغ الصافى",
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
                          add3();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          "مرتفع المخاطر",
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
                          add5();
                          //controller1.clear();
                          // controller2.clear();
                        },
                        child: const Text(
                          "مبلغ الخصم",
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
