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
    final destination = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => {
                      setState(() {
                        _like = !_like;
                      })
                    },
                    child: Icon(
                      _like ? Icons.favorite : Icons.favorite_border,
                      color: Color.fromRGBO(77, 100, 141, 1),
                      size: 40.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
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
