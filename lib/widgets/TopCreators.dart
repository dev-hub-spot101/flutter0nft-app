import 'package:flutter/material.dart';


Center TopCreators(
  String author,
  String authorImg,
  String followers,
  Size size
){
  double width = size.width * 0.8;
  double height = size.height * 0.13;
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.04 , bottom: height * 0.1),
                  child: InkWell(
                    onTap: (){
                      print("Follow");
                    },
                    child: Container(
                      height: height * 0.25,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Align(
                        child: Text("Follow", style: TextStyle(color: Colors.black, fontSize: width * 0.04, fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(authorImg),
                    radius: height * 0.3,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: width * 0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.8,
                      child: Text(author, maxLines: 1, textAlign: TextAlign.left, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white,
                      fontSize: size.width * 0.05, fontWeight: FontWeight.bold),),
                    ),
                    Text("$followers Followers", textAlign: TextAlign.right, style: TextStyle(color: Colors.white, fontSize: size.width*0.035, fontWeight: FontWeight.bold),)
                  ]
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}