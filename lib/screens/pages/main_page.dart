import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import '../../theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;
  Options? selectedMenu;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0);
  }

  PopupMenuItem buildPopupMenuItem(String title, int position) {
    return PopupMenuItem(
      value: position,
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: Style.greyTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.camera,
                size: 24.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.search,
                size: 24.0,
              ),
            ),
            IconButton(
              onPressed: () {
                PopupMenuButton<Options>(
                  initialValue: selectedMenu,
                  onSelected: (Options value) {
                    setState(() {
                      selectedMenu = value;
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<Options>>[
                      const PopupMenuItem<Options>(
                        value: Options.newGrup,
                        child: Text("Option 1"),
                      ),
                      const PopupMenuItem<Options>(
                        value: Options.newStream,
                        child: Text("Option 2"),
                      ),
                      const PopupMenuItem<Options>(
                        value: Options.deviceLinked,
                        child: Text("Option 3"),
                      ),
                      const PopupMenuItem<Options>(
                        value: Options.deviceConnect,
                        child: Text("Option 4"),
                      ),
                      const PopupMenuItem<Options>(
                        value: Options.setting,
                        child: Text("Option 5"),
                      ),
                    ];
                  },
                );
              },
              icon: const Icon(
                Icons.more_vert,
                size: 24.0,
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _tabController,
            indicatorColor: AppColor.kGreenColor,
            indicatorWeight: 4.0,
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Text(
                "Chat",
                style: Style.greyTextStyle.copyWith(fontSize: 15),
              ),
              Text(
                "Status",
                style: Style.greyTextStyle.copyWith(fontSize: 15),
              ),
              Text(
                "Panggilan",
                style: Style.greyTextStyle.copyWith(fontSize: 15),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: const BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: [
            Container(
              height: double.infinity,
              color: AppColor.kDarkBackgroundPrimaryColor,
              child: Center(
                child: Text(
                  "Chat",
                  style: Style.whiteGreyTextStyle.copyWith(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: double.infinity,
              color: AppColor.kDarkBackgroundPrimaryColor,
              child: Center(
                child: Text(
                  "Status",
                  style: Style.whiteGreyTextStyle.copyWith(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: double.infinity,
              color: AppColor.kDarkBackgroundPrimaryColor,
              child: Center(
                child: Text(
                  "Panggilan",
                  style: Style.whiteGreyTextStyle.copyWith(fontSize: 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
