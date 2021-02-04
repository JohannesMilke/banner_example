import 'package:banner_example/main.dart';
import 'package:banner_example/widget/card_widget.dart';
import 'package:flutter/material.dart';

class BannerBasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: [
            buildBanner(location: BannerLocation.topStart),
            const SizedBox(height: 16),
            buildBanner(location: BannerLocation.topEnd),
            const SizedBox(height: 16),
            buildBanner(location: BannerLocation.bottomStart),
            const SizedBox(height: 16),
            buildBanner(location: BannerLocation.bottomEnd),
          ],
        ),
      );

  Widget buildBanner({
    @required BannerLocation location,
  }) =>
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Banner(
          message: 'TOP',
          location: location,
          color: Colors.redAccent,
          textStyle: TextStyle(fontWeight: FontWeight.bold),
          child: CardWidget(),
        ),
      );
}
