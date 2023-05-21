import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();
  double _textOpacity = 1;
  @override
  void initState() {
    _textOpacity=1;
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          if(_textOpacity > 0.1) {
            _textOpacity -= 0.0375;
          }
        });
      }else{
        setState(() {
          if(_textOpacity < 1) {
            _textOpacity += 0.0375;
          }
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          controller: _scrollController,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: _textOpacity,
                  child: const Text(
                    "Hello! I'm Abner Ugeda",
                    style: TextStyle(color: Colors.white, fontSize: 50),),
                ),
                InkWell(
                  onTap: () {
                  },
                  child: const SizedBox(
                    width: 200,
                    height: 200,
                    child: Card(
                      color: Colors.purple,
                      child: Text("Welcome to my portifólio"),
                    ),
                  )
                ),

                Container(
                  height: 300,
                ),
                Container(
                  height: 300,
                ),
                Container(
                  height: 300,
                ),
                Container(
                  height: 300,
                )
              ],
            ),

          ],
        )
      )
    );
  }
}
