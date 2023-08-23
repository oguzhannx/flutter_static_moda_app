import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatefulWidget {
  const ModaApp({super.key});

  @override
  State<ModaApp> createState() => _ModaAppState();
}

class _ModaAppState extends State<ModaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda App AppBar",
          style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.grey.withOpacity(0.2),
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          //Üstteki Profiller Listesi
          Container(
            color: Colors.transparent,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                ListeElemani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(width: 30),
                ListeElemani('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(width: 30),
                ListeElemani(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(width: 30),
                ListeElemani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(width: 30),
                ListeElemani('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                SizedBox(width: 30),
                ListeElemani(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                SizedBox(width: 30),
              ],
            ),
          ),
          /*  */
          //Card
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4, //gölge
              // color: Colors.blue.shade300,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 500,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/images/model1.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Mobtserrat",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                  fontFamily: "Mobtserrat",
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Commodo consectetur eu aliqua occaecat sint non sit enim ea ut sit elit. Occaecat elit cillum consequat dolore laboris labore commodo occaecat.",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(img: "assets/images/modelgrid1.jpeg"),
                            ));
                          },
                          child: Hero(
                            tag: "assets/images/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/modelgrid1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      img: "assets/images/modelgrid2.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/images/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/modelgrid2.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      img: "assets/images/modelgrid3.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/images/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/modelgrid3.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "# Louis vuitton",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "# Louis vuitton",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "1.7K",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.chat,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "325",
                          style:
                              TextStyle(fontFamily: "Montserrat", fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 220,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "2.3K",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ListeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
