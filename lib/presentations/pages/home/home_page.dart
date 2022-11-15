import 'package:flutter/material.dart';
import 'package:video_call_app/presentations/constants/app_color.dart';
import 'package:video_call_app/presentations/constants/app_strings.dart';
import 'package:video_call_app/presentations/widges/margin_widget.dart';
import 'package:video_call_app/presentations/widges/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List list = [];
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: homeDecuration(),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const TextWidget(
                weight: FontWeight.w600,
                size: 26.0,
                title: AppString.appName,
              ),
            ),
            SearchBackDrop(size: size),
            const MarginWidget(),
            Container(
              width: size.width,
              height: 150.0,
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(35.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MarginWidget(
                    height: 12.0,
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                    child: TextWidget(
                      title: 'FAVORITE',
                      color: AppColor.greyColor,
                      size: 20.0,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const MarginWidget(),
                  FavoriteUser(size: size),
                ],
              ),
            ),
            const MarginWidget(
              height: 8.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(35.0))),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.only(top: 10.0),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: const TextWidget(
                            title: 'Emily A Street',
                            weight: FontWeight.w500,
                            size: 20.0,
                            color: AppColor.blackColor,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TextWidget(
                                    title: 'john@gmail.com',
                                    size: 18.0,
                                    color: AppColor.blackColor,
                                  ),
                                  Row(
                                    children: const [
                                      CircaleButtonWidget(),
                                      MarginWidget(
                                        width: 6.0,
                                      ),
                                      CircaleButtonWidget()
                                    ],
                                  )
                                ],
                              ),
                              const MarginWidget(
                                height: 8.0,
                              ),
                              const Divider(
                                height: 1,
                              )
                            ],
                          ),
                          leading: const CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(AppString.networkImage),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration homeDecuration() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [
          0.0,
          1.0,
          1.0
        ],
            colors: [
          AppColor.lightBlueColor,
          AppColor.navBlueColor,
          AppColor.purpleColor
        ]));
  }
}

class CircaleButtonWidget extends StatelessWidget {
  const CircaleButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.greyColor.withOpacity(0.2)),
            shape: BoxShape.circle,
            color: AppColor.greyColor.withOpacity(0.04)),
        width: 40.0,
        alignment: Alignment.center,
        child: const Icon(
          Icons.videocam,
          color: AppColor.greenColor,
          size: 22.0,
        ),
      ),
    );
  }
}

class FavoriteUser extends StatelessWidget {
  const FavoriteUser({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              10,
              (index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(AppString.networkImage),
                    ),
                  )),
        ),
      ),
    );
  }
}

class SearchBackDrop extends StatelessWidget {
  const SearchBackDrop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
        width: size.width,
        height: 44.0,
        decoration: BoxDecoration(
            color: AppColor.whiteColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(14.0)),
        // ignore: prefer_const_constructors
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: AppColor.whiteColor,
                    size: 27.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: TextWidget(
                      title: 'Search',
                      size: 22.0,
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.mic,
                color: AppColor.whiteColor,
                size: 27.0,
              )
            ],
          ),
        ));
  }
}
