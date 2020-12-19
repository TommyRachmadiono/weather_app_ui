import 'package:flutter/material.dart';
import 'package:weather_app_ui/pages/detail/detail_page.dart';

class WeatherCard extends StatelessWidget {
  final String imgAsset;
  final String city;
  final String date;
  final int suhu;
  final EdgeInsets margin;

  const WeatherCard({
    @required this.imgAsset,
    @required this.city,
    @required this.date,
    @required this.suhu,
    @required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.all(20),
      height: 450,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(imgAsset),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            city,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            date,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Text(
            '$suhu\u00B0C',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey[400],
          ),
          SizedBox(height: 15),
          Text(
            'Cloudy',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 3),
          ),
          Spacer(),
          SizedBox(
            width: 150,
            child: RaisedButton(
              elevation: 10,
              color: Color.fromRGBO(0, 0, 128, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(city: city),
                  ),
                );
              },
              child: Text(
                'See Detail',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
