import 'package:divpay/Common/Util/app_color.dart';
import 'package:divpay/Common/Util/size.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.background,
              AppColor.secondaryBackground,
            ],
          ),
        ),
        child: NestedScrollView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                stretch: true,
                title: Row(
                  children: [
                    Image.asset(
                      'assets/icon/menu.png',
                      width: 32,
                      height: 32,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon/search.png',
                      width: 32,
                      height: 32,
                    ),
                    Space(width: 4),
                    Image.asset(
                      'assets/icon/file.png',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space(height: 54),
              Text(
                'Settlement',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: AppColor.content,
                ),
              ),
              Space(height: 26),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: AppColor.darkContent,
                  ),
                  child: ListView.builder(
                      controller: _scrollController,
                      itemCount: 2,
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 50,
                          child: Text('$index'),
                        );
                      })),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
