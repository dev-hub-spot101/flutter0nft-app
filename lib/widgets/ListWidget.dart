import 'package:flutter/material.dart';
import 'package:nftapp/screens/detail.dart';

Padding ListWidget(
 String title,
 int price,
 String author,
 String authorImg,
 String nftImg,
 Size size,
 BuildContext context
){
  double width = size.width * 0.7;
  double height = size.height * 0.2;

  return Padding(
    padding: EdgeInsets.only(left:size.width * 0.055),
    child: SizedBox(
      width: width,
      height: height,
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
            child: InkWell(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(
                     builder: (context) => NFTDetail( 
                      title: title, price:price, author:author, authorImg:authorImg, nftImg:nftImg, size:size
                      )
                  )
                );
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      nftImg,
                      fit: BoxFit.fill,
                      width: width,
                      height: height,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                            height: height,
                            width: width,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.05),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * 0.1,
                        width:  width * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.8),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Align(
                          child: Text("01:28:06", style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}