import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui/providers/home/home_provider.dart';
import 'package:flutter_widgets/ui/widgets/home/event_banner.dart';
import 'package:flutter_widgets/ui/widgets/home/navbar.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(),
      builder: (context, snapshot) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              if (2 > 3)
                SliverAppBar(
                  floating: false,
                  pinned: false,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: EventBanner(
                      title: "Flutter 3.29 is here. Read the blog. 🚀",
                      url: "https://medium.com/flutter/whats-new-in-flutter-3-29-f90c380c2317",
                    ),
                  ),
                ),
              SliverAppBar(
                floating: false,
                pinned: false,
                elevation: 0,
                toolbarHeight: 86,
                backgroundColor: AppColors.primary,
                surfaceTintColor: AppColors.transparent,
                shadowColor: AppColors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: Navbar(),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 1000,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
