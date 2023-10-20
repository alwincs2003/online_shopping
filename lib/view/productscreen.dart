import 'package:flutter/material.dart';
import 'package:online_shopping/view/homescreen.dart';

import 'package:provider/provider.dart';

import '../provider/provider_class.dart';
import 'cart.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(
              fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homescreen()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/image1.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  'Zip-Front Hoodie with Split Kangaroo Pocket',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Product description : This unisex stylish pullover sweatshirt will keep you warm, snuggly, and cozy all through the season! With utterly soft fabric, it is trendy loungewear for the winter. ',
                  style: TextStyle(fontSize: 13, height: 1.2),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 25,
                                height: 50,
                              ),
                              Text(
                                'prices : ',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "\$399 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Provider.of<productscreenprovider>(
                                    context,
                                    listen: false,
                                  ).removefun();
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                Provider.of<productscreenprovider>(context)
                                    .value
                                    .toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              InkWell(
                                onTap: () {
                                  Provider.of<productscreenprovider>(
                                    context,
                                    listen: false,
                                  ).addfun();
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Total : ${Provider.of<productscreenprovider>(context).priceCal(399)}\$",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Center(
                  child: Text('Add to Cart'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
