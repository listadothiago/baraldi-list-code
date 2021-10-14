import 'package:baraldilist/components/place_tile.dart';
import 'package:baraldilist/models/place.dart';
import 'package:baraldilist/provider/places.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:location/location.dart';

Location location = new Location();

class PlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Places places = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/barlogo.png',
              fit: BoxFit.contain,
              height: 64,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text('baraldilist'),
            )
          ],
        ),
        //title: Text(widget.title),
/*
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {},
          ),
        ],*/
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          places.put(Place(
            placename: 'Test Place',
            placeImgUrl: 'https://pixabay.com/images/id-336505/',
            tagline: 'This is just a test!',
          ));
        },
        label: const Text("share a place"),
        icon: const Icon(Icons.add_location_alt_sharp),
        backgroundColor: Colors.amber,
        splashColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: places.count,
        itemBuilder: (ctx, i) => PlaceTile(places.byIndex(i)),
      ),
    );
  }
}
