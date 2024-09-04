import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignerContainer extends StatelessWidget {
  final Color color;
  final String img;
  final String name;
  final String title;
  final String rankNo;
  final String popularity;
  final String love;
  final String followed;

  DesignerContainer(
      this.color,
      this.img,
      this.name,
      this.title,
      this.rankNo,
      this.popularity,
      this.love,
      this.followed,
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 320,),
                Image.asset('imgs/menu.png', height: 30, width: 30), // Corrected path with file extension
              ],
            ),
            Row(

              children: [
                SizedBox(width: 60,),
                Column(
                  children: [

                    CircleAvatar(
                      radius: 50.0,

                      child: SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: ClipRRect( // Rounded image inside avatar
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(img, fit: BoxFit.cover,height: 100,
                              width: 100,),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(

              children: [
                SizedBox(width: 320,),
                Column(
                  children: [
                    Text(
                      rankNo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Ranking",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spread columns evenly
              children: [
                Column(
                  children: [
                    Text(
                      popularity,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Popularity",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      love,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Like",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      followed,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
