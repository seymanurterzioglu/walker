import 'dart:io';
import 'package:flutter/material.dart';
import 'package:walker/Guide/guide_main_page.dart';
import 'package:walker/Tourist/main_page.dart';
import 'package:walker/Welcome/rounded_button.dart';
import 'package:walker/Widgets/constants.dart';
import 'package:walker/Widgets/navigation_drawer.dart';
import 'package:image_picker/image_picker.dart';

class GuideAddPage extends StatefulWidget {
  @override
  _GuideAddPageState createState() => _GuideAddPageState();
}

class _GuideAddPageState extends State<GuideAddPage> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Guide Add"),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        actions: <Widget>[
          // tourist sayfasına gidecek, appbarda iconbutton
          IconButton(
            icon: const Icon(Icons.assessment),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              ),
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //ACTIVITY INFORMATION
            Column(
              children: <Widget>[
                SizedBox(height: height * 0.05),

                activityPhoto(),

                SizedBox(height: height * 0.05),

                Text(
                  'New Travel Create',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.025,
                  ),
                ),

                SizedBox(height: height * 0.02),

                //Organizer's Name
                organizerName(),

                //Travel  Name

                travelName(),

                //Travel  Date
                travelDate(),

                //Travel  Quota (kontenjan)
                travelQuota(),

                //Travel Information
                travelInformation(),

                SizedBox(height: height * 0.02),
                //Add Button
                RoundedButton(
                  text: "Add",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GuideMainPage();
                        },
                      ),
                    ); //Navigator.push
                  },
                  color: white,
                  textColor: kPrimaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//Can be add a photo that taken with camera or a photo from your gallery
  Widget activityPhoto() {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 70,
          backgroundImage: _imageFile == null
              ? AssetImage("images/galata.jpg")
              : FileImage(File(_imageFile.path)), // import "dart.io"
        ),
        Positioned(
          top: 105,
          right: 20,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Activity Photo',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text('Camera'),
              ),
              TextButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: Text('Gallery'),
              ),
            ],
          ),
        ],
      ),
    );
  }

//Can be change with prefixicon too
  Widget organizerName() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: Container(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: "Organizer's Name",
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget travelName() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: Container(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.local_activity_outlined),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            hintText: "Travel's Name",
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget travelDate() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: Container(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.date_range),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            hintText: "Travel's Date",
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget travelQuota() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: Container(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.supervisor_account),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            hintText: "Travel's Quota",
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget travelInformation() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: Container(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.info_outline),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            hintText: "Travel's Information",
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
