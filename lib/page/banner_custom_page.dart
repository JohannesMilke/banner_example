import 'dart:math';

import 'package:banner_example/main.dart';
import 'package:banner_example/widget/card_widget.dart';
import 'package:flutter/material.dart';

class BannerCustomPage extends StatelessWidget {
  static final topLeft = AlwaysStoppedAnimation(-45 / 360);
  static final topRight = AlwaysStoppedAnimation(45 / 360);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: [
            buildCardTopLeft(),
            const SizedBox(height: 16),
            buildCardTopRight(),
            const SizedBox(height: 16),
            buildCardBottomLeft(),
            const SizedBox(height: 16),
            buildCardBottomRight(),
          ],
        ),
      );

  Widget buildCardTopLeft() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            left: -32,
            top: 20,
            child: buildBadge(turns: topLeft),
          ),
        ],
      );

  Widget buildCardTopRight() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            right: -32,
            top: 20,
            child: buildBadge(turns: topRight),
          ),
        ],
      );

  Widget buildCardBottomLeft() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            left: -32,
            bottom: 20,
            child: buildBadge(turns: topRight),
          ),
        ],
      );

  Widget buildCardBottomRight() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            right: -32,
            bottom: 20,
            child: buildBadge(turns: topLeft),
          ),
        ],
      );

  Widget buildBadge({@required Animation<double> turns}) => RotationTransition(
        turns: turns,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 36),
          color: Colors.teal,
          child: Text(
            'POPULAR',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      );
}

/*
import 'dart:math';

import 'package:banner_example/main.dart';
import 'package:banner_example/widget/card_widget.dart';
import 'package:flutter/material.dart';

class BannerCustomPage extends StatelessWidget {
  static final rotateLeft = AlwaysStoppedAnimation(-45 / 360);
  static final rotateRight = AlwaysStoppedAnimation(45 / 360);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: [
            buildCardTopLeft(),
            const SizedBox(height: 16),
            buildCardTopRight(),
            const SizedBox(height: 16),
            buildCardBottomLeft(),
            const SizedBox(height: 16),
            buildCardBottomRight(),
          ],
        ),
      );

  Widget buildCardTopLeft() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            left: -32,
            top: 20,
            child: buildBadge(turns: rotateLeft),
          ),
        ],
      );

  Widget buildCardTopRight() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            right: -32,
            top: 20,
            child: buildBadge(turns: rotateRight),
          ),
        ],
      );

  Widget buildCardBottomLeft() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            left: -32,
            bottom: 20,
            child: buildBadge(turns: rotateRight),
          ),
        ],
      );

  Widget buildCardBottomRight() => Stack(
        children: <Widget>[
          CardWidget(),
          Positioned(
            right: -32,
            bottom: 20,
            child: buildBadge(turns: rotateLeft),
          ),
        ],
      );

  Widget buildBadge({@required Animation<double> turns}) => RotationTransition(
        turns: turns,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 36),
          color: Colors.teal,
          child: Text(
            'POPULAR',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      );
}

*/
