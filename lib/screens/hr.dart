

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/responsive/mobile.dart';
import 'package:instagram_app/responsive/responsive.dart';
import 'package:instagram_app/responsive/web.dart';
import 'package:instagram_app/screens/commit.dart';
import 'package:instagram_app/screens/jobs.dart';
import 'package:instagram_app/shared/colors.dart';

class Myhr extends StatelessWidget {
  const Myhr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                    "",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    // color: primaryColor,
                  ),
                ),
          body: SafeArea(
            child: Scaffold(
              body: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "   EAF ",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: "myfont",
                                  color: Color.fromARGB(255, 147, 124, 124)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset(
                              "assets/icons/signup.svg",
                              height: 150,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 65,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Mycommit()));
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 89, vertical: 10)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27))),
                                ),
                                child: const Text(
                                  "أوراق التمويل",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 65,
                              width: 350,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Myjobs()),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 89, vertical: 10)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27))),
                                ),
                                child: const Text(
                                  "مسوغات التعيين",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 299,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Divider(
                                    thickness: 1.5,
                                    color: Colors.purple[900],
                                  )),
                                  Text(
                                    "OR",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.purple[900],
                                    ),
                                  ),
                                  Expanded(
                                      child: Divider(
                                    thickness: 1.5,
                                    color: Colors.purple[900],
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Resposive(
                                              myMobileScreen: MobileScerren(),
                                              myWebScreen: WebScerren())),
                                    );
                                  },
                                  child: const Text(
                                    "HOME",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 147, 124, 124)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Image.asset(
                        "assets/img/main_top.png",
                        width: 111,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/img/login_bottom.png",
                        width: 111,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
