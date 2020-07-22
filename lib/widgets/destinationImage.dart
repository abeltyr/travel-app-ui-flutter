import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/destination_model.dart';

class DestinationImage extends StatelessWidget {
  final Destination destination;

  DestinationImage({this.destination});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Hero(
            tag: '${destination.imageUrl}-${destination.city}',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(
                image: AssetImage(
                  destination.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 40.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.black,
                onPressed: () => {Navigator.pop(context)},
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: () => {Navigator.pop(context)},
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.sortAmountDown),
                    iconSize: 25.0,
                    color: Colors.black,
                    onPressed: () => {Navigator.pop(context)},
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 20.0,
          bottom: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                destination.city,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.locationArrow,
                    size: 10.0,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    destination.country,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: Icon(
            Icons.location_on,
            size: 25.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
