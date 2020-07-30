import "package:flutter/material.dart";

class ItemDetailScreen extends StatefulWidget {
  static const routeName = "/itemDetail";
  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  bool _like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: _like
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    iconSize: 40.0,
                    color: Color.fromRGBO(77, 100, 141, 1),
                    onPressed: () => {
                      setState(() {
                        _like = !_like;
                      })
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
