import 'package:flutter/material.dart';
import 'package:hydrotime/widgets/splashs_screen/splash_1.dart';
import 'package:hydrotime/widgets/splashs_screen/splash_2.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => _Splash();
}

class _Splash extends State<Splash> with TickerProviderStateMixin {
  late PageController _splashViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _splashViewController = PageController();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _splashViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,

        children: <Widget>[
          PageView(
            /// [PageView.scrollDirection] defaults to [Axis.horizontal].
            /// Use [Axis.vertical] to scroll vertically.
            controller: _splashViewController,
            onPageChanged: _handlePageViewChanged,
            children: <Widget>[
              Center(child: Splash1()),
              Center(child: Splash2()),
              Center(child: Text('3', style: TextStyle(color: Colors.white))),
              Center(child: Text('4', style: TextStyle(color: Colors.white))),
              Center(child: Text('5', style: TextStyle(color: Colors.white))),
              Center(child: Text('6', style: TextStyle(color: Colors.white))),
              Center(child: Text('7', style: TextStyle(color: Colors.white))),
              Center(child: Text('8', style: TextStyle(color: Colors.white))),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //
          //   children: List.generate(6, (index) {
          //     return Container(
          //       margin: EdgeInsets.symmetric(horizontal: 4),
          //       width: index == 0 ? 10 : 8,
          //       height: index == 0 ? 10 : 8,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: index == 0 ? Colors.blue : Colors.white38,
          //       ),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _splashViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}