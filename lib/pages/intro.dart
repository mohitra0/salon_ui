import 'package:cached_network_image/cached_network_image.dart';
import 'package:cutnstyle/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:linkable/linkable.dart';

const Color color1 = Color.fromRGBO(241, 118, 138, 1);
const Color color2 = Color.fromRGBO(252, 223, 228, 1);
const Color color3 = Color.fromRGBO(254, 248, 240, 1);
List<String> image = ['ASSET/2nd.png', 'ASSET/1st.png', 'ASSET/3rd.png'];

List<String> title = [
  'Social Media',
  'Communication is the key!',
  'Events & Internships',
];

List<String> text = [
  'Gone are the days when introverts couldn’t share their views!! Aster allows users to share their thoughts and experiences anonymously, without any hesitation or fear of being judged.',
  'Aster provides its users the fastest chat box ever. The hustle-free chat-box allows users to connect people and community through public groups.',
  'Aster allows its users to know about the upcoming events happening across different colleges around them, through “Events and Activities Tab”.\nAster has a user-friendly interface, and is super-easy to use. Aster provides its users, a wide range of emojis for different moods.'
];

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  CarouselSlider carouselSlider;
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthh = screenSize.width;
    var heightt = screenSize.height;
    carouselSlider = CarouselSlider(
      viewportFraction: 1.0,
      enableInfiniteScroll: false,
      onPageChanged: (index) {
        setState(() {
          carouselIndex = index;
        });
      },
      height: MediaQuery.of(context).size.height,
      items: <Widget>[
        CarouselComponent1(
          col1: Color.fromRGBO(241, 118, 138, 1),
          col2: Color.fromRGBO(241, 118, 138, 1).withOpacity(0.78),
          imgUrl: image[0],
          ttl: title[0],
          txt: text[0],
        ),
        CarouselComponent2(
          col1: Color.fromRGBO(241, 118, 138, 1).withOpacity(0.8),
          col2: Color.fromRGBO(241, 118, 138, 1).withOpacity(0.6),
          imgUrl: image[1],
          ttl: title[1],
          txt: text[1],
        ),
        CarouselComponent3(
          col1: Color.fromRGBO(241, 118, 138, 1).withOpacity(0.6),
          col2: Color.fromRGBO(241, 118, 138, 1).withOpacity(0.6),
          imgUrl: image[2],
          ttl: title[2],
          txt: text[2],
        ),
      ],
    );

    return Scaffold(
      floatingActionButton: carouselIndex == 2
          ? Container()
          : IconButton(
              icon: Icon(
                Icons.chevron_right,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                carouselSlider.nextPage(
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              }),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          carouselSlider,
          carouselIndex == 2
              ? Positioned(
                  bottom: heightt * 0.035,
                  child: MaterialButton(
                    color: Colors.pink.shade400,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              : Positioned(
                  bottom: heightt * 0.035,
                  child: Row(
                    children: <Widget>[
                      Indicator(
                        carouselIndex: carouselIndex,
                        indicatorIndex: 0,
                      ),
                      Indicator(
                        carouselIndex: carouselIndex,
                        indicatorIndex: 1,
                      ),
                      Indicator(
                        carouselIndex: carouselIndex,
                        indicatorIndex: 2,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class CarouselComponent1 extends StatelessWidget {
  final col1, col2, imgUrl, ttl, txt;

  CarouselComponent1({this.col1, this.col2, this.imgUrl, this.ttl, this.txt});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthh = screenSize.width;
    var heightt = screenSize.height;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        right: 20,
      ),
      color: col2,
      child: Container(
        decoration: BoxDecoration(
          color: col1,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(180),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/logo.png',
                  width: 100,
                ),
              ),
              SizedBox(
                height: widthh * 0.1,
              ),
              Container(
                child: Image.asset(
                  'images/1.png',
                  width: widthh * 0.8,
                ),
              ),
              SizedBox(
                height: widthh * 0.15,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  'Hair cutting is an art form & foundation for styling the hair. It gives shape and structure to hairstyles. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: widthh * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselComponent2 extends StatelessWidget {
  final col1, col2, imgUrl, ttl, txt;

  CarouselComponent2({this.col1, this.col2, this.imgUrl, this.ttl, this.txt});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthh = screenSize.width;
    var heightt = screenSize.height;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        right: 20,
      ),
      color: col2,
      child: Container(
        decoration: BoxDecoration(
          color: col1,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(180),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/logo.png',
                  width: 100,
                ),
              ),
              SizedBox(
                height: widthh * 0.1,
              ),
              Container(
                child: Image.asset(
                  'images/2.png',
                  width: widthh * 0.8,
                ),
              ),
              SizedBox(
                height: widthh * 0.15,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  'Without a good, professional cut, styling has no basis. When designing a cut, you need four important aspects: precision, good technique, creativity and a sense of balance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: widthh * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselComponent3 extends StatelessWidget {
  final col1, col2, imgUrl, ttl, txt;

  CarouselComponent3({this.col1, this.col2, this.imgUrl, this.ttl, this.txt});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthh = screenSize.width;
    var heightt = screenSize.height;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
          // right: 20,
          ),
      color: col2,
      child: Container(
        decoration: BoxDecoration(
          color: col1,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(180),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/logo.png',
                  width: 100,
                ),
              ),
              SizedBox(
                height: widthh * 0.1,
              ),
              Container(
                child: Image.asset(
                  'images/1.png',
                  width: widthh * 0.8,
                ),
              ),
              SizedBox(
                height: widthh * 0.15,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  'At Cut & Style Salon, all hairstylists have been trained to cut hair in a structured and formal learning process.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: widthh * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final carouselIndex, indicatorIndex;

  Indicator({this.carouselIndex, this.indicatorIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: carouselIndex == indicatorIndex ? Colors.white : Colors.grey,
      ),
    );
  }
}
