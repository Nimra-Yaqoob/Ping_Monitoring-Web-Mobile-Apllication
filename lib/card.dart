import 'package:flutter/material.dart';

class cardWidget extends StatelessWidget {
  // const cardWidget({super.key});
  final String? locName;
  final String? mainText;
  final Color? clur;

  cardWidget({this.mainText, this.locName, this.clur = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 25),
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              locName ?? '',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  mainText ?? '',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(color: clur, shape: BoxShape.circle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
