import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nftapp/widgets/image_intro_widget.dart';

class ImageListWidget extends StatefulWidget {
  final int index;
  const ImageListWidget({super.key, required this.index});

  @override
  State<ImageListWidget> createState() => _ImageListWidgetState();
}

class _ImageListWidgetState extends State<ImageListWidget> {

  final scrollController = ScrollController();

  final List Images = [
    ['assets/images/1.png'],
    ['assets/images/3.png'],
    ['assets/images/5.png'],
    ['assets/images/4.png'],
    ['assets/images/6.png'],
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      if(!scrollController.position.atEdge){
        autoScroll();
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
         autoScroll();
      });
    });
  }

  void autoScroll(){
    final currentScrollPosition = scrollController.offset;
    final scrollEndPosition = scrollController.position.maxScrollExtent;

    scheduleMicrotask(
      (){
        scrollController.animateTo(
          currentScrollPosition == scrollEndPosition ? 0: scrollEndPosition,
          duration: const Duration(seconds:10),
          curve: Curves.linear
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.98 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .60,
        height: MediaQuery.of(context).size.height * .60,
        child: ListView.builder(
          controller: scrollController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return ImageIntroWidget(image: Images[index][0]);
          }
          
          ),
      ),
    );
  }
}