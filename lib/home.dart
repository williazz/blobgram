import 'package:auto_route/auto_route.dart';
import 'package:blobgram/controllers/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.blue,
      routes: const [
        FeedRouter(),
        YouRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (int index) {
              if (index == tabsRouter.activeIndex) {
                final replaceAll = AutoRouter.of(context).replaceAll;
                if (index == 0) {
                  replaceAll([const FeedRoute()]);
                } else if (index == 1) {
                  replaceAll([const YouRoute()]);
                }
              } else {
                tabsRouter.setActiveIndex(index);
              }
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                label: 'Feed',
                icon: Icon(CupertinoIcons.home),
              ),
              BottomNavigationBarItem(
                label: 'You',
                icon: Icon(CupertinoIcons.person),
              ),
            ]);
      },
    );
  }
}
