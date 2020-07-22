import 'package:flutter/material.dart';
import '../models/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '🌟 ';
    }
    stars.trim();
    return Text(stars);
  }

  ActivityCard({this.activity});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
          height: 170.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 120.0,
                      child: Text(
                        activity.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '\$${activity.price}',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'per pax',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ), SizedBox(
                  height: 2.50,
                ),
                Text(
                  activity.type,
                  style: TextStyle(color: Colors.grey),
                ), SizedBox(
                  height: 5.0,
                ),
                _buildRatingStars(activity.rating),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 70.0,
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(activity.startTimes[0]),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      width: 70.0,
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(activity.startTimes[1]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 15.0,
          bottom: 15.0,
          left: 20.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 110.0,
              image: AssetImage(
                activity.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
