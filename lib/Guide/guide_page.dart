import 'package:flutter/material.dart';
import 'package:walker/Tourist/main_page.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';
import 'package:walker/Widgets/activity.dart';

class GuidePage extends StatefulWidget {
  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Guide Home"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions:<Widget>[
          IconButton(
            icon: const Icon(Icons.assessment),
            onPressed:() => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) {
                    return MainPage();
                  },
                ),
              ),
            },
          ),

        ],
      ),
      body: Center(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (_, index){
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
                                ActivityList[index].resim,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  Padding(
                        padding: const EdgeInsets.only(left:20 , right: 5),
                        child: Text(
                          ActivityList[index].baslik,
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.03),
                        ),
                  ),
                  Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 26, vertical: 2),
                        child: Text(
                          ActivityList[index].aciklama,
                          style: TextStyle(color: white, fontSize: height * 0.025),
                        ),
                  ),
                  Padding(
                        padding: const EdgeInsets.only(left: 0, right: 210),
                        child: Text(
                          ActivityList[index].zaman,
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.normal,
                              fontSize: height * 0.021),
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

List<Activity> ActivityList = [
  Activity(
    baslik: "Best of Istanbul:3-Day Private Guided Tour",
    aciklama:
    "Viator     \n"
        "Friday,Jul 12,2021\n"
        "The Last 4 People\n"
        "per person £150\n"
        "Prepare to be awed by Istanbul’s magnificent architecture, rich history, and eclectic bazaars as you discover the unmissable highlights of the Old City on this 1-, 2-, or 3-day private tour. Marvel over the glorious Hagia Sophia, learn how the Blue Mosque earned its famous nickname, and see the ancient Basilica Cistern. Tour Topkapi Palace to gain an insight into the lavish lifestyles of the Ottoman sultans and their harem, and browse the legendary Grand Bazaar, where you find everything from carpets to Turkish delight."
        ,

    resim: "images/galata.jpg",
    zaman:"2h ago",
  ),
  Activity(
    baslik: "Exclusive Private Paris Tour",
    aciklama:
    "Citroen     \n"
        "Tuesday,Oct 06,2021\n"
        "The Last 1 People\n"
        "from £218.36 (Price varies by group size)\n"
        "Experience a unique sightseeing tour in a vintage Citroen Deux Chevaux (2CV) car with a pit stop for a warm drink and a French treat from the famous Ladurée tea room during this experience. Enjoy a private tour seeing the city's main sights—like the Eiffel Tower and Moulin Rouge—from the passenger seat of a classic 2CV. Learn about artsy and bohemian districts like Saint-Germain-des-Prés and Montmartre from your expert private guide and nibble a signature Ladurée macaron as well."
        ,
    resim: "images/balon.jpg",
    zaman:"7h ago",
  ),
  Activity(
    baslik: "Group Tour: Tokyo in a Day",
    aciklama:
    "Viator     \n"
        "Wednesday,Jan 12,2022\n"
        "The Last 8 People\n"
        "from £272.85 (Price varies by group size)\n"
        "Discover Tokyo at your own pace on this 4- or 8-hour private, custom tour with guide. Design a tour that’s perfect for your interests. There’s a world of options, including the outer fish market at Tsukiji, the city’s temples and shrines, shopping excursions and food or sake tours. Your private custom tour includes a guide, entrance fees at select attractions, snacks, round-trip transport from your hotel with meet-and-greet and a car (for the private transfer option), or public transport (for the public transfer) and optional lunch (for the full-day tour)."
        ,
    resim: "images/anitkabir.jpeg",
    zaman:"9h ago",
  ),
];