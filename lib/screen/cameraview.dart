import 'dart:io';
import 'package:flutter/material.dart';
import 'package:whats_app_clone/app_theme.dart';

class CameraViewPage extends StatelessWidget {
  const CameraViewPage({Key? key, required this.path}) : super(key: key);

  final String path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.kAccentColor,
        actions: [
          //first button
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.crop_rotate,
                size: 27.0,
              )),
          //second button
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.emoji_emotions_outlined,
                size: 27.0,
              )),
          // third button
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.title,
                size: 27.0,
              )),
          //forth button
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: 27.0,
              )),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150.0,
              child: Image.file(
                File(path),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: MyTheme.kPrimaryColor,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                  maxLines: 6,
                  minLines: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add Caption.....",
                      prefixIcon: Icon(
                        Icons.add_photo_alternate,
                        color: Colors.white,
                        size: 27,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      suffixIcon: CircleAvatar(
                        radius: 27.0,
                        backgroundColor: MyTheme.kPrimaryColor,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 27,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
