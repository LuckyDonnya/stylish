import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stylish/components/categoryButton.dart';
import 'package:stylish/components/productCard.dart';
// import 'package:stylish/components/squar_tile.dart';
// import 'package:stylish/main.dart';
import 'package:stylish/model.dart';
// import 'package:stylish/pages/login.dart';
// import 'package:stylish/pages/signup.dart';
import 'package:stylish/repository.dart';
import 'package:stylish/views/headerdrawer.dart';
// import 'package:stylish/views/sidebar.dart';
import '../components/search_button.dart';
// import 'package:stylish/menu.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final controller = TextEditingController();

  List<Product> listProduct = [];
  Repository repository = Repository();

  getData() async {
    listProduct = await repository.getData();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 252, 246, 246),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: Text("data"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 19, right: 19, top: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 23,
                        width: 23,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 242, 245, 244),
                        ),
                        child: InkWell(
                          splashColor: const Color(0xff5AEEF4),
                          borderRadius: BorderRadius.circular(45),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MyHeaderDrawer();
                              }),
                            );
                          },
                          child: Image.asset("assets/line.png"),
                        ),
                      ),
                      Container(
                        width: 130,
                        color: Colors.transparent,
                        child: Image.asset(
                          "assets/texas.png",
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 250, 252, 252),
                        ),
                        child: InkWell(
                          splashColor: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Image.asset("assets/lonceng.png"),
                        ),
                      ),
                    ],
                  ),

                  // children: [
                  //   Container(
                  //     width: 25,
                  //     color: Colors.transparent,
                  //     child: Image.asset("assets/line.png"),
                  //   ),
                  //   Container(
                  //     width: 130,
                  //     color: Colors.transparent,
                  //     child: Image.asset(
                  //       "assets/texas.png",
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  //   Container(
                  //     width: 30,
                  //     color: Colors.transparent,
                  //     child: Image.asset("assets/lonceng.png"),
                  //   ),
                  // ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 19),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "best Outfits for you",
                          style: TextStyle(
                            color: Color.fromARGB(255, 161, 161, 161),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MySearch(
                controller: controller,
                hintText: "Search items",
                obscuretext: false,
                Widget1: Icon(
                  Icons.search,
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      categorybutton(
                        image: "assets/dress.png",
                        name: "Dress",
                        ontap: () {},
                      ),
                      SizedBox(width: 21),
                      categorybutton(
                        image: "assets/shirt.png",
                        name: "Shirt",
                        ontap: () {},
                      ),
                      SizedBox(width: 21),
                      categorybutton(
                        image: "assets/pants.png",
                        name: "Pants",
                        ontap: () {},
                      ),
                      SizedBox(width: 21),
                      categorybutton(
                        image: "assets/tshirt.png",
                        name: "Tshit",
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arivall",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 25, right: 25),
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 250,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (contex, index) {
                        return productCard(
                          harga: listProduct[index].price,
                          image: listProduct[index].image,
                          name: listProduct[index].name,
                          ontap: () {},
                        );
                      },
                      itemCount: listProduct.length),
                ),
              ),
              // SingleChildScrollView(
              //   padding: EdgeInsets.only(left: 25, right: 25),
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       productCard(
              //         harga: "Rp.179.000,-",
              //         image: "assets/baju1.png",
              //         name: "Casual Henley Shirts",
              //         ontap: () {},
              //       ),
              //       SizedBox(width: 7),
              //       productCard(
              //         harga: "Rp.189.000,-",
              //         image: "assets/baju2.png",
              //         name: "Long Sleeve Shirts",
              //         ontap: () {},
              //       ),
              //       SizedBox(width: 7),
              //       productCard(
              //         harga: "Rp.149.000,-",
              //         image: "assets/baju3.png",
              //         name: "Curved Hem Shirt",
              //         ontap: () {},
              //       ),
              //       SizedBox(width: 7),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
