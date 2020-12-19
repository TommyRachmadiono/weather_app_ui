import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_ui/pages/detail/widget/weather_forecast.dart';
import 'package:weather_app_ui/shared/background.dart';
import 'package:weather_app_ui/shared/weather_info.dart';

class DetailPage extends StatelessWidget {
  final String city;
  DetailPage({
    @required this.city,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: Text(
          city,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: SafeArea(
          top: false,
          child: Stack(
            children: [
              Background(),
              Container(
                padding: EdgeInsets.fromLTRB(20, 130, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '25 December',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WeatherInfo(
                      imgAsset: 'assets/icon/cloudy.svg',
                      suhu: 24,
                      day: '16.00',
                      isActive: false,
                    ),
                    WeatherInfo(
                      imgAsset: 'assets/icon/rain.svg',
                      suhu: 22,
                      day: '17.00',
                      isActive: true,
                    ),
                    WeatherInfo(
                      imgAsset: 'assets/icon/snow.svg',
                      suhu: 17,
                      day: '18.00',
                      isActive: false,
                    ),
                    WeatherInfo(
                      imgAsset: 'assets/icon/storm.svg',
                      suhu: 20,
                      day: '19.00',
                      isActive: false,
                    ),
                    WeatherInfo(
                      imgAsset: 'assets/icon/sunny.svg',
                      suhu: 26,
                      day: '20.00',
                      isActive: false,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 310, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FORECAST NEXT 5 DAYS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    WeatherForecast(
                      imgAsset: 'assets/icon/cloudy.svg',
                      date: '26 December',
                      weatherCondition: 'CLOUDY',
                      suhu: 24,
                    ),
                    WeatherForecast(
                      imgAsset: 'assets/icon/rain.svg',
                      date: '27 December',
                      weatherCondition: 'RAIN',
                      suhu: 23,
                    ),
                    WeatherForecast(
                      imgAsset: 'assets/icon/snow.svg',
                      date: '28 December',
                      weatherCondition: 'SNOW',
                      suhu: 16,
                    ),
                    WeatherForecast(
                      imgAsset: 'assets/icon/storm.svg',
                      date: '29 December',
                      weatherCondition: 'STORM',
                      suhu: 21,
                    ),
                    WeatherForecast(
                      imgAsset: 'assets/icon/sunny.svg',
                      date: '30 December',
                      weatherCondition: 'SUNNY',
                      suhu: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
