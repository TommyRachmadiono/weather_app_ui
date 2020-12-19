import 'package:flutter/material.dart';
import 'package:weather_app_ui/pages/home/widget/weather_card.dart';
import 'package:weather_app_ui/shared/weather_info.dart';
import 'package:weather_app_ui/shared/background.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Weather Apps',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: SafeArea(
          top: false,
          child: Stack(
            children: [
              Background(),
              PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                physics: BouncingScrollPhysics(),
                controller: pageController,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: WeatherCard(
                      imgAsset: 'assets/images/city.jpg',
                      city: 'Malang',
                      date: '25 December 2020',
                      suhu: 25,
                      margin: EdgeInsets.only(right: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: WeatherCard(
                      imgAsset: 'assets/images/city.jpg',
                      city: 'Surabaya',
                      date: '25 December 2020',
                      suhu: 25,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: WeatherCard(
                      imgAsset: 'assets/images/city.jpg',
                      city: 'Sidoarjo',
                      date: '25 December 2020',
                      suhu: 25,
                      margin: EdgeInsets.only(left: 20),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeatherInfo(
                          imgAsset: 'assets/icon/cloudy.svg',
                          suhu: 25,
                          day: 'Today',
                          isActive: true,
                        ),
                        WeatherInfo(
                          imgAsset: 'assets/icon/storm.svg',
                          suhu: 21,
                          day: 'Saturday',
                          isActive: false,
                        ),
                        WeatherInfo(
                          imgAsset: 'assets/icon/sunny.svg',
                          suhu: 27,
                          day: 'Monday',
                          isActive: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
