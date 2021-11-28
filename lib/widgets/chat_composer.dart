import 'package:flutter/material.dart';
import '../app_theme.dart';

// ignore: camel_case_types
class buildChatComposer extends StatelessWidget {
  const buildChatComposer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey[500],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type your message ...',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey[500],
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (builder) => bottomsheet(context));
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          CircleAvatar(
            backgroundColor: MyTheme.kPrimaryColor,
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

Widget bottomsheet(BuildContext context) {
  return Container(
      height: 278.0,
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
