import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/models/ads_test/banner_ad_model.dart';
import 'package:instagram_app/shared/colors.dart';

class Myvalue extends StatefulWidget {
  const Myvalue({super.key});

  @override
  State<Myvalue> createState() => _MyvalueState();
}

class _MyvalueState extends State<Myvalue> {
  List verse = [
    {
      "line1": "المبالغ",
      "line2": " الحد الادنى لمبلغ التمويل 6000 جنيه والاقصى 60000 جنيه "
    },
    {
      "line1": "من 6000 جنيه وحتى 30000 جنيه ",
      "line2":
          "• الحد الأدنى من الأوراق • استعلام جنائي • استعلام ائتماني • الزيارات الميدانية اللازمة"
    },
    {
      "line1": "اكثر من 30000 جنيه وحتى 35000 جنيه",
      "line2":
          "• الحد الأدنى من الأوراق • استعلام جنائي • استعلام ائتماني • تقرير زيارة غسل الأموال • الزيارات الميدانية اللازمة"
    },
    {
      "line1": "اكثر من 35000 جنيه وحتى 39500 جنيه",
      "line2":
          "• الحد الأدنى من الأوراق • استعلام جنائي • استعلام ائتماني • تقرير زيارة غسل الأموال • موافقة شركة الضمان • الزيارات الميدانية اللازمة"
    },
    {
      "line1": "من 40000 جنيه وحتى 60000 جنيه",
      "line2":
          "• الحد الأدنى من الأوراق + اضافة بطاقة ضريبة او سجل تجارى للمبالغ الأكبر من 40000 • توقيع سند اذنى + شيكات بنكية او بريدية • استعلام جنائي • استعلام ائتماني • تقرير زيارة غسل الأموال • موافقة شركة الضمان• الزيارات الميدانية اللازمة",
    },
    {
      "line1": "المدة",
      "line2":
          " مدة التمويل الاول على النحو التالى: - من 6000وحتى 29.500 لاتزيد عن 12 شهر /من 30000 وحتى 34500 لاتزيد عم 14 شهر /من 35000 وحتى 39500 لاتزيد عن 16 شهر ومن 40000 وحتى 60000 لاتزيد عن 18 شهر/ فى حال التجديد لايجوز  زيادة المدة اكثر من شهرين  "
    },
    {
      "line1": "وسائل النقل",
      "line2":
          "التمويل الاول لكل من: - التروسيكل 10000 / الميكروباص والاجرة والنصف نقل 15000/واللورى والنقل الثقيل 25000"
    },
    {
      "line1": "شركة الضمان ",
      "line2":
          " يلزم الحصول على موافقة الشركة للمبالغ التى تزيد عن 35000 جنيه/ وطبعا فيه نموذج ويرسل معه صورة ضوئية للملف مستوفاه للسيد مدير الائتمان "
    },
    {
      "line1": "غسل الأموال ",
      "line2":
          " يلزم ابلاغ مسئول وحدة غسل الاموال عند التمويل للمبالغ التى تزيد عن 30000 ويلزم توقيع العميل على نموذج اعرف عميلك لكل العملاء كما يلزم ابلاغه بحالات السداد المبكر خلال الاربعة شهور الاولى من الحصول على تمويل  "
    },
    {
      "line1": "الاستعلام الائتمانى ",
      "line2":
          " يشترط ألا يزيد عدد التمويلات من الجهات الاخرى عن 3 جهات /لايتم تمويل العميل المتعثر او المخاطر مع العلم امكانية دراسة المخاطر الزراعى بموافقة مدير الائتمان"
    },
    {
      "line1": "الضامن",
      "line2": "   الضامن يعامل معاملة العميل عند التجديد حال وجود تأخير"
    },
    {
      "line1": "النشاط الحرفى ",
      "line2":
          "الحد الاقصى للتمويل الاول 10000 ولايزيد فى التجديد عن 15000/ والحد الاقصى المسموح به 3 ملفات شهريا لكل مسئول ائتمان "
    },
    // {
    //   "line1": " فى النهاية ",
    //   "line2":
    //       "فضلاً وليس أمراً الدعاء للاستاذ وليد جلال استاذنا الفاضل بالرحمة والمغفرة "
    // },
  ];

  int myIndex = 0;
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
                "سياسات",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                // color: primaryColor,
              ),
            ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SingleChildScrollView(scrollDirection: Axis.vertical),
              // const SizedBox(
              //   height: 25,
              // ),
              // ClipRRect(
              //     borderRadius: BorderRadius.circular(45),
              //     child: Image.asset(
              //       "assets/img/w_galal.jpg",
              //       height: 180,
              //       width: 180,
              //       fit: BoxFit.contain,
              //     )),

              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  verse[myIndex]["line1"],
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 102, 134, 14),
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  verse[myIndex]["line2"],
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (myIndex == 0) {
                          myIndex = verse.length - 1;
                        } else {
                          myIndex--;
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 102, 134, 14),
                    child: const Icon(
                      Icons.arrow_left,
                      size: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (myIndex == verse.length - 1) {
                          myIndex = 0;
                        } else {
                          myIndex++;
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 102, 134, 14),
                    child: const Icon(
                      Icons.arrow_right,
                      size: 60,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              const AdBanner2(),
            ],
          ),
        ),
      ),
    );
  }
}
