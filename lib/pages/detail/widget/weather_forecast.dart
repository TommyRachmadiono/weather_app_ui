import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherForecast extends StatelessWidget {
  final String imgAsset;
  final String date;
  final String weatherCondition;
  final int suhu;

  const WeatherForecast({
    @required this.imgAsset,
    @required this.date,
    @required this.weatherCondition,
    @required this.suhu,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        imgAsset,
        width: 50,
        color: Colors.white,
      ),
      title: Text(
        date,
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      subtitle: Text(
        weatherCondition,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      trailing: Text(
        '$suhu\u00B0C',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
