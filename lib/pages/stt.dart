import 'package:cp_system/widgets/common_background.dart';
import 'package:cp_system/widgets/common_button.dart';
import 'package:flutter/material.dart';

class SttSumi extends StatefulWidget {
  const SttSumi({Key key}) : super(key: key);

  @override
  _SttSumiState createState() => _SttSumiState();
}

class _SttSumiState extends State<SttSumi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CommonBackground(),
        Column(
          children: [
            Container(
              // padding: const EdgeInsets.only(top: 20),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.only(top: 10),
                  // color: Colors.purple,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
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
                        questionButton(stt: "15", text: "10000000",color: Colors.blue,),
                        questionButton(stt: "14", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "13", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "12", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "11", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "10", text: "10000000",color: Colors.blue,),
                        questionButton(stt: "9", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "8", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "7", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "6", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "5", text: "10000000",color: Colors.blue,),
                        questionButton(stt: "4", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "3", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "2", text: "10000000", color: Colors.lightBlue[400],),
                        questionButton(stt: "1", text: "10000000", color: Colors.blue,),
                      ])),
            )
          ],
        )
      ],
    ));
  }
}

class questionButton extends StatelessWidget {
  const questionButton({
    Key key,
    @required this.color,
    @required this.stt,
    @required this.text,
  }) : super(key: key);
  final String stt;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    index++;
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  stt,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white),
                  // textAlign: TextAlign.start,
                ),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
