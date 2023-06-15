import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class categorybutton extends StatelessWidget {
  categorybutton({
    required this.image,
    required this.name,
    required this.ontap,
  });

  String image;
  String name;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.fromLTRB(22, 9, 22, 9),
          width: 75,
          height: 78,
          decoration: BoxDecoration(
            color: Color(0xffFBFBFD),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(image),
              SizedBox(height: 7),
              Text(
                name,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff7E7E7F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
