import 'package:cutnstyle/pages/detailscreen.dart';
import 'package:cutnstyle/uidata.dart';
import 'package:cutnstyle/widgets/button2.dart';
import 'package:cutnstyle/widgets/image_card.dart';
import 'package:cutnstyle/widgets/my_column.dart';
import 'package:cutnstyle/widgets/specialist_column.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CustomIcons {
  static const IconData menu = IconData(0xe900, fontFamily: "CustomIcons");
  static const IconData option = IconData(0xe902, fontFamily: "CustomIcons");
}

List<String> images = [
  "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3993305.jpeg?alt=media&token=183942b5-7e44-43f7-af41-21ed588a412b"
      "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fbh_walkThroughImg2.jpg?alt=media&token=4c92d207-9f49-4619-8b0e-d9a62d0f22d9",
  "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3993311.jpeg?alt=media&token=0f7ba7bf-55ce-40e2-ae84-a2138ba6b044",
  "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3993444.jpeg?alt=media&token=27a8f0fd-7723-4e2d-a197-a6558ce3a760",
  "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-696285.jpeg?alt=media&token=16158200-cce3-4856-ba75-494db4de4407",
];

List<String> title = [
  "Hounted Ground",
  "New colors",
  "Hot Oil Treatment, Source Image, Hair Detox Treatment.",
  "Scalp Treatment. Individuals who experience dry and itchy scalp may request for a scalp treatment.",
];

List<String> treatment = [
  "Facials and skin care treatments.",
  "Tanning",
  "Massages",
  "waxing ",
];

class Dashbaord extends StatefulWidget {
  @override
  _DashbaordState createState() => new _DashbaordState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _DashbaordState extends State<Dashbaord> {
  var currentPage = images.length - 1.0;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 25.0, bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(
                            CustomIcons.menu,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          }),
                  Spacer(),
                  Image.asset(
                    'images/logo.png',
                    width: 35,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Cut & Style",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: screen_size_height * .2,
                width: screen_size_width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ImageCard(cardImg: "images/braid4.jpg"),
                    SizedBox(width: 10),
                    ImageCard(cardImg: "images/braid3.jpg"),
                  ],
                )),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/braid.png",
                      columnTxt: "Braids",
                      columnBg: UIData.lightColor,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/abuja.png",
                      columnTxt: "Abuja",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/blow.png",
                      columnTxt: "Blowdry",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/haircut.png",
                      columnTxt: "Haircut",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/relaxer.png",
                      columnTxt: "Relaxer",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/shampoo.png",
                      columnTxt: "Shampoo",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/nail.png",
                      columnTxt: "Manicure",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, UIData.bookPageRoute),
                    child: MyColumn(
                      columnImg: "images/more.png",
                      columnTxt: "More",
                      columnBg: UIData.lighterColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Popular Treatments",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      )),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12.0,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  MyButton2(
                      btnText: "GET UPTO 10% OFF",
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen()),
                        );
                      }),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("25+ New styles",
                      style: TextStyle(color: Color(0xFFff6e6e))),
                  Spacer(),
                  FlatButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: TextStyle(color: Colors.black54)))
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                CardScrollWidget(currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: images.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Hair Specialists",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    FlatButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),
            ),
            SizedBox(height: 6),
            Container(
                height: 210,
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: screen_size_width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SpecialistColumn(
                        specImg:
                            "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-7389080.jpeg?alt=media&token=312fa60f-65d4-4e33-9b05-2492c82c6160",
                        specName: "Anny Roy"),
                    SizedBox(width: 12),
                    SpecialistColumn(
                        specImg:
                            "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3998420.jpeg?alt=media&token=ae60aa1a-1882-4cf7-abf5-73479347c364",
                        specName: "Joy Roy"),
                    SizedBox(width: 12),
                    SpecialistColumn(
                        specImg:
                            "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3998425.jpeg?alt=media&token=bee8bd54-0080-47b8-ac17-6299196f7c39",
                        specName: "Patience Roy"),
                    SizedBox(width: 12),
                    SpecialistColumn(
                        specImg:
                            "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-4599431.jpeg?alt=media&token=9a8d50c6-9321-430b-993c-b115b886b831",
                        specName: "Patience Roy"),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("For Men",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 46.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFff6e6e),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Text("Today's offer",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("9+ Hair Styles",
                      style: TextStyle(color: Color(0xFFff6e6e))),
                  Spacer(),
                  FlatButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: TextStyle(color: Colors.black54)))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2F3.jpeg?alt=media&token=730680a8-0e7a-4fce-ac3c-6d201776a0fc",
                              width: 296.0,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                              height: 222.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 4.0),
                                child: Text("French crop haircut",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        fontFamily: "SF-Pro-Text-Regular")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0.0, bottom: 12.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 6.0),
                                  child: MyButton2(
                                      btnText: "GET IT NOW",
                                      onpressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()),
                                        );
                                      }),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2F2.jpeg?alt=media&token=b64b4536-d5ba-4307-8164-da4fc2b67379",
                              width: 296.0,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                              height: 222.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 4.0),
                                child: Text("French crop haircut",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        fontFamily: "SF-Pro-Text-Regular")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0.0, bottom: 12.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 6.0),
                                  child: MyButton2(
                                      btnText: "GET IT NOW",
                                      onpressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()),
                                        );
                                      }),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("For Women",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 46.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 1.0,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFff6e6e),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Text("Today's offer",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("15+ Hair Styles",
                      style: TextStyle(color: Color(0xFFff6e6e))),
                  Spacer(),
                  FlatButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: TextStyle(color: Colors.black54)))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3993449.jpeg?alt=media&token=01d9cbe8-5c30-46e4-a703-927d5277f7cc",
                              width: 296.0,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                              height: 222.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 4.0),
                                child: Text("French crop haircut",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        fontFamily: "SF-Pro-Text-Regular")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0.0, bottom: 12.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 6.0),
                                  child: MyButton2(
                                      btnText: "GET IT NOW",
                                      onpressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()),
                                        );
                                      }),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Fpexels-photo-3993311.jpeg?alt=media&token=0f7ba7bf-55ce-40e2-ae84-a2138ba6b044",
                              width: 296.0,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                              height: 222.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 4.0),
                                child: Text("French crop haircut",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        fontFamily: "SF-Pro-Text-Regular")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0.0, bottom: 12.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 6.0),
                                  child: MyButton2(
                                      btnText: "GET IT NOW",
                                      onpressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen()),
                                        );
                                      }),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.network(images[i],
                          fit: BoxFit.cover,
                          height: 50,
                          color: Colors.black.withOpacity(0.3),
                          colorBlendMode: BlendMode.darken),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(treatment[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 29.0,
                                      fontFamily: "SF-Pro-Text-Regular")),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      fontFamily: "SF-Pro-Text-Regular")),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 6.0),
                                child: MyButton2(
                                    btnText: "BOOK NOW",
                                    onpressed: () {
                                      print('whT');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsScreen()),
                                      );
                                    }),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
