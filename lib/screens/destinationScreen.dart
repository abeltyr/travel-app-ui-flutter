import "package:flutter/material.dart";
import '../widgets/destinationImage.dart';
import '../widgets/activityCard.dart';
import '../models/destination_model.dart';
import '../models/activity_model.dart';

class DestinationScreen extends StatefulWidget {
  static const routeName = "/destinationScreen";
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    final Destination destination = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Column(
        children: <Widget>[
          DestinationImage(destination: destination),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity = destination.activities[index];
                return ActivityCard(activity: activity);
              },
            ),
          )
        ],
      ),
    );
  }
}
