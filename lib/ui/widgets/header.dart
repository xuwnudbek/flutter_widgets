import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widgets/ui/providers/main_provider.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;
    final appBarTheme = themeData.appBarTheme;

    return Column(
      children: [
        if (2 > 3)
          GestureDetector(
            onTap: () {
              Uri uri = Uri.parse("https://medium.com/flutter/whats-new-in-flutter-3-29-f90c380c2317");

              canLaunchUrl(uri).then((canLaunch) {
                if (canLaunch) {
                  launchUrl(uri);
                }
              });
            },
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primary,
              ),
              child: Center(
                child: Text(
                  "Flutter 3.29 is here. Read the blog. 🚀",
                  style: textTheme.titleSmall,
                ),
              ),
            ),
          ),
        // Header Navigation
        Container(
          height: 86,
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: appBarTheme.backgroundColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.white.withValues(alpha: 0.1),
                blurRadius: 16,
                spreadRadius: 0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(
                child: SvgPicture.network(
                  "https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.svg",
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 8,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Blog",
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Community",
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Widgets",
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Docs",
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: themeData.textButtonTheme.style?.copyWith(
                        backgroundColor: WidgetStateProperty.all(themeData.brightness == Brightness.dark ? AppColors.primary : AppColors.white),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          "Login",
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: themeData.brightness == Brightness.dark ? AppColors.white : AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 24),
              IconButton(
                icon: Icon(
                  themeData.brightness == Brightness.dark ? Icons.light_mode : Icons.dark_mode,
                  color: AppColors.textDark,
                ),
                onPressed: () {
                  if (themeData.brightness == Brightness.dark) {
                    context.read<MainProvider>().themeMode = ThemeMode.light;
                  } else {
                    context.read<MainProvider>().themeMode = ThemeMode.dark;
                  }
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
