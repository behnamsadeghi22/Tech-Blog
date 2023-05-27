import 'package:flutter/material.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/models/data_models.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/my_strings.dart';
import 'package:techblog/persian_numbers.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    double bodyMargin = size.width / 20;
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.scaffoldBackgroung,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.menu,
                    color: SolidColors.primaryColor,
                  ),
                  Image(
                    image: const AssetImage("assets/images/logo.png"),
                    height: size.height / 13,
                  ),
                  const Icon(
                    Icons.search,
                    color: SolidColors.primaryColor,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width / 45, size.height / 80, size.width / 45, 0),
              ),
              // Main Poster
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: size.width / 1.16,
                      height: size.height / 4.3,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        image: DecorationImage(
                            image: homePagePosterMap["imageAsset"],
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: size.width / 1.16,
                      height: size.height / 4.3,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                        gradient: LinearGradient(
                          colors: GradiantColors.homePosterGradiantColor,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height / 5.75,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              homePagePosterMap["writer"] +
                                  " ، " +
                                  homePagePosterMap["date"],
                              // ignore: deprecated_member_use
                              style: textTheme.subtitle1,
                            ),
                            Row(
                              children: [
                                Text(
                                  getPersianNumbers(homePagePosterMap["view"]),
                                  // ignore: deprecated_member_use
                                  style: textTheme.subtitle1,
                                ),
                                SizedBox(
                                  width: size.width / 180,
                                ),
                                const Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: SolidColors.posterSubTitle,
                                  size: 16,
                                )
                              ],
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
                  ),
                ],
              ),
              // Tag List
              SizedBox(
                height: size.height / 15,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tagList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        size.height / 50,
                        index == 0 ? bodyMargin : 15,
                        0,
                      ),
                      child: Container(
                        height: size.height / 15,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(
                            colors: GradiantColors.tags,
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const ImageIcon(
                                  AssetImage("assets/icons/hashtag_icon.png"),
                                  color: Colors.white,
                                  size: 12,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  tagList[index].title,
                                  // ignore: deprecated_member_use
                                  style: textTheme.headline2,
                                ),
                              ],
                            )),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              // Hot Blogs
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: bodyMargin),
                child: Row(
                  children: [
                    const ImageIcon(
                      AssetImage("assets/icons/pen.png"),
                      color: SolidColors.titleColor,
                    ),
                    SizedBox(
                      width: size.width / 75,
                    ),
                    Text(
                      MyStrings.viewHotBlogs,
                      // ignore: deprecated_member_use
                      style: textTheme.headline3,
                    ),
                  ],
                ),
              ),
              // Blog List
              SizedBox(
                height: size.height / 3.2,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: blogList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // Blog Items
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index == 0 ? bodyMargin : size.width / 23,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              width: size.width / 2.3,
                              height: size.height / 5.3,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              blogList[index].imageUrl),
                                          fit: BoxFit.cover),
                                    ),
                                    foregroundDecoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      gradient: LinearGradient(
                                        colors: GradiantColors.blogPost,
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: size.height / 6.6,
                                    bottom: 0,
                                    right: 0,
                                    left: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          blogList[index].writer,
                                          // ignore: deprecated_member_use
                                          style: textTheme.subtitle1,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              getPersianNumbers(
                                                blogList[index].views,
                                              ),
                                              // ignore: deprecated_member_use
                                              style: textTheme.subtitle1,
                                            ),
                                            SizedBox(
                                              width: size.width / 180,
                                            ),
                                            const Icon(
                                              Icons.remove_red_eye_rounded,
                                              color: SolidColors.posterSubTitle,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width / 2.5,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                blogList[index].title,
                                // ignore: deprecated_member_use
                                style: textTheme.bodyText1,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: bodyMargin),
                child: Row(
                  children: [
                    const ImageIcon(
                      AssetImage(
                        "assets/icons/microphone.png",
                      ),
                      color: SolidColors.titleColor,
                    ),
                    SizedBox(
                      width: size.width / 75,
                    ),
                    Text(
                      MyStrings.viewHotPodcasts,
                      // ignore: deprecated_member_use
                      style: textTheme.headline3,
                    ),
                  ],
                ),
              ),
              // Podcast List
              SizedBox(
                height: size.height / 3.2,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: podcastList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // Podcast Items
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index == 0 ? bodyMargin : size.width / 23,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              width: size.width / 2.3,
                              height: size.height / 5.3,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              podcastList[index].imageUrl),
                                          fit: BoxFit.fill),
                                    ),
                                    foregroundDecoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      gradient: LinearGradient(
                                        colors: GradiantColors.blogPost,
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: size.height / 6.6,
                                    bottom: 0,
                                    right: 0,
                                    left: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              getPersianNumbers(
                                                podcastList[index].listens,
                                              ),
                                              // ignore: deprecated_member_use
                                              style: textTheme.subtitle1,
                                            ),
                                            SizedBox(
                                              width: size.width / 180,
                                            ),
                                            const Icon(
                                              Icons.earbuds_outlined,
                                              color: SolidColors.posterSubTitle,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width / 2.5,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                podcastList[index].title,
                                // ignore: deprecated_member_use
                                style: textTheme.bodyText1,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
