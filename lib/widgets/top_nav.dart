// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:snack_website/helpers/responsiveness.dart';
import 'package:snack_website/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
        leading: !(ResponsiveWidget.isSmallScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
            ? Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 14),
                    child: const Icon(Icons.home),
                  ),
                ],
              )
            : IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  key.currentState?.openDrawer();
                },
              ),
        elevation: 0,
        title: Row(
          children: [
            const Visibility(
              child: CustomText(
                text: "SNAX",
                color: Colors.white,
                size: 24,
                weight: FontWeight.bold,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
                onPressed: (() {
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications,
                                  color: Colors.white)),
                          Positioned(
                            top: 7,
                            right: 7,
                            child: Container(
                              width: 12,
                              height: 12,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 22,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      CustomText(
                        text: "Syncron",
                        size: 24,
                        color: Colors.white,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),

                      ),
                    ],
                  );
                }),
                icon: const Icon(Icons.settings, color: Colors.white))
          ],
        ));
