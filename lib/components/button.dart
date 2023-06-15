import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stylish/pages/homePage.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.ontap, required this.nameBtn});

  void Function()? ontap;
  String nameBtn;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 85),
          decoration: BoxDecoration(
              color: Color(0xFFF67952),
              borderRadius: BorderRadius.circular(133)),
          child: Center(
            child: Text(
              nameBtn,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
