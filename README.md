# Blobgram

A product demo of client side routing, including nested routing, deep linking, bottom navigation, and multiple navigators. 

# Feature List

* Two tabs: Feed and You

* Changing tabs via BottomNavigationBar switches between FeedRouter and YouRouter

* Both nested routers maintain their navigation stacks in the background

* Tapping the active BottomNavigationBarItem clears that entire nested navigation stack

* Not found URL all navigate to an NotFoundPage, which can be popped or redirect you home

# Notes 

* Instead of using Flutter's declarative navigator, I used an open source navigation package of it was way, way easier to do so. 

* I chose AutoRoute over GetX because of its powerful and simple nested routing features. 

