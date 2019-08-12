/**
 * @author [Sujan Basnet]
 * @email [basnetsujan95@gmail.com]
 * @create date 2019-08-09 11:15:35
 * @modify date 2019-08-09 11:15:35
 * @desc [description]
*/

import 'package:flutter/material.dart';

class GalleryImage extends StatelessWidget {

  final String tag;
  final ImageProvider image;

  GalleryImage(this.tag, this.image);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        Container(
          // padding: EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.white, width:0.0, style:BorderStyle.none),
                  color: Colors.white,
                ),
                child: Hero(
                  tag: tag,
                  child: Image(
                    image: image,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.white, width:0.0, style:BorderStyle.none),
                  color: Colors.white,
                ),
                width: double.infinity,
                padding: EdgeInsets.all(10.0),                 
                child:Text(
                  "Beautiful Nepal",
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),                 
                  child:Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla malesuada varius viverra. Proin malesuada id nisl a ultricies.",
                    style: Theme.of(context).textTheme.body1,
                  ),
                )
              ),
            ],
          )
        ),
        Scaffold(
          backgroundColor: Colors.white30,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ),
      ],
    );

  }

}