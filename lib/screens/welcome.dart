import 'package:flutter/material.dart';
import 'package:nftapp/screens/home.dart';
import 'package:nftapp/widgets/image_list_view.dart';
import 'package:slider_button/slider_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -0,
            left: -170,
            child: Row(
              children: [
                  ImageListWidget(index: 0),
                  ImageListWidget(index: 1),
                  ImageListWidget(index: 2),
                  ImageListWidget(index: 3),
                  ImageListWidget(index: 4)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white24,
                    Colors.white.withOpacity(0.5),
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Exclusive \nDigital \nCollectibles", style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("NFT has a value that can be called \nan asset that has a unique code.", style: TextStyle(color: Colors.black87, fontSize: 20),),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: SliderButton(
                        action: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home() ));
                        },
                        label: const Text("Get Started", style: TextStyle(color: Color(0xff4a4a4a), fontWeight:FontWeight.w500, fontSize: 24)),
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                        width: MediaQuery.of(context).size.width,
                        backgroundColor: Colors.transparent,
                        highlightedColor: Colors.black,
                        baseColor: Colors.black38,
                      ),
                      
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}