
import 'package:bookly/features/home/presentaion/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

import '../core/utils/assets.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image(
                height: MediaQuery.of(context).size.height*0.35,
                image: const AssetImage(
                  AppAssets.testImage,
                ),
              ),
            ),
            const Text('book name',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text('descreption',style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(0.8)),),
            const RatingWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.4,
                  decoration:  const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(18),bottomLeft: Radius.circular(18))
                  ),
                  child: Center(
                    child: Text( '19.99 \$ ',
                      style: TextStyle(color: Colors.black.withOpacity(0.9),fontWeight: FontWeight.bold,fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.4,
                  decoration:  const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(18),bottomRight: Radius.circular(18))
                  ),
                  child: Center(
                    child: Text( 'Free Review',
                      style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold,fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            const Spacer(),
            const Row(
              children: [
                Text('You can also like',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * .25,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BookDetailsScreen(),));
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

          ],
        ),
      ),
    );
  }
}
