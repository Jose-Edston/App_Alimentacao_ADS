import 'package:flutter/material.dart';

class DetailsBanner extends StatefulWidget {
  @override
  State<DetailsBanner> createState() => _DetailsBannerState();
}

class _DetailsBannerState extends State<DetailsBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 2.0,
            child: Container(
              height: 150.0,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/folder.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
