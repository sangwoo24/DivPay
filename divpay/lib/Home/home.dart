import 'package:divpay/Common/Util/app_color.dart';
import 'package:divpay/Common/Util/size.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: true,
                floating: true,
                elevation: 0,
                bottom: PreferredSize(
                  preferredSize: const Size(0, 0),
                  child: Container(),
                ),
                title: Row(
                  children: [
                    Image.asset(
                      'assets/icon/menu.png',
                      width: 32,
                      height: 32,
                    ),
                    const Spacer(),
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
              const Text(
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
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: AppColor.darkContent,
                  ),
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: ((context, index) {
                      return SizedBox(
                        height: 50,
                        child: Text('$index'),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
