import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/pages/calling/call.dart';
import 'package:whatsapp_ui/screens/pages/chat/chat.dart';
import 'package:whatsapp_ui/screens/pages/story/story.dart';
import '../../main.dart';
import '../../theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;

  List tabMenuView = ["Chat", "Status", "Panggilan"];

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
              icon: Icon(
                CupertinoIcons.camera,
                size: 24.0,
                color: AppColor.kWhiteGreyColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.search,
                size: 24.0,
                color: AppColor.kWhiteGreyColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 24.0,
                color: AppColor.kWhiteGreyColor,
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            padding: const EdgeInsets.symmetric(vertical: 10),
            dragStartBehavior: DragStartBehavior.start,
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _tabController,
            indicatorColor: AppColor.kGreenColor,
            indicatorWeight: 2.5,
            labelPadding: const EdgeInsets.all(10),
            tabs: tabMenuView
                .map(
                  (e) => Text(
                    e,
                    style: Style.greyTextStyle.copyWith(fontSize: 15),
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: const BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: const [
            ChatMenuApp(),
            StoryMenuApp(),
            CallingMenuApp(),
          ],
        ),
      ),
    );
  }
}
