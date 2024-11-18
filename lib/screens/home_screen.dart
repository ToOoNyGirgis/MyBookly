import 'package:bookly/constant.dart';
import 'package:bookly/screens/book_details.dart';
import 'package:bookly/utils/assets.dart';
import 'package:bookly/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsetsDirectional.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailsScreen(),));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: AspectRatio(
                        aspectRatio: 2.6 / 4,
                        child: Image.asset(
                          AppAssets.testImage
                        ),
                      ),
                    ),
                  )

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Best Sellers',
                style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (context, index) => SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: AspectRatio(
                            aspectRatio: 2.6 / 4,
                            child: Image.asset(
                                AppAssets.testImage
                            ),
                          ),
                        ),
                         Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child:const Text(
                                  'book namebook namebook namebook namebook name',
                                  style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: Text(
                                  'book ',
                                  style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 18),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: Row(
                                  children: [
                                    Text(
                                      '19.99 \$ ',
                                      style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 18),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Spacer(),
                                    RatingWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

