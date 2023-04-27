import 'package:flutter/material.dart';
import 'package:safe_encrypt/screens/features/gallery/image_screen.dart';

import '../../../../constants/colors.dart';
import 'my_nots.dart';

class NotesMain extends StatefulWidget {
  final String path;
  final String title;
  final Function getbool;
  final String pin;
  const NotesMain(
      {Key? key,
      required this.pin,
      required this.path,
      required this.title,
      required this.getbool})
      : super(key: key);

  @override
  State<NotesMain> createState() => _NotesMainState();
}

class _NotesMainState extends State<NotesMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kdarkblue,
          title: const Text('My spacial notes'),
          bottom: TabBar(tabs: [
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                'Gallery',
                style: TextStyle(color: kbg, fontSize: 19),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                'Notes',
                style: TextStyle(color: kbg, fontSize: 19),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
              child: ImageScreen(
            pin: widget.pin,
            getbool: widget.getbool,
            title: widget.title,
            path: widget.path,
          )),
          // Center(
          //   child: MyNots(
          //     path: widget.path,
          //     pin: widget.pin,
          //     getbool: widget.getbool,
          //     title: widget.title,
          //     imgpath: '',
          //   ),
          // ),
        ]),
      ),
    );
  }
}
