import '../app_theme.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../screen/screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  int currentTabIndex = 0;

  void onTabChange() {
    setState(() {
      currentTabIndex = tabController.index;
      print(currentTabIndex);
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      onTabChange();
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.addListener(() {
      onTabChange();
    });

    tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Text button
        title: TextButton(
          child: Text(
            'Text',
            style: MyTheme.kAppTitle,
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Hidden Chats Comming soon!"),
              ),
            );
          },
        ),
        actions: [
          //Camera Icon
          IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CameraPage()));
              }),
          // more options
          PopupMenuButton(
            elevation: 40.0,
            itemBuilder: (context) => [
              // option list
              PopupMenuItem(
                child: Text("Profile"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("New Group"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("New Broadcast"),
                value: 3,
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: 4,
              ),
            ],
            //option redriction
            onSelected: (result) {
              if (result == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }
              if (result == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }
              if (result == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }
              if (result == 4) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }
            },
          )
        ],
        elevation: 0,
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: Column(
        children: [
          MyTabBar(tabController: tabController),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: TabBarView(
                controller: tabController,
                children: [
                  ChatPage(),
                  Center(child: Text('Status')),
                  Center(child: Text('Call')),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          currentTabIndex == 0
              ? Icons.message_outlined
              : currentTabIndex == 1
                  ? Icons.camera_alt
                  : Icons.call,
          color: Color(0xFF4756DF),
        ),
      ),
    );
  }
}
