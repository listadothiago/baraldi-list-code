import 'package:flutter/material.dart';
import 'package:baraldilist/models/place.dart';

class PlaceTile extends StatelessWidget {
  final Place place;

  PlaceTile(this.place);

  @override
  Widget build(BuildContext context) {
    final placeImg = place.placeImgUrl == null || place.placeImgUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.photo_album_rounded))
        : CircleAvatar(backgroundImage: NetworkImage(place.placeImgUrl));
    return ListTile(
        leading: placeImg,
        title: Text(place.placename),
        subtitle: Text(place.tagline),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
