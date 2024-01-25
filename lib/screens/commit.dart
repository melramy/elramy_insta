// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/models/ads_test/banner_ad_model.dart';

import 'package:instagram_app/shared/colors.dart';



class Mycommit extends StatefulWidget {
  const Mycommit({Key? key}) : super(key: key);

  @override
  State<Mycommit> createState() => _MycommitState();
}

class _MycommitState extends State<Mycommit> {
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
                     icon: Icon(
                      Icons.logout,
            
                    )),
              ],
              backgroundColor: mobileBackgroundColor,
              title: Text(
                "الاوراق المطلوبة",
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
                children: [
                  Text(
                    textDirection: TextDirection.rtl,
                    "1- صورة بطاقة الرقم القومي سارية  أو جواز سفر ساري",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "2-صورة عقد إيجار محل النشاط أو عقد تمليك المكان  مع وجود الأصل للاطلاع",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "3- صورةايصال مرافق حديث لمقر النشاط وسكن العميل والضامن",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    " 4-صورة السجل التجاري إن وجد",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "5-صورة رخصة مقر النشاط ان وجدت",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "6- صورة البطاقة الضريبة ان وجدت ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "7- الالتزام بملء نموذج اعرف عميلك ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 166, 9)),
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
