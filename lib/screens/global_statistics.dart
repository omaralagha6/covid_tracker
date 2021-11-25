
import 'package:covid19_tracker/models/global_summary.dart';
import 'package:covid19_tracker/models/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
class GlobalStatistics extends StatelessWidget {

  final GlobalSummaryModel summary;

  GlobalStatistics({required this.summary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        buildCard(
          "CONFIRMED", 
          summary.TotalConfirmed,
          summary.NewConfirmed,
          kConfirmedColor
        ),

        buildCard(
          "ACTIVE", 
          summary.TotalConfirmed - summary.TotalRecovered - summary.TotalDeaths,
          summary.NewConfirmed - summary.NewRecovered - summary.NewDeaths,
          kActiveColor
        ),

        buildCard(
          "RECOVERED", 
          summary.TotalRecovered,
          summary.NewRecovered,
          kRecoveredColor
        ),

        buildCard(
          "DEATH", 
          summary.TotalDeaths,
          summary.NewDeaths,
          kDeathColor
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          child: Text(
            "Statistics updated " + timeago.format(summary.Date),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),

      ],
    );
  }

  Widget buildCard(String title, int totalCount, int todayCount, Color color){
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: <Widget>[

            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            Expanded(
              child: Container(),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      "Total",
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),

                    Text(
                      totalCount.toString().replaceAllMapped(reg, mathFunc),
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),

                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[

                    Text(
                      "Today",
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),

                    Text(
                      todayCount.toString().replaceAllMapped(reg, mathFunc),
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),

                  ],
                ),

                
              ],
            ),
          ],
        ),
      ),
    );
  }
}