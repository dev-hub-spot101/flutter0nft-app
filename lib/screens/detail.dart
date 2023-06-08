import 'package:flutter/material.dart';
import 'package:nftapp/widgets/TopCreators.dart';

class NFTDetail extends StatelessWidget {

  final String title;
  final int price;
  final String author;
  final String authorImg;
  final String nftImg;
  final Size size;
  NFTDetail({super.key, required this.title, required this.price, required this.author, required this.authorImg, required this.nftImg, required this.size});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;


    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff211515),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:5, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ben Jone", style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up_alt_outlined, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                 
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              

              Center(
                child: Container(
                  height: size.height - 170,
                  width: size.width,
                  decoration: BoxDecoration(
                    // color: const Color(0xff06090d)
                  ),
                  child: ListView(
                    children: [
                      Text("Ending in:", textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: size.width * 0.04, fontWeight: FontWeight.bold),),
                      Text("01:28:04", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: size.width * 0.044, fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: size.width,
                        height: size.height * 0.35,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(nftImg, fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(title, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.055,
                            fontWeight: FontWeight.bold
                          ), 
                        )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.01, top: 10),
                            child: Text("$price USD", textAlign: TextAlign.center, style: TextStyle( color: Colors.white, fontSize: size.width * 0.04, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer.", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: size.width * 0.04, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: TopCreators(author, authorImg, "1.2M", size)
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.005),
                        child: InkWell(
                          onTap: (){
                            print("Place a bid");
                          },
                          child: Center(
                            child: Container(
                              height: size.height * 0.08,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                color: Color(0xff3b22a1),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                              ),
                              child: Align(
                                child: Text("Place a Bid", textAlign: TextAlign.center,overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: size.width * 0.05, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                 
                )
              ),
              
            ],
          ),
        )
      )
    );
  }
}