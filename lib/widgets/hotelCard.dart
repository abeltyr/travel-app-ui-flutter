import 'package:flutter/material.dart';
import '../models/hotel_model.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  HotelCard({this.hotel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 240.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            bottom: 15.0,
            child: Container(
              height: 120.0,
              width: 240.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      hotel.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      hotel.address,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      ' \$${hotel.price} / night',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                      height: 180.0,
                      width: 220.0,
                      image: AssetImage(hotel.imageUrl),
                      fit: BoxFit.cover),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
