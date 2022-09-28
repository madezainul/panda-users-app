import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:panda_users_app/global/global.dart';
import 'package:panda_users_app/widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    "slider/0.jpg",
    "slider/1.jpg",
    "slider/2.jpg",
    "slider/3.jpg",
    "slider/4.jpg",
    "slider/5.jpg",
    "slider/6.jpg",
    "slider/7.jpg",
    "slider/8.jpg",
    "slider/9.jpg",
    "slider/10.jpg",
    "slider/11.jpg",
    "slider/12.jpg",
    "slider/13.jpg",
    "slider/14.jpg",
    "slider/15.jpg",
    "slider/16.jpg",
    "slider/17.jpg",
    "slider/18.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.amber,
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        title: Text(
          sharedPreferences!.getString("name")!,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      drawer: const MyDrawer(),
      body: CustomScrollView(
          // slivers: [
          //   SliverToBoxAdapter(
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Container(
          //         height: MediaQuery.of(context).size.height * .3,
          //         width: MediaQuery.of(context).size.width,
          //         child: CarouselSlider(
          //           options: CarouselOptions(
          //             height: MediaQuery.of(context).size.height * .3,
          //             aspectRatio: 16 / 9,
          //             viewportFraction: 0.8,
          //             initialPage: 0,
          //             enableInfiniteScroll: true,
          //             reverse: false,
          //             autoPlay: true,
          //             autoPlayInterval: const Duration(seconds: 3),
          //             autoPlayAnimationDuration:
          //                 const Duration(milliseconds: 800),
          //             autoPlayCurve: Curves.fastOutSlowIn,
          //             enlargeCenterPage: true,
          //             scrollDirection: Axis.horizontal,
          //           ),
          //           items: items.map((index) {
          //             return Builder(builder: (BuildContext context) {
          //               return Container(
          //                 width: MediaQuery.of(context).size.width,
          //                 margin: const EdgeInsets.symmetric(horizontal: 1.0),
          //                 decoration: const BoxDecoration(
          //                   color: Colors.black,
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(4.0),
          //                   child: Image.asset(
          //                     index,
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               );
          //             });
          //           }).toList(),
          //         ),
          //       ),
          //     ),
          //   ),
          //   StreamBuilder<QuerySnapshot>(
          //     stream:
          //         FirebaseFirestore.instance.collection("sellers").snapshots(),
          //     builder: (context, snapshot) {
          //       return snapshot.hasData ? SliverToBoxAdapter(child: Center(
          //         child: CircularProgressIndicator(),
          //       ),) : StaggeredGrid.countBuilder
          //     },
          //   ),
          // ],
          ),
    );
  }
}
