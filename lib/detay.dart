import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final String img;
  const Detay({super.key, required this.img});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.img,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.img), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              child: AppBar(
            backgroundColor: Colors.transparent,
          )),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/dress.jpg"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Louis Voitton",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              // height: 30,
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text(
                                "Pariatur excepteur cillum velit mollit laborum tempor aliquip est voluptate culpa amet amet.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(thickness: 1),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 10, bottom: 2, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$6500",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 22,
                            ),
                          ),
                          FloatingActionButton(
                              backgroundColor: Colors.brown.withOpacity(0.8),
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "LAMINATED",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 10,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
