import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  String? path;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    getApplicationDocumentsDirectory().then((value) {
      path = "${value.path}/harsh.png";
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            if (path != null) Image.file(File(path ?? "")),
          ],
        ),
      ),
    );
  }
}
