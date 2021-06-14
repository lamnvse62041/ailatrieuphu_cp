import 'package:cp_system/widgets/commom_anwser.dart';
import 'package:cp_system/widgets/commom_thongkesolieu.dart';
import 'package:cp_system/widgets/common_background.dart';
import 'package:cp_system/widgets/common_button.dart';
import 'package:cp_system/widgets/common_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class AiLaTrieuPhu extends StatefulWidget {
  const AiLaTrieuPhu({Key key}) : super(key: key);

  @override
  _AiLaTrieuPhuState createState() => _AiLaTrieuPhuState();
}

class _AiLaTrieuPhuState extends State<AiLaTrieuPhu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CommonBackground(),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 80),
                // height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(26),
                              bottomRight: Radius.circular(26),
                            ),
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 120,
                          // height: 60,
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Text(
                            "00:30",
                            textAlign: TextAlign.right,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                            left: 20,
                          ),
                          child: Icon(
                            Icons.access_alarm,
                           // height: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(26),
                              bottomLeft: Radius.circular(26),
                            ),
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        // height: 310,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(20),
                        // height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            // Container(
                            //   width: MediaQuery.of(context).size.width,
                            //   child: Image.asset('assets/pngs/Vector2.png'),
                            // ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                "Con Bo Co May Chan",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 40,
                        right: 40,
                        child: Stack(
                          children: [
                            Container(
                              child: Image.asset('assets/pngs/sumi.png'),
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(top: 0),
                                  child: Center(
                                    child: Text(
                                      "1,500,000 VND",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          .copyWith(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(17),
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Center(
                                    child: Text(
                                      "1/15",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CommonButton2(icon: Icons.ac_unit, function: null),
                    CommonButton2(icon: Icons.access_alarm, function: null),
                    CommonButton2(icon: Icons.ac_unit, function: null),
                    CommonButton2(icon: Icons.ac_unit, function: null),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CommonAnwser(function: null, text: "A", icon: "1"),
                    CommonAnwser(function: null, text: "B", icon: "2"),
                    CommonAnwser(function: null, text: "C", icon: "3"),
                    CommonAnwser(function: null, text: "D", icon: "4")
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
