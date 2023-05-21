import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/my_colors.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.scaffoldBackgroung,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Image(
                    image: const AssetImage("assets/images/logo.png"),
                    height: size.height / 13,
                    // width: size.width / 3.8,
                  ),
                  const Icon(Icons.search),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: size.width / 1.16,
                    height: size.height / 4.3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      color: SolidColors.primaryColor,
                      image: DecorationImage(
                          image: AssetImage("assets/images/programming.png"),
                          fit: BoxFit.fill),
                    ),
                    foregroundDecoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      gradient: LinearGradient(
                          colors: GradiantColors.homePosterGradiantColor,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "ملیکا عزیزی ، یک روز پیش",
                            // ignore: deprecated_member_use
                            style: textTheme.subtitle1,
                          ),
                          Text(
                            "Like 253",
                            // ignore: deprecated_member_use
                            style: textTheme.subtitle1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "دوازده قدم برنامه نویسی که زبان پایتون برای...",
                        // ignore: deprecated_member_use
                        style: textTheme.headline1,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
