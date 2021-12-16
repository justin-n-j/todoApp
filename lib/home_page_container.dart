import 'package:flutter/material.dart';
import 'package:task_justin/home_screen.dart';
import 'package:task_justin/list_screen.dart';

class HomePageContainer extends StatefulWidget {
  const HomePageContainer({Key? key}) : super(key: key);

  @override
  _HomePageContainerState createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {
  late int _currentIndex;
  final List<Widget> _children = [];

  _onTabTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
    _children.add(const HomeScreen());
    _children.add(const ListScreen());
  }

  onTapped(value) {
    setState(
      () {
        _currentIndex = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          onTap: _onTabTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_outlined), label: "Product"),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
            ),
            Positioned(
              top: -160,
              right: -100,
              child: Container(
                height: MediaQuery.of(context).size.width * .7,
                width: MediaQuery.of(context).size.width * .7,
                decoration: const BoxDecoration(
                  color: Color(0XFF181919),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            IndexedStack(
              index: _currentIndex,
              children: _children,
            ),
          ],
        ),
      ),
    );
  }
}
