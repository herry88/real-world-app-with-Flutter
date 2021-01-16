import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///dateSection
    Widget dateSection = Container(
      child: new Text(
        DateFormat('MMMM d, H:m').format(DateTime.now()),
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
    );

    ///widget tempSection
    Widget tempSection = Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            '35',
            style: new TextStyle(
              fontSize: 80.0,
            ),
          ),
          Expanded(
            child: Container(
              child: new Text(
                '\u2103',
                style: new TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/img/cloudy.png',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );

    ///widget Description
    Widget descriptionSection = Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            'Jakarta',
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Panas',
            style: new TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    return Container(
      padding: const EdgeInsets.all(60.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dateSection,
          tempSection,
          descriptionSection
        ],
      ),
    );
  }
}
