import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ishtariha/constants.dart';
import 'package:ishtariha/controllers/navbar_controller.dart';
import 'package:ishtariha/screens/ads/publish_ad_screen.dart';
import 'package:ishtariha/utils.dart';
import 'package:ishtariha/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
      builder: (context, navigationController, child) {
        return SafeArea(
          child: Scaffold(
            floatingActionButton: const PublishAdButton(),
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'اشترها',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: mainClr,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'فلترة',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * .8,
                        child: Input(
                          hintText: 'بحث',
                          textAlign: TextAlign.right,
                          decorations: InputDecoration(
                            prefixIcon: Container(
                              width: 35.0,
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                getIcon('search'),
                                height: 25.0,
                                width: 25.0,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            filled: true,
                            fillColor: whitish,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: mainClr,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            hintStyle: const TextStyle(
                              color: greyish,
                              fontSize: 15.0,
                              letterSpacing: 1,
                            ),
                            hintTextDirection: TextDirection.rtl,
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => const FilterBox());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(getIcon('settings')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'أحدث اﻹعلانات',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Expanded(
                    child: ListView(
                      children: const [
                        AdCard(),
                        AdCard(),
                        AdCard(),
                        AdCard(),
                        AdCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class PublishAdButton extends StatelessWidget {
  const PublishAdButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
        builder: (context, navigationController, child) {
      return FloatingActionButton(
        backgroundColor: grey,
        onPressed: () {
          navigationController.naviagte(const PublishAdScreen());
        },
        child: Container(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(getIcon('car'))),
      );
    });
  }
}

class AdCard extends StatelessWidget {
  const AdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.0,
      width: screenWidth,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(width: 1.5, color: greyish),
        color: white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'H6 I4 turbo charge',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            ' ريال ',
                            style: TextStyle(
                              color: mainClr,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '45000',
                            style: TextStyle(
                              color: mainClr,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        '2019',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'كم ',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        '12000',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.horizontal(right: Radius.circular(15)),
                  child: Image.asset(
                    getImage('2'),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 7.0,
                  right: 7.0,
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: mainClr.withOpacity(.45),
                      child: SvgPicture.asset(getIcon('home')),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterBox extends StatelessWidget {
  const FilterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 360,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 60,
                ),
                const Text('فلترة'),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.close),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 180.0,
                        child: IshSelector(
                            title: 'الماركة',
                            items: const ['', '', ''],
                            onSelect: () {}),
                      ),
                      const SizedBox(width: 20.0),
                      const Text('ماركة السيارة'),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 180.0,
                        child: IshSelector(
                            title: 'الموديل',
                            items: const ['', '', ''],
                            onSelect: () {}),
                      ),
                      const SizedBox(width: 20.0),
                      const Text('موديل السيارة'),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 180.0,
                        child: IshSelector(
                            title: '1998',
                            items: const ['', '', ''],
                            onSelect: () {}),
                      ),
                      const SizedBox(width: 20.0),
                      const Text('سنة الصنع'),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 180.0,
                        child: IshSelector(
                            title: 'الجزائر',
                            items: const ['', '', ''],
                            onSelect: () {}),
                      ),
                      const SizedBox(width: 20.0),
                      const Text('المدينة'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
