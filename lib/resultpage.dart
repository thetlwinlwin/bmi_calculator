import 'package:flutter/material.dart';
import 'constants.dart';
import 'cards/reusablecard.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.resultToShow});

  Map resultToShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 55,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ReusableCard(
            flex: 6,
            colour: kActiveCardColor,
            functioning: null,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  resultToShow['Final'],
                ),
                Text(
                  resultToShow['Result'],
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    resultToShow['Details'],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Restart',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              height: kBtmContainerHeight,
              color: kBtmContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}
