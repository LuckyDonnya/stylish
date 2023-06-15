import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class productCard extends StatelessWidget {
  productCard({
    required this.harga,
    required this.image,
    required this.name,
    required this.ontap,
  });

  String image;
  String name;
  String harga;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(5),
          height: 190,
          width: 154,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                width: 142,
                height: 133,
                decoration: BoxDecoration(
                    color: Color(0xffEFEFF2),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.network(image),
              ),
              SizedBox(height: 5),
              Text(name),
              SizedBox(height: 5),
              Text(
                harga,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
