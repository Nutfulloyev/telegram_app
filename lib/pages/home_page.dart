import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/class/drower_class.dart';
import 'package:untitled2/class/scroll_class.dart';
import 'package:untitled2/pages/all_page.dart';

import '../class/container_class.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
CustomDrawer customDrawer=CustomDrawer();
ScrollTabb scrollTabb=ScrollTabb();
Containers containers=Containers();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                bottom: const TabBar(
                  tabAlignment: TabAlignment.start,
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  isScrollable: true, // TabBarni scrol bo'ladigan qilish
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      text: "Barchasi",
                    ),
                    Tab(
                      text: "O'qilmaganlar",
                    ),
                    Tab(
                      text: "Shaxsiy",
                    ),
                    Tab(
                      text: "Barchasi",
                    ),
                    Tab(
                      text: "O'qilmaganlar",
                    ),
                    Tab(
                      text: "Shaxsiy",
                    ),
                  ],
                ),
                backgroundColor: Colors.blue,
                expandedHeight: 160.0,
                floating: false,
                pinned: true,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double top = constraints.biggest.height;
                    return FlexibleSpaceBar(
                      centerTitle: true,
                      title: Container(
                        width: top / 0.8,
                        height: 80,
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: scrollTabb
                          ),
                        ),
                      ),
                      background: const Padding(
                        padding: EdgeInsets.only(top: 60, left: 80),
                        child: Text(
                          "Telegram",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const AllPage(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
        drawer: customDrawer,
      ),
    );
  }
}
