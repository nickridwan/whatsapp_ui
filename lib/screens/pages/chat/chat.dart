import 'package:flutter/material.dart';
import 'package:whatsapp_ui/services/user/user.dart';
import 'package:whatsapp_ui/theme.dart';

class ChatMenuApp extends StatefulWidget {
  const ChatMenuApp({super.key});

  @override
  State<ChatMenuApp> createState() => _ChatMenuAppState();
}

class _ChatMenuAppState extends State<ChatMenuApp> {
  bool isRead = false;
  int hour = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
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
                                e.caption,
                                style: Style.greyTextStyle.copyWith(
                                    fontSize: 15, fontWeight: regular),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${hour++}.00",
                              style: !isRead
                                  ? Style.greyTextStyle
                                  : Style.greenTextStyle,
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.kGreenColor,
                              ),
                              child: const Center(
                                child: Text("1"),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.kGreenColor,
        child: const Center(
          child: Icon(
            Icons.message_rounded,
          ),
        ),
      ),
    );
  }
}
