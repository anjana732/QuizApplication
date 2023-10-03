import 'package:flutter/material.dart';
import '../constants.dart';
class OptionCard extends StatelessWidget {
  const OptionCard({Key? key, required this.option , required this.color}): super(key:key);
  final String option;
 // final bool isClicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // print("Clicked");

      },
      child: Card(
        color: color,
        child: ListTile(
          title: Text(option,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,

          ),),
        ),
      ),
    );
  }
}
