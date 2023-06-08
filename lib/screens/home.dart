import 'package:flutter/material.dart';
import 'package:nftapp/widgets/ListWidget.dart';
import 'package:nftapp/widgets/TopCreators.dart';
import 'package:nftapp/widgets/videoBanner.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/2.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Ben Jone", style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("1.2k News", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey
                    ),
                    child: const Icon(
                      Icons.grid_view_rounded,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey, width: 1)
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Search NFT or Artist name...",
                  hintStyle: const TextStyle(color: Colors.white),
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: Icon(Icons.search, color: Colors.white)
                ),
              ),
               const SizedBox(
                height: 30,
              ),

              VideoBanner(size),

              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.025,
                  horizontal: size.width * 0.05
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Bids", style: TextStyle(color: Colors.white, fontSize: size.width * 0.049, fontWeight: FontWeight.bold),),
                    Text("See all", style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: size.width * 0.045, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),


              SizedBox(
                width: size.width,
                height: size.height * 0.21,
                //here you can manage dynamic array or static
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, i){
                      if(i == 0){
                        return ListWidget(
                            'BeerOGO',
                            3400,
                            "Martin will",
                            'assets/images/6.png',
                            'assets/images/1.png',
                            size,
                            context
                        );
                      }else  if(i == 1){
                        return ListWidget(
                            'Devhubspot',
                            5000,
                            "Devhub spot",
                            'assets/images/2.png',
                            'assets/images/4.png',
                            size,
                            context
                        );
                      }else  if(i == 2){
                        return ListWidget(
                            'Nature',
                            2500,
                            "Java Martin",
                            'assets/images/5.png',
                            'assets/images/3.png',
                            size,
                            context
                        );
                      }else{
                        return ListWidget(
                            'Flutter',
                            4000,
                            "Google",
                            'assets/images/6.png',
                            'assets/images/5.png',
                            size,
                            context
                        );
                      }
                  },
                ),
              ),

               Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.025,
                  horizontal: size.width * 0.05
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Creators", style: TextStyle(color: Colors.white, fontSize: size.width * 0.049, fontWeight: FontWeight.bold),),
                    Text("See all", style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: size.width * 0.045, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              TopCreators(
                'Dev Hubspot',
                'assets/images/4.png',
                "1.2M",
                size
              )
            ],
          ),
        )
      )
    );
  }
}