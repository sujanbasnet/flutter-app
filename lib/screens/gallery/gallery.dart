/**
 * @author [Sujan Basnet]
 * @email [basnetsujan95@gmail.com]
 * @create date 2019-08-08 16:08:17
 * @modify date 2019-08-08 16:08:17
 * @desc [description]
*/

import 'package:flutter/material.dart';
import 'package:whichapp/screens/image/image.dart';

class Gallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: _ImageGallery(context),
    );

  }

}

class _ImageGallery extends StatelessWidget {

  final BuildContext context;

  _ImageGallery(this.context);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: GridView.count(
        padding: const EdgeInsets.all(5.0),
        crossAxisSpacing: 5.0,
        crossAxisCount: 3,
        children: <Widget>[
          Hero(
            tag: 'image_1',
            child:GestureDetector(
              onTap: () => _navigate(context, 'image_1', AssetImage('images/bridge-footbridge-forest-2543253.jpg')),
              child:DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  image: DecorationImage(
                    image: AssetImage('images/bridge-footbridge-forest-2543253.jpg'),
                  ),
                ),
              ),
            )
          ),
          Hero(
            tag: 'image_2',
            child: GestureDetector(
              onTap: () => _navigate(context, 'image_2', AssetImage('images/bw.jpg')),
              child:DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  image: DecorationImage(
                    image: AssetImage('images/bw.jpg'),
                  ),
                ),
              )
            ),
          ),
          Hero(
            tag: 'image_3',
            child: GestureDetector(
              onTap: () => _navigate(context, 'image_3', AssetImage('images/crowd.jpg') ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  image: DecorationImage(
                    image: AssetImage('images/crowd.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }

}

void _navigate(BuildContext context, String tag, ImageProvider image) {

  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => GalleryImage(tag, image)
    )
  );

}