import 'package:flutter/material.dart';
import 'package:whatsapp_ui/services/user/user.dart';
import 'package:whatsapp_ui/theme.dart';

class StoryMenuApp extends StatefulWidget {
  const StoryMenuApp({super.key});

  @override
  State<StoryMenuApp> createState() => _StoryMenuAppState();
}

class _StoryMenuAppState extends State<StoryMenuApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/564x/9b/ef/91/9bef91892a86afb3700f1a834ff871ff.jpg'),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status saya',
                            style: Style.whiteTextStyle
                                .copyWith(fontSize: 18, fontWeight: regular),
                          ),
                          Text(
                            "baru saja",
                            style: Style.greyTextStyle
                                .copyWith(fontSize: 15, fontWeight: regular),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 28.0,
                      color: AppColor.kGreyColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'Pembaruan terkini',
                      style: Style.greyTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: user
                    .map(
                      (e) => Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(e.image!),
                              radius: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.name,
                                    style: Style.whiteTextStyle.copyWith(
                                        fontSize: 18, fontWeight: regular),
                                  ),
                                  Text(
                                    "kemarin 20.00",
                                    style: Style.greyTextStyle.copyWith(
                                        fontSize: 15, fontWeight: regular),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.kGreenColor,
        child: const Center(
          child: Icon(
            Icons.add_call,
          ),
        ),
      ),
    );
  }
}
