import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_f/interface/designer_container.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor: Color(0xff9932CC),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Action for the back button
              },
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Designer',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Category',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'Attention',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("My Account"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView.separated(
          itemCount: 5, // Total number of items
          separatorBuilder: (context, index) => SizedBox(height: 10), // Space between items
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return DesignerContainer(
                  Colors.purpleAccent,
                  'imgs/download.jpeg',
                  'David Borg',
                  'Title: Flying Wings',
                  '1',
                  '2342',
                  '4765',
                  '135',
                );
              case 1:
                return DesignerContainer(
                  Colors.orangeAccent,
                  'imgs/boy2.jpeg',
                  'Lucy',
                  'Title: Growing up trouble',
                  '2',
                  '5655',
                  '4656',
                  '130',
                );
              case 2:
                return DesignerContainer(
                  Colors.redAccent,
                  'imgs/boy3.jpeg',
                  'Jerry Cool West',
                  'Title: Sculptur diary',
                  '3',
                  '3655',
                  '2656',
                  '120',
                );
              case 3:
                return DesignerContainer(
                  Colors.lightBlueAccent,
                  'imgs/boy4.jpeg',
                  'Bold',
                  'Title: Illustration of a little girl',
                  '4',
                  '2655',
                  '1656',
                  '100',
                );
              case 4:
                return DesignerContainer(
                  Colors.greenAccent,
                  'imgs/boy5.jpeg',
                  'Bold',
                  'Title: Illustration of a little girl',
                  '5',
                  '655',
                  '656',
                  '80',
                );
              default:
                return SizedBox.shrink(); // Default empty widget
            }
          },
        ),    )
    );
  }
}
