import 'package:flutter/material.dart';
import 'package:whatsapp_ui/services/user/user.dart';
import 'package:whatsapp_ui/theme.dart';

class CallingMenuApp extends StatefulWidget {
  const CallingMenuApp({super.key});

  @override
  State<CallingMenuApp> createState() => _CallingMenuAppState();
}

class _CallingMenuAppState extends State<CallingMenuApp> {
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.arrow_outward_rounded,
                                    color: AppColor.kGreenColor,
                                    size: 24.0,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "Hari ini 20.00",
                                    style: Style.greyTextStyle.copyWith(
                                        fontSize: 15, fontWeight: regular),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.call,
                          size: 24.0,
                          color: AppColor.kGreenColor,
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
            Icons.add_call,
          ),
        ),
      ),
    );
  }
}
