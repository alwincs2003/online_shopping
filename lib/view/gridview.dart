// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_shopping/view/productscreen.dart';

class Gridview extends StatelessWidget {
  List<String> imagelist = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg"
  ];
  List<String> title = [
    "Warm Zipper",
    "Kintted Woo!",
    "Zipper Win",
    "Child Win"
  ];
  List<String> prices = [
    "\$399",
    "\$200",
    "\$499",
    "\$500",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.6,
          crossAxisSpacing: 30,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 230,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Productscreen()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imagelist[index]),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Icon(Icons.favorite_outline_outlined),
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  title[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  prices[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.redAccent),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
