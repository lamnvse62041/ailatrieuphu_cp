import 'package:cp_system/widgets/common_background.dart';
import 'package:cp_system/widgets/common_button.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'commom_thongkesolieu.dart';

class CommonCenter extends StatefulWidget {
  const CommonCenter({Key key}) : super(key: key);

  @override
  _CommonCenterState createState() => _CommonCenterState();
}

class _CommonCenterState extends State<CommonCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CommonBackground(),
          Column(
            children: [
              Container(
                height: 500,
                padding: const EdgeInsets.only(top: 60),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red, width: 2)),
                child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 310,
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
                              //bottom: -20,
                              left: 40,
                              right: 40,
                              bottom: -10,
                              child: CommonButton(
                                icon: "assets/svgs/console.svg",
                                text: "Ve trang chu ",
                                function: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()));
                                },
                                color: Colors.blue,
                              ),
                              
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
