import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_main_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/places.dart';
import 'package:walker/Widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(user.uid.toString()),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions:<Widget>[  // // guide sayfasına gidecek, appbarda iconbutton
          IconButton(
              icon: const Icon(Icons.assessment),
              onPressed:() => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) {
                      return GuideMainPage();
                    },
                  ),
                ),
              },
          ),

        ],
/*
        leading: Icon(
          Icons.menu,
          size: width * 0.08,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.subdirectory_arrow_left, size: width * 0.08),
          ),
        ], */ //buton koymaya yarar.
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: height * 0.4,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              yerlerListesi[index].resim,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 150),
                  child: Text(
                    yerlerListesi[index].baslik,
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: height * 0.04),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26, vertical: 2),
                  child: Text(
                    yerlerListesi[index].aciklama,
                    style: TextStyle(color: white, fontSize: height * 0.025),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 210),
                  child: Text(
                    "8m ago",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.normal,
                        fontSize: height * 0.026),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.04,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: width * 0.025),
                    Container(
                      height: height * 0.05,
                      width: width * 0.04,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: width * 0.025),
                    Container(
                      height: height * 0.05,
                      width: width * 0.04,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: width * 0.07),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

List<Yerler> yerlerListesi = [
  Yerler(
    baslik: "Galata Tower",
    aciklama:
        "The Galata Tower,called Christea Turris by the Genoese, is a medieval tower in the Galata/Karaköy quarter of İstanbul,Turkey,just to north of the Golden Horn's junction with the Bosphorus ",
    resim: "images/galata.jpg",
  ),
  Yerler(
    baslik: "Balloons City",
    aciklama:
        "It’s name was probably derived from Katpatuka, land of the beautiful horses, in Hittite language. Cappadocia is generally regarded as the plains and the mountainous region of eastern central Anatolia around the upper and middle reaches of the river Kizilirmak (Red River). It was here that several ancient highways crossed and different cultures came into contact with each other. It was also the land of the Hittites.",
    resim: "images/balon.jpg",
  ),
  Yerler(
    baslik: "Anıtkabir",
    aciklama:
        "When Atatürk died in 1938, he was temporarily buried in Etnography Museum and it was started to search a proper memorial place and it was considered as suitable for Atatürk to be buried in a monument in the capital city of Turkey, Ankara’s Rasattepe where has a wide view and reign over the city. The project of Anıtkabir would be determined with a contest. The contest was succeeded by Emin Onat and Orhan Arda and their projects formed what Anıtkabir is today. Anıtkabir was built on an area which is 15.000 square meters and the hill’s name started to be mentioned as Anıttepe.",
    resim: "images/anitkabir.jpeg",
  ),
];
