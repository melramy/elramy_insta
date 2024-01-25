import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/models/ads_test/banner_ad_model.dart';
import 'package:instagram_app/shared/colors.dart';

class Myjobs extends StatefulWidget {
  const Myjobs({Key? key}) : super(key: key);

  @override
  State<Myjobs> createState() => _MyjobsState();
}

class _MyjobsState extends State<Myjobs> {
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
                "مسوغات تعيين موظف جديد",
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
            child: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Column(
                children: const [
                  Text(
                    "1 .شهادة التخرج أصـل",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "2 .شهادةالميلاد أو مستخرج رسمي منها أصل",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "3 .الموقف من التجنيد أصل للذكور",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "4 .شهادة الخدمة العامة أصل للمكلفين بها",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "5 .كعب العمل",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "6 .عدد 6 صور فوتوغرافيه حديثه",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "7 .شهادة الحالة الجنائية",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  Text(
                    "8 .صوره ضوئيه حديثه من بطاقة الرقم القومى",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "9 .شهادات الخبرة إن وجدت ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "10 .كشف طبي أو شهاد صحية",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "11 .إخلاء طرف في حالة وجود عمل سابق",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "12 .استمارة 6 تأمينات في حالة وجود عمل سابق او طبعة من التامينات مع ذكر مايوجد فى الطبعة من تأمينات  (شركةخرى - معاش – رخصة قياده – تأمين الى سبب أخر ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "13 .نموذج 111 ـ تأمين صحى",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AdBanner2(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
