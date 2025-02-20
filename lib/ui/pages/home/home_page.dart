import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widgets/ui/providers/home_provider.dart';
import 'package:flutter_widgets/ui/widgets/header.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(86),
            child: Header(),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Body
                    SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      child: Center(
                        child: Container(
                          width: constraints.maxWidth * 0.7,
                          height: constraints.maxHeight * 0.8,
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 24,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: "WIDGETS",
                                          style: textTheme.titleLarge?.copyWith(
                                            fontSize: 72,
                                            color: AppColors.primary,
                                            height: 1,
                                          ),
                                        ),
                                      ]),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      "Concise. Multiplatform. Fun.",
                                      style: textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 32),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: AppColors.primary,
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/widgets");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: Text(
                                          "Get Started",
                                          style: textTheme.bodyMedium?.copyWith(
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      spacing: 16,
                                      children: [
                                        Text(
                                          "Developed by",
                                          style: textTheme.titleSmall?.copyWith(
                                            color: AppColors.textDark,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 150,
                                          height: 40,
                                          child: SvgPicture.asset(
                                            "assets/images/jetbrains.svg",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Container(
                                    width: 400,
                                    height: 400,
                                    decoration: BoxDecoration(
                                      color: (themeData.brightness == Brightness.dark ? AppColors.white : AppColors.cardDark).withValues(alpha: 0.1),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: FlutterLogo(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
