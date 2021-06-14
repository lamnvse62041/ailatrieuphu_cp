import 'package:cp_system/main.dart';
import 'package:cp_system/widgets/commom_thongkesolieu.dart';
import 'package:cp_system/widgets/common_background.dart';
import 'package:cp_system/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YourPoint extends StatefulWidget {
  const YourPoint({Key key}) : super(key: key);

  @override
  _YourPointState createState() => _YourPointState();
}

class _YourPointState extends State<YourPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CommonBackground(),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/pngs/Frame.png'),
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(12),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/pngs/point.png',
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Chuc mung ban da chien thang ",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
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
                                  //   child:
                                  //       Image.asset('assets/pngs/Vector2.png'),
                                  // ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  ThongKeSoLieuPage(
                                    text: "ban hoan thanh cau so:",
                                    soLieu: "15",
                                  ),
                                  ThongKeSoLieuPage(
                                    text: "voi thoi gian:",
                                    soLieu: "120 giay",
                                  ),
                                  CommonButton(
                                      icon: "assets/svgs/console.svg",
                                      text: "chia se",
                                      function: null,
                                      color: Colors.blue),
                                  CommonButton(
                                    icon: "assets/svgs/console.svg",
                                    text: "Ve trang chu ",
                                    function: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyHomePage()));
                                    },
                                    color: Colors.blue,
                                  ),
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
                                      child:
                                          Image.asset('assets/pngs/sumi.png'),
                                    ),
                                      Container(
                                        padding: const EdgeInsets.all(15),
                                        margin: const EdgeInsets.only(left: 50),
                                        child: Text(
                                          "1,500,000 VND",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              .copyWith(color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
