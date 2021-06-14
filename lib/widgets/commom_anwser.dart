import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAnwser extends StatelessWidget {
  final String icon;
  final String text;
  final Function function;
  // final IconData iconButton;

  const CommonAnwser({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.function,
    // @required this.iconButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Stack(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(14),
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white,width: 2)),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 40,
              ),
              child: Text(
                icon,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white,
                    ),
              )),
        ],
      ),
    );
  }
}
