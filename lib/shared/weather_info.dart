import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherInfo extends StatelessWidget {
  final String imgAsset;
  final int suhu;
  final String day;
  final bool isActive;

  const WeatherInfo({
    @required this.imgAsset,
    @required this.suhu,
    @required this.day,
    @required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          imgAsset,
          width: 30,
          color: isActive ? Colors.yellow : Colors.white,
        ),
        SizedBox(height: 5),
        Text(
          '$suhu\u00B0C',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          day,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
