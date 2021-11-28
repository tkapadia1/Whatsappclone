import 'package:flutter/material.dart';
import 'package:whats_app_clone/app_theme.dart';
import 'package:whats_app_clone/screen/home_page.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 80.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 120.0,
                            left: 105.0,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (builder) => avatarsheet(context));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                ),
                SizedBox(
                  height: 25,
                ),
                //TextFields
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Status',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Country',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Mobile no.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  ),
                ),
                //Text Button
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4756DF),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      elevation: 0.3,
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: MyTheme.kAccentColor,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget avatarsheet(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  SizedBox(
                    width: 40.0,
                  ),
                  iconCreation(Icons.picture_as_pdf, Colors.indigo, "pdf"),
                  SizedBox(
                    width: 40.0,
                  ),
                  iconCreation(Icons.insert_photo, Colors.indigo, "Gallery"),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.camera_alt_outlined, Colors.indigo, "Document"),
                  SizedBox(
                    width: 40.0,
                  ),
                  iconCreation(Icons.picture_as_pdf, Colors.indigo, "pdf"),
                  SizedBox(
                    width: 40.0,
                  ),
                  iconCreation(Icons.insert_photo, Colors.indigo, "Gallery"),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.camera_alt_outlined, Colors.indigo, "Document"),
                  SizedBox(
                    width: 40.0,
                  ),
                  iconCreation(Icons.picture_as_pdf, Colors.indigo, "pdf"),
                  SizedBox(
                    width: 40.0,
                  ),
                  iconCreation(Icons.insert_photo, Colors.indigo, "Gallery"),
                ],
              ),
            ],
          ),
        ),
      ));
}

iconCreation(IconData icons, Color color, String text) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundColor: color,
          child: Icon(
            icons,
            size: 29.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w100),
        )
      ],
    ),
  );
}
